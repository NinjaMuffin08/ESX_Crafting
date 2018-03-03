--ESX as usual
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-------------------REGISTER USABLES IN CASE YOU HAVE NEW ONES-------------------
ESX.RegisterUsableItem('juicedrink', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('juicedrink', 1)
	xPlayer.addInventoryItem('emptybottle', 1)
	
	TriggerClientEvent('esx_status:add', source, 'thirst', 320000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, "Joit mehua")

end)
--
ESX.RegisterUsableItem('dough', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('dought', 1)
	
	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, "Söit taikinaa")

end)
--
ESX.RegisterUsableItem('hm_pizza', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('hm_pizza', 1)
	
	TriggerClientEvent('esx_status:add', source, 'hunger', 600000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, "Söit pizzan")

end)
--
ESX.RegisterUsableItem('strongbrew', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('strongbrew', 1)
	xPlayer.addInventoryItem('emptybottleglass', 1)
	
	TriggerClientEvent('esx_status:add', source, 'hunger', 600000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, "Joit kiljua")

end)
--
ESX.RegisterUsableItem('hm_medikit', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('hm_medikit', 1)
	
	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 100000)
	TriggerClientEvent('esx_ambulancejob:heal', source, 'big')
	
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, "Käytit ensiapupakkauksen itseesi")

end)
--
ESX.RegisterUsableItem('cheese', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('cheese', 1)
	
	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, "Söit juustoa")

end)
--
ESX.RegisterUsableItem('hm_food1', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('hm_food1', 1)
	
	TriggerClientEvent('esx_status:add', source, 'hunger', 900000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, "Söit nakkikeittoa")

end)
--
ESX.RegisterUsableItem('painkiller', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('painkiller', 1)
	
	TriggerClientEvent('esx_ambulancejob:heal', source, 'small')
	TriggerClientEvent('esx:showNotification', source, "Söit kipulääkkeen")

end)
--
ESX.RegisterUsableItem('painkiller2', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('painkiller2', 1)
	
	TriggerClientEvent('esx_ambulancejob:heal', source, 'small')
	TriggerClientEvent('esx:showNotification', source, "Söit kipulääkkeen")

end)
--
ESX.RegisterUsableItem('strongbrew', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('strongbrew', 1)
	xPlayer.addInventoryItem('emptybottleglass', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 350000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, "Joit kiljua..")

end)
--------------------------------------------------------------------------------
