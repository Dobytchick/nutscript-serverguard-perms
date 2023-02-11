PLUGIN.name = 'Serverguard Permissions'
PLUGIN.author = 'Dobytchick'
PLUGIN.desc = 'Nutscript-permissions for serverguard'

PLUGIN.PERMISSIONS = {
    -- Perms for commands.
    CHARSETMONEY = 'Money giving',
    CHARGIVEITEM = 'Item giving',
    CHARBAN = 'Charban',
    -- Perms for hooks.
    SPAWNVEH = 'Vehicle spawn',
}

local FULL_ACCESS_RANK = 'founder'

for k, v in pairs(PLUGIN.PERMISSIONS) do
    serverguard.permission:Add(v)

    serverguard.ranks.stored[FULL_ACCESS_RANK].data.Permissions[v] = true
end

nut.util.include('sh_commands.lua')
nut.util.include('sv_perms.lua')
