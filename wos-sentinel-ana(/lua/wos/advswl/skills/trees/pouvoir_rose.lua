local TREE = {}
TREE.Name = "Pouvoir Sanguinaire Rose"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbrefl5.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 1
TREE.UserGroups = false
TREE.JobRestricted = { 
    "TEAM_DEMON_E_ROSE" ,
    "TEAM_DEMON_D_ROSE" ,
    "TEAM_DEMON_C_ROSE" ,
    "TEAM_DEMON_B_ROSE" ,
    "TEAM_DEMON_A_ROSE" ,
    "TEAM_DEMON_AA_ROSE" ,
    "TEAM_DEMON_S_ROSE" ,
    "TEAM_DEMON_SS_ROSE" ,
    "TEAM_DEMON_Z_ROSE" ,
    
}
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Premier - Pouvoir Rose",
	Description = "Pouvoir Rose 1",
	Icon = "materials/wos/skills/arbrefl5.png",
	PointsRequired = 5,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 1 - Insecte / Rose" ) end,
}

TREE.Tier[1][2] = {
	Name = "Deuxieme - Pouvoir Rose",
	Description = "Pouvoir Rose 2",
	Icon = "materials/wos/skills/arbrefl5.png",
	PointsRequired = 10,
	Requirements = {
        [1] = { 1 },
    },
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 2 - Insecte / Rose" ) end,
}

TREE.Tier[1][3] = {
	Name = "Troisieme - Pouvoir Rose",
	Description = "Pouvoir Rose 3",
	Icon = "materials/wos/skills/arbrefl5.png",
	PointsRequired = 10,
	Requirements = {
        [1] = { 2 },
    },
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 3 - Insecte / Rose" ) end,
}

TREE.Tier[1][4] = {
	Name = "Quatrieme - Pouvoir Rose",
	Description = "Pouvoir Rose 4",
	Icon = "materials/wos/skills/arbrefl5.png",
	PointsRequired = 10,
	Requirements = {
        [1] = { 3 },
    },
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 4 - Insecte / Rose" ) end,
}

wOS:RegisterSkillTree( TREE )