local TREE = {}
TREE.Name = "Pouvoir Sanguinaire Du Tonnerre Rang A a S"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbrefl4.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 5
TREE.UserGroups = false
TREE.JobRestricted = { 
	  "TEAM_DEMON_A_TONNERRE", "TEAM_DEMON_AA_TONNERRE", "TEAM_DEMON_S_TONNERRE"
}
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Technique de combat",
	Description = "Votre forme de combat",
	Icon = "materials/wos/skills/arbrefl4.png",
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
	Icon = "materials/wos/skills/yume_demon_resist.png",
	PointsRequired = 1,
    Requirements = {
		[1] = { 1 },
	},
	OnPlayerSpawn = function( ply )
        ply:SetArmor( ply:Armor() + 250 )
        ply:SetMaxArmor( ply:GetMaxArmor() + 250 )
    end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[2][2] = {
	Name = "Revêtement de Sang 1 - Demon E",
	Description = "Revêtement de sang pour demon.",
	Icon = "materials/wos/skills/yume_demon_hp.png",
	PointsRequired = 1,
    Requirements = {
		[1] = { 1 },
	},
	OnPlayerSpawn = function( ply )
        ply:SetHealth( ply:Health() + 300 )
        ply:SetMaxHealth( ply:GetMaxHealth() + 300 )
    end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[2][3] = {
	Name = "Entrainement - Vitesse 1",
	Description = "Renforcement",
	Icon = "materials/wos/skills/yume_demon_speed.png",
	PointsRequired = 1,
    Requirements = {
		[1] = { 1 },
	},
	OnPlayerSpawn = function( ply ) ply:SetRunSpeed( ply:GetRunSpeed() + 95 ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[2][4] = {
	Name = "Amélioration de la force - Force 1",
	Description = "Progression en force.",
	Icon = "materials/wos/skills/yume_demon_force.png",
	PointsRequired = 1,
	Requirements = {
		[1] = { 1 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep.SaberDamage = wep.SaberDamage + 95 end,
}

TREE.Tier[3] = {}
TREE.Tier[3][1] = {
	Name = "Entrainement - Physique 2",
	Description = "Renforcement",
	Icon = "materials/wos/skills/yume_demon_resist.png",
	PointsRequired = 1,
    Requirements = {
		[2] = { 1 },
	},
	OnPlayerSpawn = function( ply )
        ply:SetArmor( ply:Armor() + 25 )
        ply:SetMaxArmor( ply:GetMaxArmor() + 25 )
    end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[3][2] = {
	Name = "Revêtement de Sang 2 - Demon E",
	Description = "Revêtement de sang pour demon.",
	Icon = "materials/wos/skills/yume_demon_hp.png",
	PointsRequired = 1,
    Requirements = {
		[2] = { 2 },
	},
	OnPlayerSpawn = function( ply )
        ply:SetHealth( ply:Health() + 350 )
        ply:SetMaxHealth( ply:GetMaxHealth() + 350 ) 
    end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[3][3] = {
	Name = "Entrainement - Vitesse 2",
	Description = "Renforcement",
	Icon = "materials/wos/skills/yume_demon_speed.png",
	PointsRequired = 1,
    Requirements = {
		[2] = { 3 },
	},
	OnPlayerSpawn = function( ply ) ply:SetRunSpeed( ply:GetRunSpeed() + 95 ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[3][4] = {
	Name = "Amélioration de la force - Force 2",
	Description = "Progression en force.",
	Icon = "materials/wos/skills/yume_demon_force.png",
	PointsRequired = 1,
	Requirements = {
		[2] = { 4 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep.SaberDamage = wep.SaberDamage + 95 end,
}

TREE.Tier[4] = {}
TREE.Tier[4][1] = {
	Name = "Entrainement - Physique 3",
	Description = "Renforcement",
	Icon = "materials/wos/skills/yume_demon_resist.png",
	PointsRequired = 1,
    Requirements = {
		[3] = { 1 },
	},
	OnPlayerSpawn = function( ply )
        ply:SetArmor( ply:Armor() + 250 )
        ply:SetMaxArmor( ply:GetMaxArmor() + 250 ) 
    end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[4][2] = {
	Name = "Revêtement de Sang 3 - Demon E",
	Description = "Revêtement de sang pour demon.",
	Icon = "materials/wos/skills/yume_demon_hp.png",
	PointsRequired = 1,
    Requirements = {
		[3] = { 2 },
	},
	OnPlayerSpawn = function( ply )
        ply:SetHealth( ply:Health() + 500 )
        ply:SetMaxHealth( ply:GetMaxHealth() + 500 ) 
    end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[4][3] = {
	Name = "Entrainement - Vitesse 3",
	Description = "Renforcement",
	Icon = "materials/wos/skills/yume_demon_speed.png",
	PointsRequired = 1,
    Requirements = {
		[3] = { 3 },
	},
	OnPlayerSpawn = function( ply ) ply:SetRunSpeed( ply:GetRunSpeed() + 95 ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[4][4] = {
	Name = "Amélioration de la force - Force 3",
	Description = "Progression en force.",
	Icon = "materials/wos/skills/yume_demon_force.png",
	PointsRequired = 1,
	Requirements = {
		[3] = { 4 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep.SaberDamage = wep.SaberDamage + 95 end,
}

TREE.Tier[5] = {}
TREE.Tier[5][1] = {
	Name = "Mouvement 1 - Simple",
	Description = "Mouvement 1 style d'école des pourfendeurs",
	Icon = "materials/wos/skills/arbrefl4.png",
	PointsRequired = 3,
	Requirements = {
		[4] = { 1 , 2 , 3 , 4 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Mouvement 1 - Simple" ) end,
}

wOS:RegisterSkillTree( TREE )