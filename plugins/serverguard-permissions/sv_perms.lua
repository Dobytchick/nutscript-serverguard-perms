function PLUGIN:PlayerSpawnVehicle(client, model, name, data)
    serverguard.player:HasPermission(client, PLUGIN.SPAWNVEH)
end