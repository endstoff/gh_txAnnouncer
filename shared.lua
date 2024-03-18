---@diagnostic disable: undefined-global

Shared = {}

Shared.kickedNotify     = true
Shared.bannedNotify     = true
Shared.warnedNotify     = true
Shared.announceNotify   = true

-- Notifications
function SendRestartMessage(timeLeft)

    -- You can comment this out. only for testing purpose
    SetNotificationTextEntry('STRING')
    AddTextComponentString('The server will be restarted in ' .. timeLeft)
    DrawNotification(0,1)
    --

    --[[     Example Notification
    exports['t-notify']:Custom({
        style = 'info',
        title = 'Information',
        message = 'The server will be restarted in ' .. timeLeft,
        duration = 10000,
        sound = true,
        position = 'top-center',
    }) 
    
    You can also use TriggerEvent() ]]  
end

function SendKickedMessage(msg)

    -- You can comment this out. only for testing purpose
    SetNotificationTextEntry('STRING')
    AddTextComponentString(msg)
    DrawNotification(0,1)
    --

    --[[    Example Notification
    exports['t-notify']:Custom({
        style = 'info',
        title = 'Information',
        message = msg,
        duration = 30000,
        sound = true,
        position = 'top-center',
    }) 
    
    You can also use TriggerEvent() ]]  
end

function SendAnnounceMessage(msg)
        -- You can comment this out. only for testing purpose
        SetNotificationTextEntry('STRING')
        AddTextComponentString(msg)
        DrawNotification(0,1)
        --
    
        --[[    Example Notification
        exports['t-notify']:Custom({
            style = 'info',
            title = 'Information',
            message = msg,
            duration = 30000,
            sound = true,
            position = 'top-center',
        }) 
        
        You can also use TriggerEvent() ]]  
end