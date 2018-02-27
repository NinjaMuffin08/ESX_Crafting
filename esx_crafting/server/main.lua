--[[
	ESX_CRAFTING
	
	Crafting system for es_extended
]]--
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

--debug
trace = false
function dbg(msg)
	if trace then
		Citizen.Trace("[ESX_CRAFTING: " .. tostring(msg) .. " ]\n")
	end 
end
--global array
PlayersCrafting = {}
RegisterServerEvent('esx_crafting:craftItem')
AddEventHandler('esx_crafting:craftItem', function (CraftableTemp)
	dbg("craft requested")
	local Craftable = CraftableTemp
	local _source = source 
	if PlayersCrafting[_source] then
		TriggerClientEvent('esx:showNotification', _source, '~r~Sinulla on vain kaksi kättä')
	else
		PlayersCrafting[_source] = true
		TriggerClientEvent('esx_crafting:craft', _source, Craftable.Label)
		
		local xPlayer = ESX.GetPlayerFromId(_source)
		
		for i = 1, #Craftable.Require, 1 do
			xPlayer.removeInventoryItem(Craftable.Require[i].Name, Craftable.Require[i].Amount)
		end
		dbg("crafting item .." .. Craftable.Label)
		dbg("Craftable reward: " .. Craftable.Reward.Item .. " x"  .. Craftable.Reward.Count)
		ESX.SetTimeout(Craftable.Time, function()
			if Craftable.Reward.Type == 'item' then
				xPlayer.addInventoryItem(Craftable.Reward.Item, Craftable.Reward.Count)
				dbg("Rewarded with item " .. Craftable.Label)
			elseif Craftable.Reward.Type == 'weapon' then
				dbg("Rewarded with weapon " .. Craftable.Label)
				xPlayer.addWeapon(Craftable.Reward.Item, Craftable.Reward.Count)
			end
			PlayersCrafting[_source] = false
			TriggerClientEvent('esx_crafting:stopCraft', _source)
		end)
	end
end)


