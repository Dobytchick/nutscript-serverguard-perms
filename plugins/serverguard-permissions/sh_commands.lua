local PLUGIN = PLUGIN or {}

function PLUGIN:InitializedPlugins()
    for k, v in pairs(PLUGIN.PERMISSIONS) do
        local fetchCommand = nut.command.list[k:lower()]
        if not fetchCommand then continue end
        local oldAccessFunc = fetchCommand.onCheckAccess

        if oldAccessFunc then
            fetchCommand.onCheckAccess = function(ply)
                if not serverguard.player:HasPermission(ply, v) then return end
                oldAccessFunc(ply)
            end
        end

        nut.command.add(k:lower(), fetchCommand)
    end
end