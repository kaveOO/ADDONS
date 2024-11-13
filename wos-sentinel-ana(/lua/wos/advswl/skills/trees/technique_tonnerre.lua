local TREE = {}
TREE.Name = "Forme de Combat Tonnerre / Foudre"
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
	Name = "Technique de combat - Tonnerre",
	Description = "Technique de combat [ les bases ].",
	Icon = "materials/wos/skills/yume_resistance.png",
	PointsRequired = 0,
	Requirements = {},
	OnPlayerSpawn = function( ply ) 
        ply:Give( "katana_demon" )
	end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) 
		wep:AddForm( "Technique - Foudre / Tonnerre" , 1 )
        wep.SaberDamage = wep.SaberDamage + 0
	end,
}

wOS:RegisterSkillTree( TREE )