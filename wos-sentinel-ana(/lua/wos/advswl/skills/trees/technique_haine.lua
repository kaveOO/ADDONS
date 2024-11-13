local TREE = {}
TREE.Name = "Forme de Combat Haine / Amour"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbrefl2.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 1
TREE.UserGroups = false
TREE.JobRestricted = { 
    "TEAM_DEMON_E_HAINE" ,
    "TEAM_DEMON_D_HAINE" ,
    "TEAM_DEMON_C_HAINE" ,
    "TEAM_DEMON_B_HAINE" ,
    "TEAM_DEMON_A_HAINE" ,
    "TEAM_DEMON_AA_HAINE" ,
    "TEAM_DEMON_S_HAINE" ,
    "TEAM_DEMON_SS_HAINE" ,
    "TEAM_DEMON_Z_HAINE" ,
}
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Technique de combat - Haines",
	Description = "Technique de combat [ les bases ].",
	Icon = "materials/wos/skills/yume_resistance.png",
	PointsRequired = 0,
	Requirements = {},
	OnPlayerSpawn = function( ply ) 
        ply:Give( "katana_demon" )
	end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) 
		wep:AddForm( "Technique - Amour / Haine" , 1 )
        wep.SaberDamage = wep.SaberDamage + 0
	end,
}

wOS:RegisterSkillTree( TREE )