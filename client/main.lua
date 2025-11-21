function RegisterApp()
    local returnData = Config.AppSettings
    local appId = returnData.id
    exports['kartik-laptop']:RegisterApp(appId, returnData)
end

AddEventHandler("onResourceStart", function(resource)
	if resource == "kartik-laptop" then
		RegisterApp()
	end
end)

CreateThread(function()
    Wait(2000)
    RegisterApp()
end)

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        exports['kartik-laptop']:UnregisterApp(Config.AppSettings.id)
    end
end)

RegisterNUICallback('GET_DEMO_VALUE', function(_, cb)
    local data = {
        some_index = 'Hello World!'
    }
    cb(data)
end)

RegisterNetEvent("custom-app:client:openApp",function ()
    exports['kartik-laptop']:sendReactMessage({
        action = "TOGGLE_APP",
        data= {
            ui = true
        },
        iframeId = Config.AppSettings.id 
    })
end)

RegisterNetEvent("custom-app:client:closeApp",function ()
    exports['kartik-laptop']:sendReactMessage({
        action = "TOGGLE_APP",
        data = {
           ui = false
        },
        iframeId = Config.AppSettings.id
    })
end)

RegisterCommand("setdata",function ()
    exports['kartik-laptop']:sendReactMessage({
        action = "SET_DATA",
        data= {
            some_index = 'Hello!'
        },
        iframeId = Config.AppSettings.id 
    })
end)

--- ADD YOUR CODE BELOW