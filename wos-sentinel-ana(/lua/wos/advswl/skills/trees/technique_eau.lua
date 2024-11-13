local TREE = {}
TREE.Name = "Forme de Combat Eau / Acide"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbrefl1.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 1
TREE.UserGroups = false
TREE.JobRestricted = { 
    "TEAM_MIZUNOTO_EAU" ,
    "TEAM_MIZUNOE_EAU" ,
    "TEAM_KANOTO_EAU" ,
    "TEAM_KANOE_EAU" ,
    "TEAM_TSUCHINOTO_EAU" ,
    "TEAM_TSUCHINOE_EAU" ,
    "TEAM_HINOTO_EAU" ,
    "TEAM_HINOE_EAU" ,
    "TEAM_KINOTO_EAU" ,

	"TEAM_KINOE_EAU" ,
    "TEAM_PILIER_EAU"
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
        ply:Give( "katana_pourfendeur" )
	end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) 
		wep:AddForm( "Technique - Eau / Acide" , 1 )
        wep.SaberDamage = wep.SaberDamage + 0
	end,
}

wOS:RegisterSkillTree( TREE )