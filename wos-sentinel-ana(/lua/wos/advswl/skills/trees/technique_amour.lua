local TREE = {}
TREE.Name = "Forme de Combat Amour / Haine"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbrefl2.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 1
TREE.UserGroups = false
TREE.JobRestricted = { 
    "TEAM_MIZUNOTO_AMOUR" ,
    "TEAM_MIZUNOE_AMOUR" ,
    "TEAM_KANOTO_AMOUR" ,
    "TEAM_KANOE_AMOUR" ,
    "TEAM_TSUCHINOTO_AMOUR" ,
    "TEAM_TSUCHINOE_AMOUR" ,
    "TEAM_HINOTO_AMOUR" ,
    "TEAM_HINOE_AMOUR" ,
    "TEAM_KINOTO_AMOUR" ,
    "TEAM_KINOE_AMOUR" ,
    
    "TEAM_PILIER_AMOUR"
}
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Technique de combat - Amour",
	Description = "Technique de combat [ les bases ].",
	Icon = "materials/wos/skills/yume_resistance.png",
	PointsRequired = 0,
	Requirements = {},
	OnPlayerSpawn = function( ply ) 
        ply:Give( "katana_pourfendeur" )
	end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) 
		wep:AddForm( "Technique - Amour / Haine" , 1 )
        wep.SaberDamage = wep.SaberDamage + 0
	end,
}

wOS:RegisterSkillTree( TREE )