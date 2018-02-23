--[[
	ESX_CRAFTING
]]--
--ESX as usual--------------------------------------------------------
ESX = nil
PlayerData = nil
---
Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)
---
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)
----------------------------------------------------------------------
---Debug
local trace = false
function dbg(msg)
	if trace then
		TriggerEvent('chatMessage', "", {255, 0, 0}, " ^1[ESX_CRAFING]: " .. tostring(msg))
	end
end

RegisterNetEvent('esx_crafting:craft')
AddEventHandler('esx_crafting:craft', function (craftableName)
	TaskStartScenarioInPlace(GetPlayerPed(-1), Config.Scenario, 0, true)
	ESX.ShowNotification('~g~Valmistetaan ~w~' .. craftableName)
end)

RegisterNetEvent('esx_crafting:stopCraft')
AddEventHandler('esx_crafting:stopCraft', function ()
	ClearPedTasks(GetPlayerPed(-1))
	ESX.ShowNotification('~g~Valmistus suoritettu..')
end)

function GetCraftables(inventory)
	dbg("GetCraftables() entry, inventory length: " .. #inventory)
	craftables = {}
	
	for i, j in pairs(Config.Craftables) do
		local matchCount = 0
		local matchRequired = #j.Require
		for x = 1, #j.Require, 1 do
			for y = 1, #inventory, 1 do
				if (inventory[y].name == j.Require[x].Name) and (inventory[y].count >= j.Require[x].Amount) then
					matchCount = matchCount + 1
				end
			end
		end
		if matchCount >= matchRequired then
			dbg("Found a match")
			table.insert(craftables,{label = j.Label, value = j})
		end
	end
	dbg("Returning")
	table.insert(craftables, {label = "Poistu", value = 'gtfo'})
	return craftables
end

function OpenCraftMenu()
	
	if IsPedInAnyVehicle(GetPlayerPed(-1),  false) then
		ESX.ShowNofication('~r~Ei tarpeeksi tilaa askartelulle.')
		return
	end
	
	dbg("opening menu")
	ESX.UI.Menu.CloseAll()
	ESX.TriggerServerCallback('esx_policejob:getPlayerInventory', function(inventory)
		
		local options = GetCraftables(inventory.items)

		ESX.UI.Menu.Open(
		  'default', GetCurrentResourceName(), 'craft_menu',
		  {
			title    = "Käsityövalikko",
			align    = "top-left",
			elements = options
		  },
		  function(data, menu)
			if data.current.value ~= 'gtfo' then
				TriggerServerEvent('esx_crafting:craftItem', data.current.value)
				dbg("Crafting.. " .. data.current.value.Label)
			end
			menu.close()
		  end,
		  function(data, menu)
			menu.close()
		  end
		)

	end)
end

Citizen.CreateThread(function ()
	dbg("Craftables control thread open")
	while true do
		Citizen.Wait(5)
		if IsControlPressed(0, 36) and IsControlPressed(0, 26) then -- CTRL + C
			OpenCraftMenu()
			Citizen.Wait(300)
		end
	end
end)





