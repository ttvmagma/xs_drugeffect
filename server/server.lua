ESX = exports["es_extended"]:getSharedObject()

---------------- DRUGS -------------------------

ESX.RegisterUsableItem('speed', function(source)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('speed', 1)
	TriggerClientEvent('magma-drugeffect:speed', _source)
end)

ESX.RegisterUsableItem('kokain', function(source)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('kokain', 1)
	TriggerClientEvent('magma-drugeffect:kokain', _source)
end)

ESX.RegisterUsableItem('joint', function(source)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('joint', 1)
    TriggerClientEvent('magma-drugeffect:joint', _source)
end)


-- ESX.RegisterUsableItem('item', function(source)
-- 	local _source = source
-- 	local xPlayer = ESX.GetPlayerFromId(_source)
-- 	xPlayer.removeInventoryItem('item', 1)
--     TriggerClientEvent('magma-drugeffect:item', _source)
-- end)

-- Tausche "item" durch dein item