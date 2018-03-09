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
		Citizen.Wait(1)
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
		TriggerEvent('chatMessage', "", {255, 0, 0}, " ^1[ESX_CRAFTING]: " .. tostring(msg))
	end
end

RegisterNetEvent('esx_crafting:craft')
AddEventHandler('esx_crafting:craft', function (craftableName, craftableScenario)
	TaskStartScenarioInPlace(GetPlayerPed(-1), craftableScenario, 0, true)
	ESX.ShowNotification('~g~Valmistetaan ~w~' .. craftableName)
end)

RegisterNetEvent('esx_crafting:stopCraft')
AddEventHandler('esx_crafting:stopCraft', function ()
	ClearPedTasks(GetPlayerPed(-1))
	ESX.ShowNotification('~g~Valmistus suoritettu..')
end)

function Discover(inventory)
	craftables = {}
	
	for i, j in pairs(Config.Craftables) do
		local matchCount = 0
		local canCraft = true
		local matchRequired = #j.Require
		for x = 1, #j.Require, 1 do
			for y = 1, #inventory, 1 do
				if (inventory[y].name == j.Require[x].Name) and (inventory[y].count >= j.Require[x].Amount) then
					matchCount = matchCount + 1
				elseif (inventory[y].name == j.Require[x].Name) and (inventory[y].count >= 1) then
					matchCount = matchCount + 1
					canCraft = false
				end
			end
		end
		if matchCount >= matchRequired then
			table.insert(craftables,{label = j.Label, value = j, flag = canCraft})
		end
	end
	table.insert(craftables, {label = "Poistu", value = 'gtfo'})
	return craftables
end

function OpenCraftMenu()
	
	local ped = GetPlayerPed(-1)
	
	if IsPedInAnyVehicle(ped, false) then
		ESX.ShowNofication('~r~Ei tarpeeksi tilaa askartelulle.')
		return
	elseif IsEntityDead(ped) then
		ESX.ShowNofication('~r~Kuolleena on vaikea askarrella.')
		return
	end
	
	dbg("opening menu")
	ESX.UI.Menu.CloseAll()
	ESX.TriggerServerCallback('esx_policejob:getPlayerInventory', function(inventory)
		
		local options = Discover(inventory.items)

		ESX.UI.Menu.Open(
		  'default', GetCurrentResourceName(), 'craft_menu',
		  {
			title    = "Käsityövalikko",
			align    = "top-right",
			elements = options
		  },
		  function(data, menu)
			if data.current.value ~= 'gtfo' and data.current.flag then
				TriggerServerEvent('esx_crafting:craftItem', data.current.value)
			elseif data.current.value ~= 'gtfo' and not data.current.flag then
				ESX.ShowNotification('~r~Sinulla ei ole riittävästi jotain ainesosaa.')
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
	if Config.EnableHotkey then
		while true do
			Citizen.Wait(5)
			if IsControlPressed(0, 36) and IsControlPressed(0, 26) then -- CTRL + C
				OpenCraftMenu()
				Citizen.Wait(300)
			end
		end
	end
end)

function openCraftMenu()
	OpenCraftMenu()
end





