local TREE = {}

TREE.Name = "Jeune Demon - Combattant !"
TREE.Description = " Le courage n'est rien sans la réflexion."
TREE.TreeIcon = "materials/wos/skills/arbre2.png"
TREE.BackgroundColor = Color( 0 , 0 , 0 , 50 )
TREE.MaxTiers = 5
TREE.UserGroups = false
TREE.JobRestricted = { "TEAM_DEMON_J" }

TREE.Tier = {}

TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Technique de combat - Demon",
	Description = "Technique de combat [ les bases ].",
	Icon = "materials/wos/skills/katana1.png",
	PointsRequired = 0,
	Requirements = {},
	OnPlayerSpawn = function( ply )
        ply:Give( "katana_jeune_demon" )
	end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep )
		wep:AddForm( "Technique - Simple" , 1 )
        wep.SaberDamage = wep.SaberDamage + 10
	end,
}

TREE.Tier[2] = {}
TREE.Tier[2][1] = {
	Name = "Sang de demon",
	Description = "Revêtement de sangs.",
	Icon = "materials/wos/skills/sang1.png",
	PointsRequired = 1,
	Requirements = {
        [1] = { 1 },
    },
	OnPlayerDeath = function( ply ) end,
	OnPlayerSpawn = function( ply ) ply:SetMaxHealth( ply:GetMaxHealth() + 250 ) ply:SetHealth(ply:Health() + 250 ) end,
}

TREE.Tier[3] = {}
TREE.Tier[3][1] = {
	Name = "Entrainement - Vitesse",
	Description = "Renforcement",
	Icon = "materials/wos/skills/speed1.png",
	PointsRequired = 1,
	Requirements = {
        [2] = { 1 },
    },
	OnPlayerDeath = function( ply ) end,
	OnPlayerSpawn = function( ply ) ply:SetRunSpeed( ply:GetRunSpeed() + 10 ) end,
}

TREE.Tier[4] = {}
TREE.Tier[4][1] = {
	Name = "Entrainement - Physique",
	Description = "Renforcement",
	Icon = "materials/wos/skills/armor1.png",
	PointsRequired = 1,
	Requirements = {
        [3] = { 1 },
    },
	OnPlayerDeath = function( ply ) end,
	OnPlayerSpawn = function( ply ) ply:SetMaxArmor( ply:GetMaxArmor() + 100 ) ply:SetArmor( ply:Armor() + 100 ) end,
}

TREE.Tier[5] = {}
TREE.Tier[5][1] = {
	Name = "Passage en ( Rang E )",
	Description = "Promotion",
	Icon = "materials/wos/skills/powerup.png",
	PointsRequired = 1,
	Requirements = {
        [4] = { 1 },
    },
	OnPlayerDeath = function( ply ) end,
	OnPlayerSpawn = function( ply ) end,
}

wOS:RegisterSkillTree( TREE )