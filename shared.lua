---@diagnostic disable: undefined-global

Shared = {}

Shared.kickedNotify     = true
Shared.bannedNotify     = true
Shared.warnedNotify     = true
Shared.announceNotify   = true

-- Notifications
function SendRestartMessage(translatedMessage)
    exports['Notifier']:ShowNotification('Serverweite Ankündigung', translatedMessage, 'warning', 15000)

    --[[
    SetNotificationTextEntry('STRING')
    AddTextComponentString(translatedMessage)
    DrawNotification(0,1)
    ]]
end

function SendKickedMessage(msg)
    exports['Notifier']:ShowNotification('Serverweite Ankündigung', msg, 'warning', 15000)

    --[[
    SetNotificationTextEntry('STRING')
    AddTextComponentString(msg)
    DrawNotification(0,1)
    ]]
end

function SendAnnounceMessage(msg, author)
    exports['Notifier']:ShowNotification('Serverweite Ankündigung von ' .. author, msg, 'warning', 15000)

    --[[
    SetNotificationTextEntry('STRING')
    AddTextComponentString('server-wide announcement from ' .. author, msg)
    DrawNotification(0,1)
    ]]
end


