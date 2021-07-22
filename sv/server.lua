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

AddEventHandler('txAdmin:events:playerKicked', function(target, author, reason)
    if Shared.kickedNotify then
        TriggerClientEvent('gh_txAnnouncer:SendKickedMessage', -1, 'The Player ' .. target .. ' got kicked from ' .. author .. '! Reason:' .. reason)
    end
end)

AddEventHandler('txAdmin:events:playerBanned', function(target, author, reason)
    if Shared.bannedNotify then
        TriggerClientEvent('gh_txAnnouncer:SendKickedMessage', -1, 'The Player ' .. target .. ' got banned from ' .. author .. '! Reason:' .. reason)
    end
end)

AddEventHandler('txAdmin:events:playerWarned', function(target, author, reason)
    if Shared.warnedNotify then
        riggerClientEvent('gh_txAnnouncer:SendKickedMessage', -1, 'The Player ' .. target .. ' got warned from ' .. author .. '! Reason:' .. reason)
    end
end)
