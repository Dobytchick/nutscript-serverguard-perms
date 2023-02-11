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

for k, v in pairs(PLUGIN.PERMISSIONS) do
    serverguard.permission:Add(v)
end

nut.util.include('sh_commands.lua')
nut.util.include('sv_perms.lua')
