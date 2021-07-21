Shared = {}

kickedNotify = true
bannedNotify = true
warnedNotify = true

-- Notifications

function SendRestartMessage(timeLeft)

    SetNotificationTextEntry('STRING')
    AddTextComponentString(timeLeft)
    DrawNotification(0,1)

    -- Notification I used
    --[[ exports['t-notify']:Custom({
        style = 'info',
        title = 'Information',
        message = 'The server will be restarted in ' .. timeLeft,
        duration = 10000,
        sound = true,
        position = 'top-center',
    }) ]]

end

function SendKickedMessage(msg)

    SetNotificationTextEntry('STRING')
    AddTextComponentString(msg)
    DrawNotification(0,1)

    -- Notification I used
    --[[ exports['t-notify']:Custom({
        style = 'info',
        title = 'Information',
        message = msg,
        duration = 10000,
        sound = true,
        position = 'top-center',
    }) ]]

end