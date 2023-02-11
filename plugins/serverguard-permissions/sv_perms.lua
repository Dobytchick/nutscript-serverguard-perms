function PLUGIN:PlayerSpawnVehicle(client, model, name, data)
    serverguard.player:HasPermission(client, self.PERMISSIONS.SPAWNVEH)
end
