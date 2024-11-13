local TREE = {}
TREE.Name = "Pouvoir Sanguinaire Du Cobra Rang S+ a Z"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbrefl6.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 5
TREE.UserGroups = false
TREE.JobRestricted = { 
	  "TEAM_DEMON_SS_COBRA", "TEAM_DEMON_Z_COBRA"
}
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Technique de combat",
	Description = "Votre forme de combat",
	Icon = "materials/wos/skills/arbrefl6.png",
	PointsRequired = 0,
	Requirements = {},
	OnPlayerSpawn = function( ply )
        ply:Give( "katana_demon" )
	end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep )
		wep:AddForm( "Forme Basique" , 1 )
        wep.SaberDamage = wep.SaberDamage + 10
	end,
}

TREE.Tier[2] = {}
TREE.Tier[2][1] = {
	Name = "Entrainement - Physique 1",
	Description = "Renforcement",
	Icon = "materials/wos/skills/yume_resistance.png",
	PointsRequired = 1,
    Requirements = {
		[1] = { 1 },
	},
	OnPlayerSpawn = function( ply )
        ply:SetArmor( ply:Armor() + 170 )
        ply:SetMaxArmor( ply:GetMaxArmor() + 170 )
    end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[2][2] = {
	Name = "Revêtement de Sang 1 - Demon E",
	Description = "Revêtement de sang pour demon.",
	Icon = "materials/wos/skills/yume_hp.png",
	PointsRequired = 1,
    Requirements = {
		[1] = { 1 },
	},
	OnPlayerSpawn = function( ply )
        ply:SetHealth( ply:Health() + 730 )
        ply:SetMaxHealth( ply:GetMaxHealth() + 730 )
    end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[2][3] = {
	Name = "Entrainement - Vitesse 1",
	Description = "Renforcement",
	Icon = "materials/wos/skills/yume_speed.png",
	PointsRequired = 1,
    Requirements = {
		[1] = { 1 },
	},
	OnPlayerSpawn = function( ply ) ply:SetRunSpeed( ply:GetRunSpeed() + 115 ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[2][4] = {
	Name = "Amélioration de la force - Force 1",
	Description = "Progression en force.",
	Icon = "materials/wos/skills/yume_force.png",
	PointsRequired = 1,
	Requirements = {
		[1] = { 1 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep.SaberDamage = wep.SaberDamage + 120 end,
}

TREE.Tier[3] = {}
TREE.Tier[3][1] = {
	Name = "Entrainement - Physique 2",
	Description = "Renforcement",
	Icon = "materials/wos/skills/yume_resistance.png",
	PointsRequired = 1,
    Requirements = {
		[2] = { 1 },
	},
	OnPlayerSpawn = function( ply )
        ply:SetArmor( ply:Armor() + 170 )
        ply:SetMaxArmor( ply:GetMaxArmor() + 170 )
    end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[3][2] = {
	Name = "Revêtement de Sang 2 - Demon E",
	Description = "Revêtement de sang pour demon.",
	Icon = "materials/wos/skills/yume_hp.png",
	PointsRequired = 1,
    Requirements = {
		[2] = { 2 },
	},
	OnPlayerSpawn = function( ply )
        ply:SetHealth( ply:Health() + 730 )
        ply:SetMaxHealth( ply:GetMaxHealth() + 730 ) 
    end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[3][3] = {
	Name = "Entrainement - Vitesse 2",
	Description = "Renforcement",
	Icon = "materials/wos/skills/yume_speed.png",
	PointsRequired = 1,
    Requirements = {
		[2] = { 3 },
	},
	OnPlayerSpawn = function( ply ) ply:SetRunSpeed( ply:GetRunSpeed() + 115 ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[3][4] = {
	Name = "Amélioration de la force - Force 2",
	Description = "Progression en force.",
	Icon = "materials/wos/skills/yume_force.png",
	PointsRequired = 1,
	Requirements = {
		[2] = { 4 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep.SaberDamage = wep.SaberDamage + 120 end,
}

TREE.Tier[4] = {}
TREE.Tier[4][1] = {
	Name = "Entrainement - Physique 3",
	Description = "Renforcement",
	Icon = "materials/wos/skills/yume_resistance.png",
	PointsRequired = 1,
    Requirements = {
		[3] = { 1 },
	},
	OnPlayerSpawn = function( ply )
        ply:SetArmor( ply:Armor() + 170 )
        ply:SetMaxArmor( ply:GetMaxArmor() + 170 ) 
    end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[4][2] = {
	Name = "Revêtement de Sang 3 - Demon E",
	Description = "Revêtement de sang pour demon.",
	Icon = "materials/wos/skills/yume_hp.png",
	PointsRequired = 1,
    Requirements = {
		[3] = { 2 },
	},
	OnPlayerSpawn = function( ply )
        ply:SetHealth( ply:Health() + 730 )
        ply:SetMaxHealth( ply:GetMaxHealth() + 730 ) 
    end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[4][3] = {
	Name = "Entrainement - Vitesse 3",
	Description = "Renforcement",
	Icon = "materials/wos/skills/yume_speed.png",
	PointsRequired = 1,
    Requirements = {
		[3] = { 3 },
	},
	OnPlayerSpawn = function( ply ) ply:SetRunSpeed( ply:GetRunSpeed() + 115 ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[4][4] = {
	Name = "Amélioration de la force - Force 3",
	Description = "Progression en force.",
	Icon = "materials/wos/skills/yume_force.png",
	PointsRequired = 1,
	Requirements = {
		[3] = { 4 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep.SaberDamage = wep.SaberDamage + 120 end,
}

TREE.Tier[5] = {}
TREE.Tier[5][1] = {
	Name = "Mouvement 1 - Simple",
	Description = "Mouvement 1 style d'école des pourfendeurs",
	Icon = "materials/wos/skills/arbrefl6.png",
	PointsRequired = 3,
	Requirements = {
		[4] = { 1 , 2 , 3 , 4 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 1 - Simple" ) end,
}

wOS:RegisterSkillTree( TREE )