local TREE = {}
TREE.Name = "Pouvoir Sanguinaire Larmes"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbrefl1.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 1
TREE.UserGroups = false
TREE.JobRestricted = { 
    "TEAM_DEMON_E_LARMES" ,
    "TEAM_DEMON_D_LARMES" ,
    "TEAM_DEMON_C_LARMES" ,
    "TEAM_DEMON_B_LARMES" ,
    "TEAM_DEMON_A_LARMES" ,
    "TEAM_DEMON_AA_LARMES" ,
    "TEAM_DEMON_S_LARMES" ,
    "TEAM_DEMON_SS_LARMES" ,
    "TEAM_DEMON_Z_LARMES" ,
    
}
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Premier - Pouvoir Acide",
	Description = "Pouvoir Acide 1",
	Icon = "materials/wos/skills/arbrefl1.png",
	PointsRequired = 5,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 1 - Eau / Acide" ) end,
}

TREE.Tier[1][2] = {
	Name = "Deuxieme - Pouvoir Acide",
	Description = "Pouvoir Acide 2",
	Icon = "materials/wos/skills/arbrefl1.png",
	PointsRequired = 10,
	Requirements = {
        [1] = { 1 },
    },
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 2 - Eau / Acide" ) end,
}

TREE.Tier[1][3] = {
	Name = "Troisieme - Pouvoir Acide",
	Description = "Pouvoir Acide 3",
	Icon = "materials/wos/skills/arbrefl1.png",
	PointsRequired = 10,
	Requirements = {
        [1] = { 2 },
    },
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 3 - Eau / Acide" ) end,
}

TREE.Tier[1][4] = {
	Name = "Quatrieme - Pouvoir Acide",
	Description = "Pouvoir Acide 4",
	Icon = "materials/wos/skills/arbrefl1.png",
	PointsRequired = 10,
	Requirements = {
        [1] = { 3 },
    },
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 4 - Eau / Acide" ) end,
}

wOS:RegisterSkillTree( TREE )