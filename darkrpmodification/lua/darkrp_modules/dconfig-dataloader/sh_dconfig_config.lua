--#NoSimplerr#

local ply = FindMetaTable("Player")

local dconfigAccess = { --Insert user groups that you want to have !dconfig access
	"superadmin",
	"Fondateur",
	"owner",
}
function ply:CanDConfig()

	return table.HasValue(dconfigAccess, self:GetUserGroup())

end

function LoadDConfigDoorGroups()

	-- Example: AddDoorGroup("Cops and Mayor only", TEAM_CHIEF, TEAM_POLICE, TEAM_MAYOR)
	-- You can also create agendas here too

end

hook.Add("DConfigDataLoaded", "LoadDConfigDoorGroups", LoadDConfigDoorGroups)
LoadDConfigDoorGroups()
