local TREE = {}
TREE.Name = "Pouvoir Sanguinaire Magma"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbrefl3.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 1
TREE.UserGroups = false
TREE.JobRestricted = { 
    "TEAM_DEMON_E_MAGMA" ,
    "TEAM_DEMON_D_MAGMA" ,
    "TEAM_DEMON_C_MAGMA" ,
    "TEAM_DEMON_B_MAGMA" ,
    "TEAM_DEMON_A_MAGMA" ,
    "TEAM_DEMON_AA_MAGMA" ,
    "TEAM_DEMON_S_MAGMA" ,
    "TEAM_DEMON_SS_MAGMA" ,
    "TEAM_DEMON_Z_MAGMA" ,
    
}
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Premier - Pouvoir Magma",
	Description = "Pouvoir Magma 1",
	Icon = "materials/wos/skills/arbrefl3.png",
	PointsRequired = 5,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 1 - Flamme / Magma" ) end,
}

TREE.Tier[1][2] = {
	Name = "Deuxieme - Pouvoir Magma",
	Description = "Pouvoir Magma 2",
	Icon = "materials/wos/skills/arbrefl3.png",
	PointsRequired = 10,
	Requirements = {
        [1] = { 1 },
    },
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 2 - Flamme / Magma" ) end,
}

TREE.Tier[1][3] = {
	Name = "Troisieme - Pouvoir Magma",
	Description = "Pouvoir Magma 3",
	Icon = "materials/wos/skills/arbrefl3.png",
	PointsRequired = 10,
	Requirements = {
        [1] = { 2 },
    },
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 3 - Flamme / Magma" ) end,
}

TREE.Tier[1][4] = {
	Name = "Quatrieme - Pouvoir Magma",
	Description = "Pouvoir Magma 4",
	Icon = "materials/wos/skills/arbrefl3.png",
	PointsRequired = 10,
	Requirements = {
        [1] = { 3 },
    },
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 4 - Flamme / Magma" ) end,
}

wOS:RegisterSkillTree( TREE )