local TREE = {}
TREE.Name = "Arbre d'apprentissage - Kanoto"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbre1.png"
TREE.BackgroundColor = Color( 255 , 0 , 0 , 25 )
TREE.MaxTiers = 3
TREE.UserGroups = false
TREE.JobRestricted = {
	"TEAM_KANOTO_AMOUR" , "TEAM_KANOTO_FOUDRE" , "TEAM_KANOTO_EAU" , "TEAM_KANOTO_FLAMME" , "TEAM_KANOTO_SERPENT" , "TEAM_KANOTO_INSECTE"
}
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Entrainement - Physique 1",
	Description = "Renforcement",
	Icon = "materials/wos/skills/armor1.png",
	PointsRequired = 1,
    Requirements = {},
	OnPlayerSpawn = function( ply ) ply:SetMaxArmor( ply:GetMaxArmor() + 250 ) ply:SetArmor( ply:Armor() + 250 ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[1][2] = {
	Name = "Hakama 1 - Mizunoto",
	Description = "Vêtement traditionnel japonais.",
	Icon = "materials/wos/skills/hakama1.png",
	PointsRequired = 1,
    Requirements = {},
	OnPlayerSpawn = function( ply ) ply:SetMaxHealth( ply:GetMaxHealth() + 250 ) ply:SetHealth( ply:Health() + 250 ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[1][3] = {
	Name = "Entrainement - Vitesse 1",
	Description = "Renforcement",
	Icon = "materials/wos/skills/speed1.png",
	PointsRequired = 1,
    Requirements = {},
	OnPlayerSpawn = function( ply ) ply:SetRunSpeed( ply:GetRunSpeed() + 150 ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[1][4] = {
	Name = "Amélioration du mouvement - Force 1",
	Description = "Progression en force.",
	Icon = "materials/wos/skills/katana1.png",
	PointsRequired = 1,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep.SaberDamage = wep.SaberDamage + 30 end,
}

TREE.Tier[2] = {}
TREE.Tier[2][1] = {
	Name = "Entrainement - Physique 2",
	Description = "Renforcement",
	Icon = "materials/wos/skills/armor1.png",
	PointsRequired = 1,
    Requirements = {
		[1] = { 1 },
	},
	OnPlayerSpawn = function( ply ) ply:SetMaxArmor( ply:GetMaxArmor() + 250 ) ply:SetArmor( ply:Armor() + 250 ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[2][2] = {
	Name = "Hakama 2 - Mizunoto",
	Description = "Vêtement traditionnel japonais.",
	Icon = "materials/wos/skills/hakama1.png",
	PointsRequired = 1,
    Requirements = {
		[1] = { 2 },
	},
	OnPlayerSpawn = function( ply ) ply:SetMaxHealth( ply:GetMaxHealth() + 700 ) ply:SetHealth( ply:Health() + 700 ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[2][3] = {
	Name = "Entrainement - Vitesse 2",
	Description = "Renforcement",
	Icon = "materials/wos/skills/speed1.png",
	PointsRequired = 1,
    Requirements = {
		[1] = { 3 },
	},
	OnPlayerSpawn = function( ply ) ply:SetRunSpeed( ply:GetRunSpeed() + 25 ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[2][4] = {
	Name = "Amélioration du mouvement - Force 2",
	Description = "Progression en force.",
	Icon = "materials/wos/skills/katana1.png",
	PointsRequired = 1,
	Requirements = {
		[1] = { 4 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep.SaberDamage = wep.SaberDamage + 35 end,
}

TREE.Tier[3] = {}
TREE.Tier[3][1] = {
	Name = "Entrainement - Endurance 1",
	Description = "Renforcement",
	Icon = "materials/wos/skills/mana1.png",
	PointsRequired = 1,
    Requirements = {
		[2] = { 1 , 2 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:SetMaxForce( wep:GetMaxForce() + 50 ) end,
}

TREE.Tier[3][2] = {
	Name = "Entrainement - Endurance 2",
	Description = "Renforcement",
	Icon = "materials/wos/skills/mana1.png",
	PointsRequired = 1,
    Requirements = {
		[2] = { 3 , 4 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:SetMaxForce( wep:GetMaxForce() + 50 ) end,
}

wOS:RegisterSkillTree( TREE )