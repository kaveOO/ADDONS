local TREE = {}
TREE.Name = "Forme de Combat Magma / Flamme"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbrefl3.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 1
TREE.UserGroups = false
TREE.JobRestricted = { 
    "TEAM_DEMON_E_MAGMA" ,
    "TEAM_DEMON_D_MAGMA" ,
    "TEAM_DEMON_C_MAGMA" ,
    "TEAM_DEMON_B_MAGMA" ,
    "TEAM_DEMON_A_MAGMA" ,
    "TEAM_DEMON_AA_MAGMA" ,
    "TEAM_DEMON_S_MAGMA" ,
    "TEAM_DEMON_SS_MAGMA" ,
    "TEAM_DEMON_Z_MAGMA" ,
    
}
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Technique de combat - Magma",
	Description = "Technique de combat [ les bases ].",
	Icon = "materials/wos/skills/yume_resistance.png",
	PointsRequired = 0,
	Requirements = {},
	OnPlayerSpawn = function( ply ) 
        ply:Give( "katana_demon" )
	end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) 
		wep:AddForm( "Technique - Flamme / Magma" , 1 )
        wep.SaberDamage = wep.SaberDamage + 0
	end,
}

wOS:RegisterSkillTree( TREE )