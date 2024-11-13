local TREE = {}
TREE.Name = "Mouvements Souffle Flamme"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbrefl3.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 1
TREE.UserGroups = false
TREE.JobRestricted = { 
    "TEAM_MIZUNOTO_FLAMME" ,
    "TEAM_MIZUNOE_FLAMME" ,
    "TEAM_KANOTO_FLAMME" ,
    "TEAM_KANOE_FLAMME" ,
    "TEAM_TSUCHINOTO_FLAMME" ,
    "TEAM_TSUCHINOE_FLAMME" ,
    "TEAM_HINOTO_FLAMME" ,
    "TEAM_HINOE_FLAMME" ,
    "TEAM_KINOTO_FLAMME" ,
    "TEAM_KINOE_FLAMME" ,
    "TEAM_PILIER_FLAMME" ,
}
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Mouvement 1 - Souffle Flamme",
	Description = "Mouvement 1 de la Flamme",
	Icon = "materials/wos/skills/arbrefl3.png",
	PointsRequired = 5,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 1 - Flamme / Magma" ) end,
}

TREE.Tier[1][2] = {
	Name = "Mouvement 2 - Souffle Flamme",
	Description = "Mouvement 2 de la Flamme",
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
	Name = "Mouvement 3 - Souffle Flamme",
	Description = "Mouvement 3 de la Flamme",
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
	Name = "Mouvement 4 - Souffle Flamme",
	Description = "Mouvement 4 de la Flamme",
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