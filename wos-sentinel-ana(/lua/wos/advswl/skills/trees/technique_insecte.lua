local TREE = {}
TREE.Name = "Forme de Combat Insecte / Rose"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbrefl5.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 1
TREE.UserGroups = false
TREE.JobRestricted = { 
    "TEAM_MIZUNOTO_INSECTE" ,
    "TEAM_MIZUNOE_INSECTE" ,
    "TEAM_KANOTO_INSECTE" ,
    "TEAM_KANOE_INSECTE" ,
    "TEAM_TSUCHINOTO_INSECTE" ,
    "TEAM_TSUCHINOE_INSECTE" ,
    "TEAM_HINOTO_INSECTE" ,
    "TEAM_HINOE_INSECTE" ,
    "TEAM_KINOTO_INSECTE",
    "TEAM_KINOE_INSECTE" ,
    
    "TEAM_PILIER_INSECTE"
}
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Technique de combat - Insecte",
	Description = "Technique de combat [ les bases ].",
	Icon = "materials/wos/skills/yume_resistance.png",
	PointsRequired = 0,
	Requirements = {},
	OnPlayerSpawn = function( ply ) 
        ply:Give( "katana_pourfendeur" )
	end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) 
		wep:AddForm( "Technique - Insecte / Rose" , 1 )
        wep.SaberDamage = wep.SaberDamage + 0
	end,
}

wOS:RegisterSkillTree( TREE )