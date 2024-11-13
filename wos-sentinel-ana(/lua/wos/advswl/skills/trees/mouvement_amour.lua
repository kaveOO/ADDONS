local TREE = {}
TREE.Name = "Mouvements Souffle Amour"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbrefl2.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 1
TREE.UserGroups = false
TREE.JobRestricted = { 
    "TEAM_MIZUNOTO_AMOUR" ,
    "TEAM_MIZUNOE_AMOUR" ,
    "TEAM_KANOTO_AMOUR" ,
    "TEAM_KANOE_AMOUR" ,
    "TEAM_TSUCHINOTO_AMOUR" ,
    "TEAM_TSUCHINOE_AMOUR" ,
    "TEAM_HINOTO_AMOUR" ,
    "TEAM_HINOE_AMOUR" ,
    "TEAM_KINOTO_AMOUR" ,
    "TEAM_KINOE_AMOUR" ,
    "TEAM_PILIER_AMOUR"
}
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Mouvement 1 - Souffle Amour",
	Description = "Mouvement 1 de l'Amour",
	Icon = "materials/wos/skills/amour1.png",
	PointsRequired = 5,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 1 - Amour / Haine" ) end,
}

TREE.Tier[1][2] = {
	Name = "Mouvement 2 - Souffle Amour",
	Description = "Mouvement 2 de l'Amour",
	Icon = "materials/wos/skills/amour2.png",
	PointsRequired = 10,
	Requirements = {
        [1] = { 1 },
    },
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 2 - Amour / Haine" ) end,
}

TREE.Tier[1][3] = {
	Name = "Mouvement 3 - Souffle Amour",
	Description = "Mouvement 3 de l'Amour",
	Icon = "materials/wos/skills/amour3.png",
	PointsRequired = 10,
	Requirements = {
        [1] = { 2 },
    },
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 3 - Amour / Haine" ) end,
}

TREE.Tier[1][4] = {
	Name = "Mouvement 4 - Souffle Amour",
	Description = "Mouvement 4 de l'Amour",
	Icon = "materials/wos/skills/amour4.png",
	PointsRequired = 10,
	Requirements = {
        [1] = { 3 },
    },
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 4 - Amour / Haine" ) end,
}

wOS:RegisterSkillTree( TREE )