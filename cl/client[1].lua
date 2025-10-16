---@diagnostic disable: undefined-global

RegisterNetEvent("gh_txAnnouncer:SendRestartMessage", function(translatedMessage)
    SendRestartMessage(translatedMessage)
end)

RegisterNetEvent("gh_txAnnouncer:SendKickedMessage", function(msg)
    SendKickedMessage(msg)
end)

RegisterNetEvent("gh_txAnnouncer:SendAnnounceMessage", function(msg, author)
    SendAnnounceMessage(msg, author)
end)