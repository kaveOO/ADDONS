local TREE = {}
TREE.Name = "Forme de Combat Cobra / Serpent"
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
	Name = "Technique de combat - Cobra",
	Description = "Technique de combat [ les bases ].",
	Icon = "materials/wos/skills/yume_resistance.png",
	PointsRequired = 0,
	Requirements = {},
	OnPlayerSpawn = function( ply ) 
        ply:Give( "katana_demon" )
	end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) 
		wep:AddForm( "Technique - Serpent / Cobra" , 1 )
        wep.SaberDamage = wep.SaberDamage + 0
	end,
}

wOS:RegisterSkillTree( TREE )