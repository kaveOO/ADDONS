local TREE = {}
TREE.Name = "Mouvements Souffle Eau"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbrefl1.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 1
TREE.UserGroups = false
TREE.JobRestricted = { 
    "TEAM_MIZUNOTO_EAU" ,
    "TEAM_MIZUNOE_EAU" ,
    "TEAM_KANOTO_EAU" ,
    "TEAM_KANOE_EAU" ,
    "TEAM_TSUCHINOTO_EAU" ,
    "TEAM_TSUCHINOE_EAU" ,
    "TEAM_HINOTO_EAU" ,
    "TEAM_HINOE_EAU" ,
    "TEAM_KINOTO_EAU" ,
    "TEAM_KINOE_EAU" ,
    "TEAM_PILIER_EAU" ,
}
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Mouvement 1 - Souffle Eau",
	Description = "Mouvement 1 de la Eau",
	Icon = "materials/wos/skills/arbrefl1.png",
	PointsRequired = 5,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 1 - Eau / Acide" ) end,
}

TREE.Tier[1][2] = {
	Name = "Mouvement 2 - Souffle Eau",
	Description = "Mouvement 2 de la Eau",
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
	Name = "Mouvement 3 - Souffle Eau",
	Description = "Mouvement 3 de la Eau",
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
	Name = "Mouvement 4 - Souffle Eau",
	Description = "Mouvement 4 de la Eau",
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