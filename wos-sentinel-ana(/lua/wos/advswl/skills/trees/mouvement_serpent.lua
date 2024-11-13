local TREE = {}
TREE.Name = "Mouvements Souffle Serpent"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbrefl6.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 1
TREE.UserGroups = false
TREE.JobRestricted = { 
    "TEAM_MIZUNOTO_SERPENT" ,
    "TEAM_MIZUNOE_SERPENT" ,
    "TEAM_KANOTO_SERPENT" ,
    "TEAM_KANOE_SERPENT" ,
    "TEAM_TSUCHINOTO_SERPENT" ,
    "TEAM_TSUCHINOE_SERPENT" ,
    "TEAM_HINOTO_SERPENT" ,
    "TEAM_HINOE_SERPENT" ,
    "TEAM_KINOE_SERPENT" ,
    "TEAM_PILIER_SERPENT" ,
}
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Mouvement 1 - Souffle Serpent",
	Description = "Mouvement 1 de la Serpent",
	Icon = "materials/wos/skills/serpent1.png",
	PointsRequired = 5,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 1 - Serpent / Cobra" ) end,
}

TREE.Tier[1][2] = {
	Name = "Mouvement 2 - Souffle Serpent",
	Description = "Mouvement 2 de la Serpent",
	Icon = "materials/wos/skills/serpent2.png",
	PointsRequired = 10,
	Requirements = {
        [1] = { 1 },
    },
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 2 - Serpent / Cobra" ) end,
}

TREE.Tier[1][3] = {
	Name = "Mouvement 3 - Souffle Serpent",
	Description = "Mouvement 3 de la Serpent",
	Icon = "materials/wos/skills/serpent3.png",
	PointsRequired = 10,
	Requirements = {
        [1] = { 2 },
    },
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 3 - Serpent / Cobra" ) end,
}

TREE.Tier[1][4] = {
	Name = "Mouvement 4 - Souffle Serpent",
	Description = "Mouvement 4 de la Serpent",
	Icon = "materials/wos/skills/serpent4.png",
	PointsRequired = 10,
	Requirements = {
        [1] = { 3 },
    },
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 4 - Serpent / Cobra" ) end,
}

wOS:RegisterSkillTree( TREE )