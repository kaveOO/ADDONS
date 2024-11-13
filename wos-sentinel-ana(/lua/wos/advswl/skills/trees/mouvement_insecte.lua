local TREE = {}
TREE.Name = "Mouvements Souffle Insecte"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbrefl5.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 1
TREE.UserGroups = false
TREE.JobRestricted = { 
    "TEAM_MIZUNOTO_INSECTE" ,
    "TEAM_MIZUNOE_INSECTE" ,
    "TEAM_KANOTO_INSECTE" ,
    "TEAM_KANOE_INSECTE" ,
    "TEAM_TSUCHINOTO_INSECTE" ,
    "TEAM_TSUCHINOE_INSECTE" ,
    "TEAM_HINOTO_INSECTE" ,
    "TEAM_HINOE_INSECTE" ,
    "TEAM_KINOTO_INSECTE" ,
    "TEAM_KINOE_INSECTE" ,
    
    "TEAM_PILIER_INSECTE"
}
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Mouvement 1 - Souffle Insecte",
	Description = "Mouvement 1 de la Insecte",
	Icon = "materials/wos/skills/arbrefl5.png",
	PointsRequired = 5,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 1 - Insecte / Rose" ) end,
}

TREE.Tier[1][2] = {
	Name = "Mouvement 2 - Souffle Insecte",
	Description = "Mouvement 2 de la Insecte",
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
	Name = "Mouvement 3 - Souffle Insecte",
	Description = "Mouvement 3 de la Insecte",
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
	Name = "Mouvement 4 - Souffle Insecte",
	Description = "Mouvement 4 de la Insecte",
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