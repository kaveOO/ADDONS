local TREE = {}
TREE.Name = "Pouvoir Sanguinaire Tonnerre"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbrefl4.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 1
TREE.UserGroups = false
TREE.JobRestricted = { 
    "TEAM_DEMON_E_TONNERRE" ,
    "TEAM_DEMON_D_TONNERRE" ,
    "TEAM_DEMON_C_TONNERRE" ,
    "TEAM_DEMON_B_TONNERRE" ,
    "TEAM_DEMON_A_TONNERRE" ,
    "TEAM_DEMON_AA_TONNERRE" ,
    "TEAM_DEMON_S_TONNERRE" ,
    "TEAM_DEMON_SS_TONNERRE" ,
    "TEAM_DEMON_Z_TONNERRE" ,
    
}
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Premier - Pouvoir Tonnerre",
	Description = "Pouvoir Tonnerre 1",
	Icon = "materials/wos/skills/arbrefl4.png",
	PointsRequired = 5,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 1 - Foudre / Tonnerre" ) end,
}

TREE.Tier[1][2] = {
	Name = "Deuxieme - Pouvoir Tonnerre",
	Description = "Pouvoir Tonnerre 2",
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
	Name = "Troisieme - Pouvoir Tonnerre",
	Description = "Pouvoir Tonnerre 3",
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
	Name = "Quatrieme - Pouvoir Tonnerre",
	Description = "Pouvoir Tonnerre 4",
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