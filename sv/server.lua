---@diagnostic disable: undefined-global

AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    if eventData.secondsRemaining == 3600 then
        TriggerClientEvent('gh_txAnnouncer:SendRestartMessage', -1, '60 Minutes')
    elseif eventData.secondsRemaining == 1800 then
        TriggerClientEvent('gh_txAnnouncer:SendRestartMessage', -1, '30 Minutes')
    elseif eventData.secondsRemaining == 900 then
        TriggerClientEvent('gh_txAnnouncer:SendRestartMessage', -1, '15 Minutes')
    elseif eventData.secondsRemaining == 600 then
        TriggerClientEvent('gh_txAnnouncer:SendRestartMessage', -1, '10 Minutes')
    elseif eventData.secondsRemaining == 300 then
        TriggerClientEvent('gh_txAnnouncer:SendRestartMessage', -1, '5 Minutes')
    elseif eventData.secondsRemaining == 240 then
        TriggerClientEvent('gh_txAnnouncer:SendRestartMessage', -1, '4 Minutes')
    elseif eventData.secondsRemaining == 180 then
        TriggerClientEvent('gh_txAnnouncer:SendRestartMessage', -1, '3 Minutes')
    elseif eventData.secondsRemaining == 120 then
        TriggerClientEvent('gh_txAnnouncer:SendRestartMessage', -1, '2 Minutes')
    elseif eventData.secondsRemaining == 60 then
        TriggerClientEvent('gh_txAnnouncer:SendRestartMessage', -1, '1 Minute')
    end
end)

AddEventHandler('txAdmin:events:playerKicked', function(eventData)
    if Shared.kickedNotify then
        TriggerClientEvent('gh_txAnnouncer:SendKickedMessage', -1, 'Player ID ' .. eventData.target .. ' got kicked from ' .. eventData.author .. '! Reason: ' .. eventData.reason)
    end
end)

AddEventHandler('txAdmin:events:playerBanned', function(eventData)
    if Shared.bannedNotify then
        TriggerClientEvent('gh_txAnnouncer:SendKickedMessage', -1, 'Player ID ' .. eventData.target .. ' got banned from ' .. eventData.author .. '! Reason: ' .. eventData.reason)
    end
end)

AddEventHandler('txAdmin:events:playerWarned', function(eventData)
    if Shared.warnedNotify then
        TriggerClientEvent('gh_txAnnouncer:SendKickedMessage', -1, 'The Player ' .. GetPlayerName(eventData.target) .. ' got warned from ' .. eventData.author .. '! Reason: ' .. eventData.reason)
    end
end)

AddEventHandler('txAdmin:events:announcement', function(eventData)
    if Shared.announceNotify then
        TriggerClientEvent('gh_txAnnouncer:SendAnnounceMessage', -1, eventData.message)
    end
end)