# nutscript-serverguard-perms

### Permission plugin for nutscript 1.2

This plugin allows you to add serverguard permissions that can be customized for each administration category. Embedding in framework commands is supported<br><br>

![Example prview](https://raw.githubusercontent.com/Dobytchick/nutscript-serverguard-perms/main/perms.png)

## How it works?

```lua
PLUGIN.PERMISSIONS = {
    -- Perms for commands.
    CHARSETMONEY = 'Giving money',
    CHARGIVEITEM = 'Giving item',
    CHARBAN = 'Charban',
    -- Perms for hooks.
    SPAWNVEH = 'Vehicles spawn',
}
```

This fragment allows you to create permissions for commands. The commands themselves will be overwritten and require permission.

The very last line just exists, but it can be embedded in the event.

#### sv_perms.lua
```lua
function PLUGIN:PlayerSpawnVehicle(client, model, name, data)
    serverguard.player:HasPermission(client, self.PERMISSIONS.SPAWNVEH)
end
```
