local TREE = {}
TREE.Name = "Forme de Combat Serpent/Cobra"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbrefl6.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 1
TREE.UserGroups = false
TREE.JobRestricted = { 
    "TEAM_MIZUNOTO_SERPENT" ,
    "TEAM_MIZUNOE_SERPENT" ,
    "TEAM_KANOTO_SERPENT" ,
    "TEAM_KANOE_SERPENT" ,
    "TEAM_TSUCHINOTO_SERPENT" ,
    "TEAM_TSUCHINOE_SERPENT" ,
    "TEAM_HINOTO_SERPENT" ,
    "TEAM_HINOE_SERPENT" ,
    "TEAM_KINOTO_SERPENT" ,
    "TEAM_KINOE_SERPENT" ,
    
    "TEAM_PILIER_SERPENT"
}
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Technique de combat - Serpent",
	Description = "Technique de combat [ les bases ].",
	Icon = "materials/wos/skills/yume_resistance.png",
	PointsRequired = 0,
	Requirements = {},
	OnPlayerSpawn = function( ply ) 
        ply:Give( "katana_pourfendeur" )
	end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) 
		wep:AddForm( "Technique - Serpent / Cobra" , 1 )
        wep.SaberDamage = wep.SaberDamage + 0
	end,
}

wOS:RegisterSkillTree( TREE )