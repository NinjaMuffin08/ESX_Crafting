--[[
	ESX_CRAFTING
	
	Crafting system for es_extended
]]--
--ESX as usual
ESX = nil
while ESX == nil do
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	--Citizen.Trace("Requested esx")
end

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
			dbg("crafting item .." .. Craftable.Label)
			xPlayer.addInventoryItem(Craftable.Reward.Item, Craftable.Reward.Count)
			PlayersCrafting[_source] = false
			TriggerClientEvent('esx_crafting:stopCraft', _source)
		end)
	end
end)


