local TREE = {}
TREE.Name = "Forme de Combat Foudre / Tonerre"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbrefl4.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 1
TREE.UserGroups = false
TREE.JobRestricted = { 
    "TEAM_MIZUNOTO_FOUDRE" ,
    "TEAM_MIZUNOE_FOUDRE" ,
    "TEAM_KANOTO_FOUDRE" ,
    "TEAM_KANOE_FOUDRE" ,
    "TEAM_TSUCHINOTO_FOUDRE" ,
    "TEAM_TSUCHINOE_FOUDRE" ,
    "TEAM_HINOTO_FOUDRE" ,
    "TEAM_HINOE_FOUDRE" ,
    "TEAM_KINOTO_FOUDRE" ,
    "TEAM_KINOE_FOUDRE"
    
    
    "TEAM_PILIER_FOUDRE"
}
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Technique de combat - Foudre",
	Description = "Technique de combat [ les bases ].",
	Icon = "materials/wos/skills/yume_resistance.png",
	PointsRequired = 0,
	Requirements = {},
	OnPlayerSpawn = function( ply ) 
        ply:Give( "katana_pourfendeur" )
	end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) 
		wep:AddForm( "Technique - Foudree" , 1 )
        wep.SaberDamage = wep.SaberDamage + 0
	end,
}

wOS:RegisterSkillTree( TREE )