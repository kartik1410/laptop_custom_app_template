Config = {}

Config.AppSettings = {
    id = "custom-app", -- change this according to app
    name = "Custom App",
    url= 'https://cfx-nui-' .. GetCurrentResourceName() .. '/web/index.html',
    color = "from-blue-500 to-indigo-600",
    icon = "Laptop",
    isVisible = function ()
        return true
    end,
    onAppOpen = function()
        -- on app open
    end,
    onAppClose = function()
        -- on app close
    end,
}
