local TREE = {}
TREE.Name = "Pouvoir Sanguinaire Cobra"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbrefl6.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 1
TREE.UserGroups = false
TREE.JobRestricted = { 
    "TEAM_DEMON_E_COBRA" ,
    "TEAM_DEMON_D_COBRA" ,
    "TEAM_DEMON_C_COBRA" ,
    "TEAM_DEMON_B_COBRA" ,
    "TEAM_DEMON_A_COBRA" ,
    "TEAM_DEMON_AA_COBRA" ,
    "TEAM_DEMON_S_COBRA" ,
    "TEAM_DEMON_SS_COBRA" ,
    "TEAM_DEMON_Z_COBRA" ,
}
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Premier - Pouvoir Cobra",
	Description = "Pouvoir Cobra 1",
	Icon = "materials/wos/skills/arbrefl6.png",
	PointsRequired = 5,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 1 - Serpent / Cobra" ) end,
}

TREE.Tier[1][2] = {
	Name = "Deuxieme - Pouvoir Cobra",
	Description = "Pouvoir Cobra 2",
	Icon = "materials/wos/skills/arbrefl6.png",
	PointsRequired = 10,
	Requirements = {
        [1] = { 1 },
    },
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 2 - Serpent / Cobra" ) end,
}

TREE.Tier[1][3] = {
	Name = "Troisieme - Pouvoir Cobra",
	Description = "Pouvoir Cobra 3",
	Icon = "materials/wos/skills/arbrefl6.png",
	PointsRequired = 10,
	Requirements = {
        [1] = { 2 },
    },
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 3 - Serpent / Cobra" ) end,
}

TREE.Tier[1][4] = {
	Name = "Quatrieme - Pouvoir Cobra",
	Description = "Pouvoir Cobra 4",
	Icon = "materials/wos/skills/arbrefl6.png",
	PointsRequired = 10,
	Requirements = {
        [1] = { 3 },
    },
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 4 - Serpent / Cobra" ) end,
}

wOS:RegisterSkillTree( TREE )