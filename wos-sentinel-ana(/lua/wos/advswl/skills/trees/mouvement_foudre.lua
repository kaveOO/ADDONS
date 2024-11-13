local TREE = {}
TREE.Name = "Mouvements Souffle Foudre"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbrefl4.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 1
TREE.UserGroups = false
TREE.JobRestricted = { 
    "TEAM_MIZUNOTO_FOUDRE" ,
    "TEAM_MIZUNOE_FOUDRE" ,
    "TEAM_KANOTO_FOUDRE" ,
    "TEAM_KANOE_FOUDRE" ,
    "TEAM_TSUCHINOTO_FOUDRE" ,
    "TEAM_TSUCHINOE_FOUDRE" ,
    "TEAM_HINOTO_FOUDRE" ,
    "TEAM_HINOE_FOUDRE" ,
    "TEAM_KINOTO_FOUDRE" ,
    "TEAM_KINOE_FOUDRE" ,
    
    "TEAM_PILIER_FOUDRE"
}
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Mouvement 1 - Souffle Foudre",
	Description = "Mouvement 1 de la Foudre",
	Icon = "materials/wos/skills/arbrefl4.png",
	PointsRequired = 5,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 1 - Foudre / Tonnerre" ) end,
}

TREE.Tier[1][2] = {
	Name = "Mouvement 2 - Souffle Foudre",
	Description = "Mouvement 2 de la Foudre",
	Icon = "materials/wos/skills/arbrefl4.png",
	PointsRequired = 10,
	Requirements = {
        [1] = { 1 },
    },
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 2 - Foudre / Tonnerre" ) end,
}

TREE.Tier[1][3] = {
	Name = "Mouvement 3 - Souffle Foudre",
	Description = "Mouvement 3 de la Foudre",
	Icon = "materials/wos/skills/arbrefl4.png",
	PointsRequired = 10,
	Requirements = {
        [1] = { 2 },
    },
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 3 - Foudre / Tonnerre" ) end,
}

TREE.Tier[1][4] = {
	Name = "Mouvement 4 - Souffle Foudre",
	Description = "Mouvement 4 de la Foudre",
	Icon = "materials/wos/skills/arbrefl4.png",
	PointsRequired = 10,
	Requirements = {
        [1] = { 3 },
    },
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 4 - Foudre / Tonnerre" ) end,
}

wOS:RegisterSkillTree( TREE )