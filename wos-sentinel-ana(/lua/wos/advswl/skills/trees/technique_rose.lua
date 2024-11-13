local TREE = {}
TREE.Name = "Forme de Combat Rose / Insecte"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbrefl5.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 1
TREE.UserGroups = false
TREE.JobRestricted = { 
    "TEAM_DEMON_E_ROSE" ,
    "TEAM_DEMON_D_ROSE" ,
    "TEAM_DEMON_C_ROSE" ,
    "TEAM_DEMON_B_ROSE" ,
    "TEAM_DEMON_A_ROSE" ,
    "TEAM_DEMON_AA_ROSE" ,
    "TEAM_DEMON_S_ROSE" ,
    "TEAM_DEMON_SS_ROSE" ,
    "TEAM_DEMON_Z_ROSE" ,
    
}
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Technique de combat - Roses",
	Description = "Technique de combat [ les bases ].",
	Icon = "materials/wos/skills/yume_resistance.png",
	PointsRequired = 0,
	Requirements = {},
	OnPlayerSpawn = function( ply ) 
        ply:Give( "katana_demon" )
	end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) 
		wep:AddForm( "Technique - Insecte / Rose" , 1 )
        wep.SaberDamage = wep.SaberDamage + 0
	end,
}

wOS:RegisterSkillTree( TREE )