local TREE = {}
TREE.Name = "Forme de Combat Flamme / Magma"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbrefl3.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 1
TREE.UserGroups = false
TREE.JobRestricted = { 
    "TEAM_MIZUNOTO_FLAMME" ,
    "TEAM_MIZUNOE_FLAMME" ,
    "TEAM_KANOTO_FLAMME" ,
    "TEAM_KANOE_FLAMME" ,
    "TEAM_TSUCHINOTO_FLAMME" ,
    "TEAM_TSUCHINOE_FLAMME" ,
    "TEAM_HINOTO_FLAMME" ,
    "TEAM_HINOE_FLAMME" ,
    "TEAM_KINOTO_FLAMME" ,
    "TEAM_KINOE_FLAMME" ,
    
    "TEAM_PILIER_FLAMME"
}
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Technique de combat - Flamme",
	Description = "Technique de combat [ les bases ].",
	Icon = "materials/wos/skills/yume_resistance.png",
	PointsRequired = 0,
	Requirements = {},
	OnPlayerSpawn = function( ply ) 
        ply:Give( "katana_pourfendeur" )
	end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) 
		wep:AddForm( "Technique - Flamme / Magma" , 1 )
        wep.SaberDamage = wep.SaberDamage + 0
	end,
}

wOS:RegisterSkillTree( TREE )