local TREE = {}
TREE.Name = "Palier de la Supérieure 6"
TREE.Description = ""
TREE.TreeIcon = "materials/wos/skills/arbre2.png"
TREE.BackgroundColor = Color( 255, 0, 0, 25 )
TREE.MaxTiers = 2
TREE.UserGroups = false
TREE.JobRestricted = { "TEAM_LUNE_SUP_6" }
TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Technique de combat",
	Description = "Votre forme de combat",
	Icon = "materials/wos/skills/katana1.png",
	PointsRequired = 0,
	Requirements = {},
	OnPlayerSpawn = function( ply )
        ply:Give( "katana_demon" )
	end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep )
		wep:AddForm( "Technique - Flamme / Magma" , 1 )
        wep.SaberDamage = wep.SaberDamage + 10
	end,
}


TREE.Tier[2] = {}
TREE.Tier[2][1] = {
	Name = "Amélioration du mouvement - Inf 5",
	Description = "Progression en force.",
	Icon = "materials/wos/skills/katana1.png",
	PointsRequired = 1,
	Requirements = {
		[1] = { 1 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep.SaberDamage = wep.SaberDamage + 770 end,
}

TREE.Tier[2][2] = {
	Name = "Entrainement - Physique",
	Description = "Renforcement",
	Icon = "materials/wos/skills/armor1.png",
	PointsRequired = 1,
	Requirements = {
		[1] = { 1 },
	},
	OnPlayerSpawn = function( ply ) ply:SetMaxArmor( ply:GetMaxArmor() + 1000 ) ply:SetArmor( ply:Armor() + 1000 ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[2][3] = {
	Name = "Entrainement - Vitesse",
	Description = "Renforcement",
	Icon = "materials/wos/skills/speed1.png",
	PointsRequired = 2,
	Requirements = {
		[1] = { 1 },
	},
	OnPlayerSpawn = function( ply ) ply:SetRunSpeed( ply:GetRunSpeed() + 510 ) end, 
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

wOS:RegisterSkillTree( TREE )