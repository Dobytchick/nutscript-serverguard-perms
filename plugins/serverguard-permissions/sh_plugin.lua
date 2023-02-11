PLUGIN.name = 'Serverguard Permissions'
PLUGIN.author = 'Dobytchick'
PLUGIN.desc = 'Новые права для админ-системы. (спавн вендоров и др). Закрепляется за рангом игрока'

PLUGIN.PERMISSIONS = {
    -- Perms for commands.
    CHARSETMONEY = 'Выдача денег',
    CHARGIVEITEM = 'Выдача предметов',
    CHARBAN = 'Чарбан',
    -- Perms for hooks.
    SPAWNVEH = 'Спавн транспорта',
}

local FULL_ACCESS_RANK = 'founder'

for k, v in pairs(PLUGIN.PERMISSIONS) do
    serverguard.permission:Add(v)

    serverguard.ranks.stored[FULL_ACCESS_RANK].data.Permissions[v] = true
end

nut.util.include('sh_commands.lua')
nut.util.include('sv_perms.lua')