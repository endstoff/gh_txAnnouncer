RegisterNetEvent("gh_txAnnouncer:SendRestartMessage")
AddEventHandler("gh_txAnnouncer:SendRestartMessage", function(timeLeft)
    SendRestartMessage(timeLeft)
end)

RegisterNetEvent("gh_txAnnouncer:SendKickedMessage")
AddEventHandler("gh_txAnnouncer:SendKickedMessage", function(msg)
    SendKickedMessage(msg)
end)