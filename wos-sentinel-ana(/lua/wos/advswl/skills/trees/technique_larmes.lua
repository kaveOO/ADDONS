local TREE = {}
TREE.Name = "Forme de Combat Acide / Eau"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbrefl1.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 1
TREE.UserGroups = false
TREE.JobRestricted = { 
    "TEAM_DEMON_E_LARMES" ,
    "TEAM_DEMON_D_LARMES" ,
    "TEAM_DEMON_C_LARMES" ,
    "TEAM_DEMON_B_LARMES" ,
    "TEAM_DEMON_A_LARMES" ,
    "TEAM_DEMON_AA_LARMES" ,
    "TEAM_DEMON_S_LARMES" ,
    "TEAM_DEMON_SS_LARMES" ,
    "TEAM_DEMON_Z_LARMES" ,
}
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Technique de combat - Eau",
	Description = "Technique de combat [ les bases ].",
	Icon = "materials/wos/skills/yume_resistance.png",
	PointsRequired = 0,
	Requirements = {},
	OnPlayerSpawn = function( ply ) 
        ply:Give( "katana_demon" )
	end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) 
		wep:AddForm( "Technique - Eau / Acide" , 1 )
        wep.SaberDamage = wep.SaberDamage + 0
	end,
}

wOS:RegisterSkillTree( TREE )