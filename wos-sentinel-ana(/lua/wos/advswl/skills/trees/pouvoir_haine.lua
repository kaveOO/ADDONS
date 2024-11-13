local TREE = {}
TREE.Name = "Pouvoir Sanguinaire Haine"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbrefl2.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 1
TREE.UserGroups = false
TREE.JobRestricted = {
    "TEAM_DEMON_E_HAINE" ,
    "TEAM_DEMON_D_HAINE" ,
    "TEAM_DEMON_C_HAINE" ,
	"TEAM_DEMON_B_HAINE" ,
    "TEAM_DEMON_A_HAINE" ,
    "TEAM_DEMON_AA_HAINE" ,
    "TEAM_DEMON_S_HAINE" ,
    "TEAM_DEMON_SS_HAINE" ,
    "TEAM_DEMON_Z_HAINE" ,
}
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Premier - Pouvoir Haine",
	Description = "Pouvoir Haine 1",
	Icon = "materials/wos/skills/arbrefl2.png",
	PointsRequired = 5,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 1 - Amour / Haine" ) end,
}

TREE.Tier[1][2] = {
	Name = "Deuxieme - Pouvoir Haine",
	Description = "Pouvoir Haine 2",
	Icon = "materials/wos/skills/arbrefl2.png",
	PointsRequired = 10,
	Requirements = {
        [1] = { 1 },
    },
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 2 - Amour / Haine" ) end,
}

TREE.Tier[1][3] = {
	Name = "Troisieme - Pouvoir Haine",
	Description = "Pouvoir Haine 3",
	Icon = "materials/wos/skills/arbrefl2.png",
	PointsRequired = 10,
	Requirements = {
        [1] = { 2 },
    },
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 3 - Amour / Haine" ) end,
}

TREE.Tier[1][4] = {
	Name = "Quatrieme - Pouvoir Haine",
	Description = "Pouvoir Haine 4",
	Icon = "materials/wos/skills/arbrefl2.png",
	PointsRequired = 10,
	Requirements = {
        [1] = { 3 },
    },
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 4 - Amour / Haine" ) end,
}

wOS:RegisterSkillTree( TREE )