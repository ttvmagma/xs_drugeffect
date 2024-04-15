ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('magma-drugeffect:speed')
AddEventHandler('magma-drugeffect:speed', function()
    local playerPed = GetPlayerPed(-1)
    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)  -- Animation
    Wait(1000) -- Wann der Effekt anfängt
    -- Notify
    TriggerEvent("hex_2_hud:notify", "Inventar", "Dein Effekt hat eingesetzt! Du läufst nun schneller!", "info", 5000)
    -- Notify
    ClearPedTasksImmediately(playerPed)
    SetPedMovementClipset(playerPed, "move_m@hipster@a", true)
    -- Effect
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.49) -- Effekt 
    SetPedArmour(playerPed, 100)	
    -- Effect
    Wait(1000) -- Ablaufzeit vom Effekt
    TriggerEvent("hex_2_hud:notify", "Inventar", "Dein Effekt ist abgelaufen!", "info", 5000)
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)		
end)

RegisterNetEvent('magma-drugeffect:kokain')
AddEventHandler('magma-drugeffect:kokain', function()
    local playerPed = GetPlayerPed(-1)
    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    Wait(1000)
    -- Notify
    TriggerEvent("hex_2_hud:notify", "Inventar", "Dein Effekt hat eingesetzt! Du hast jetzt eine Weste!", "info", 5000)
    -- Notify
    ClearPedTasksImmediately(playerPed)
    SetPedMovementClipset(playerPed, "move_m@hipster@a", true)
    -- Effect
    SetPedArmour(playerPed, 25)	
    -- Effect
end)

RegisterNetEvent('magma-drugeffect:joint')
AddEventHandler('magma-drugeffect:joint', function()
    local playerPed = GetPlayerPed(-1)
    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    Wait(1000)
    -- Notify
    TriggerEvent("hex_2_hud:notify", "Inventar", "Dein Effekt hat eingesetzt! Du bist geheilt!", "info", 5000)
    -- Notify
    ClearPedTasksImmediately(playerPed)
    SetPedMovementClipset(playerPed, "move_m@hipster@a", true)
    -- Effect
    SetEntityHealth(playerPed, 199)	
    -- Effect
end)

-- RegisterNetEvent('magma-drugeffect:item')
-- AddEventHandler('magma-drugeffect:item', function()
--     local playerPed = GetPlayerPed(-1)
--     TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
--     Wait(1000)
--     -- Notify
--     TriggerEvent("hex_2_hud:notify", "Inventar", "Dein Effekt hat eingesetzt! Du bist geheilt!", "info", 5000)
--     -- Notify
--     ClearPedTasksImmediately(playerPed)
--     SetPedMovementClipset(playerPed, "move_m@hipster@a", true)
--     -- Effect
--     SetEntityHealth(playerPed, 199)	
--     -- Effect
-- end)

-- Tausche "item" durch dein item