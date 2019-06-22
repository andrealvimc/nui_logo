-- Feito por Alvim
local display = false

RegisterCommand("logoon", function()
    Citizen.CreateThread(function()
      TriggerEvent('nui:on', true)
    end)
end)
  

RegisterCommand("logooff", function()
    Citizen.CreateThread(function()
        TriggerEvent("nui:off", true)
    end)
end)



RegisterNetEvent('nui:on')
AddEventHandler('nui:on', function()
    SendNUIMessage({
    type = "ui",
    display = true
    })
end)

RegisterNetEvent('nui:off')
AddEventHandler('nui:off', function()
    SendNUIMessage({
        type = "ui",
        display = false
    })
end)