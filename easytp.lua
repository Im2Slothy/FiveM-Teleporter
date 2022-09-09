RegisterCommand('tp', function(source, args, raw)
    local playerPed = PlayerPedId()
    local waypoint = GetFirstBlipInfoId(8)
    local waypointCoords = GetBlipInfoIdCoord(waypoint)
    -- print(GetFirstBlipInfoId(8))
        if waypoint == 0 then
            ShowNotification('You did not set a waypoint.')
            return
        else
            SetEntityCoords(playerPed, waypointCoords.x, waypointCoords.y, waypointCoords.z+35)
        end
    -- SetEntityCoords(playerPed, waypointCoords.x, waypointCoords.y, waypointCoords.z+35)
end)

function ShowNotification(text)
	SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
	DrawNotification(false, true)
end
