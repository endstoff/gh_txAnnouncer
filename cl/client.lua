---@diagnostic disable: undefined-global

RegisterNetEvent("gh_txAnnouncer:SendRestartMessage", function(timeLeft)
    SendRestartMessage(timeLeft)
end)

RegisterNetEvent("gh_txAnnouncer:SendKickedMessage", function(msg)
    SendKickedMessage(msg)
end)

RegisterNetEvent("gh_txAnnouncer:SendAnnounceMessage", function(msg)
    SendAnnounceMessage(message)
end)