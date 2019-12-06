-- Feito por Alvim
-- Otimizado por MarmotaGit
local display = true

RegisterCommand("logo", function()
    display = not display
    SendNUIMessage({
        type = "ui",
        display = display
    })
end)
