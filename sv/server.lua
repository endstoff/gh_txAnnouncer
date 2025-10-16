---@diagnostic disable: undefined-global

AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    if eventData.secondsRemaining == 3600 then
        TriggerClientEvent('gh_txAnnouncer:SendRestartMessage', -1, eventData.translatedMessage)
    elseif eventData.secondsRemaining == 1800 then
        TriggerClientEvent('gh_txAnnouncer:SendRestartMessage', -1, eventData.translatedMessage)
    elseif eventData.secondsRemaining == 900 then
        TriggerClientEvent('gh_txAnnouncer:SendRestartMessage', -1, eventData.translatedMessage)
    elseif eventData.secondsRemaining == 600 then
        TriggerClientEvent('gh_txAnnouncer:SendRestartMessage', -1, eventData.translatedMessage)
    elseif eventData.secondsRemaining == 300 then
        TriggerClientEvent('gh_txAnnouncer:SendRestartMessage', -1, eventData.translatedMessage)
    elseif eventData.secondsRemaining == 240 then
        TriggerClientEvent('gh_txAnnouncer:SendRestartMessage', -1, eventData.translatedMessage)
    elseif eventData.secondsRemaining == 180 then
        TriggerClientEvent('gh_txAnnouncer:SendRestartMessage', -1, eventData.translatedMessage)
    elseif eventData.secondsRemaining == 120 then
        TriggerClientEvent('gh_txAnnouncer:SendRestartMessage', -1, eventData.translatedMessage)
    elseif eventData.secondsRemaining == 60 then
        TriggerClientEvent('gh_txAnnouncer:SendRestartMessage', -1, eventData.translatedMessage)
    end
end)

AddEventHandler('txAdmin:events:playerKicked', function(eventData)
    if Shared.kickedNotify then
        TriggerClientEvent('gh_txAnnouncer:SendKickedMessage', -1, 'Spieler ID ' .. eventData.target .. ' wurde von ' .. eventData.author .. ' gekickt! Grund: ' .. eventData.reason)
    end
end)

AddEventHandler('txAdmin:events:playerBanned', function(eventData)
    if Shared.bannedNotify then
        TriggerClientEvent('gh_txAnnouncer:SendKickedMessage', -1, 'Spieler ID ' .. eventData.target .. ' wurde von ' .. eventData.author .. ' gebannt! Grund: ' .. eventData.reason)
    end
end)

AddEventHandler('txAdmin:events:playerWarned', function(eventData)
    if Shared.warnedNotify then
        TriggerClientEvent('gh_txAnnouncer:SendKickedMessage', -1, 'Der Spieler ' .. eventData.targetName .. ' wurde von ' .. eventData.author .. ' verwarnt! Grund: ' .. eventData.reason)
    end
end)

AddEventHandler('txAdmin:events:announcement', function(eventData)
    if Shared.announceNotify then
        TriggerClientEvent('gh_txAnnouncer:SendAnnounceMessage', -1, eventData.message, eventData.author)
    end
end)