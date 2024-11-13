TEAM_CITOYEN = DarkRP.createJob( "Villageois" , {
    color = Color( 237 , 158 , 0 ),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/custom_water_style_students_male.mdl",
		"models/yufu/oldjimmy/demonslayer/custom/custom_water_style_students_female.mdl"
    },
    description = [[ Profite de ton temps libre et decouvre les plaisirs humains ]],
    weapons = { "key" },
    command = "CITOYEN1",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citoyens",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(100)
        ply:SetHealth(100)
        ply:SetMaxArmor(100)
        ply:SetArmor(100)
    end
})

TEAM_ASPIRANT = DarkRP.createJob("Aspirant", {
    color = Color( 127 , 255 , 255 , 255 ),
  model = {
		"models/yufu/oldjimmy/demonslayer/oc/arthur_leywin.mdl",
        "models/yufu/oldjimmy/demonslayer/oc/tofi_ito.mdl"
    },
    description = [[Tu es un apprenti pourfendeurs donne ton maximum pour rendre fiere tes superieurs]],
    weapons = { "key" },
    command = "CITOYEN2",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Aspirant/Jeune Demon",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(250)
        ply:SetHealth(250)
        ply:SetMaxArmor(100)
        ply:SetArmor(100)
    end
})

TEAM_DEMON_J = DarkRP.createJob("Jeune Demon", {
    color = Color(255, 127, 127, 255),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[Tu es un jeune demon tout est desormais possible devore le plus d'humain possible]],
    weapons = {"key"},
    command = "JDEMONS",
    max = 0,
    salary = 50,
    admin = 0,
	sortOrder = 3,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Aspirant/Jeune Demon",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(250)
        ply:SetHealth(250)
        ply:SetMaxArmor(100)
        ply:SetArmor(100)
    end
})

------------------ POURFENDEUR

--- MIZUNOTO

TEAM_MIZUNOTO_EAU = DarkRP.createJob("Mizunoto de l'Eau", {     
    color = Color(9, 228, 231),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "MIZUNOTO1",
    max = 0,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Eau",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(500)
        ply:SetHealth(500)
        ply:SetMaxArmor(100)
        ply:SetArmor(100)
    end
})

TEAM_MIZUNOTO_AMOUR = DarkRP.createJob("Mizunoto de l'Amour", {     
    color = Color(127, 95, 0),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "MIZUNOTO2",
    max = 0,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Amour",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(500)
        ply:SetHealth(500)
        ply:SetMaxArmor(100)
        ply:SetArmor(100)
    end
})

TEAM_MIZUNOTO_FLAMME = DarkRP.createJob("Mizunoto de la Flamme", {
    color = Color(235, 73, 52),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "MIZUNOTO3",
    max = 0,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de la Flamme",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(500)
        ply:SetHealth(500)
        ply:SetMaxArmor(100)
        ply:SetArmor(100)
    end
})

TEAM_MIZUNOTO_FOUDRE = DarkRP.createJob("Mizunoto de la Foudre", {
    color = Color(235, 204, 7),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key","katanaordinaire"},
    command = "MIZUNOTO4",
    max = 0,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de la Foudre",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(500)
        ply:SetHealth(500)
        ply:SetMaxArmor(100)
		ply:SetArmor(100)
    end
})

TEAM_MIZUNOTO_INSECTE = DarkRP.createJob("Mizunoto de l'Insecte", {
    color = Color(170, 6, 199),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "MIZUNOTO5",
    max = 0,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Insecte",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(500)
        ply:SetHealth(500)
        ply:SetMaxArmor(100)
		ply:SetArmor(100)
    end
})

TEAM_MIZUNOTO_SERPENT = DarkRP.createJob("Mizunoto du Serpent", {
    color = Color(5, 163, 68),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "MIZUNOTO6",
    max = 0,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle du Serpent",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(500)
        ply:SetHealth(500)
        ply:SetMaxArmor(100)
		ply:SetArmor(100)
    end
})

-- MIZUNOE

TEAM_MIZUNOE_EAU = DarkRP.createJob("Mizunoe de l'Eau", {
    color = Color(9, 228, 231),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "MIZUNOE1",
    max = 0,
    salary = 150,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Eau",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(700)
        ply:SetHealth(700)
        ply:SetMaxArmor(200)
        ply:SetArmor(200)
    end
})

TEAM_MIZUNOE_AMOUR = DarkRP.createJob("Mizunoe de l'Amour", {
    color = Color(127, 95, 0),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "MIZUNOE2",
    max = 0,
    salary = 150,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Amour",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(700)
        ply:SetHealth(700)
        ply:SetMaxArmor(200)
        ply:SetArmor(200)
    end
})

TEAM_MIZUNOE_FLAMME = DarkRP.createJob("Mizunoe de la Flamme", {
    color = Color(235, 73, 52),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "MIZUNOE3",
    max = 0,
    salary = 150,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de la Flamme",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(700)
        ply:SetHealth(700)
        ply:SetMaxArmor(200)
        ply:SetArmor(200)
    end
})

TEAM_MIZUNOE_FOUDRE = DarkRP.createJob("Mizunoe de la Foudre", {
    color = Color(235, 204, 7),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "MIZUNOE4",
    max = 0,
    salary = 150,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de la Foudre",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(700)
        ply:SetHealth(700)
        ply:SetMaxArmor(200)
		ply:SetArmor(200)
    end
})

TEAM_MIZUNOE_INSECTE = DarkRP.createJob("Mizunoe de l'Insecte", {
    color = Color(170, 6, 199),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "MIZUNOE5",
    max = 0,
    salary = 150,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Insecte",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(700)
        ply:SetHealth(700)
        ply:SetMaxArmor(200)
		ply:SetArmor(200)
    end
})

TEAM_MIZUNOE_SERPENT = DarkRP.createJob("Mizunoe du Serpent", {
    color = Color(5, 163, 68),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "MIZUNOE6",
    max = 0,
    salary = 150,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle du Serpent",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(700)
        ply:SetHealth(700)
        ply:SetMaxArmor(200)
		ply:SetArmor(200)
    end
})

-- KANOTO

TEAM_KANOTO_EAU = DarkRP.createJob("Kanoto de l'Eau", {
    color = Color(9, 228, 231),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "KANOTO1",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Eau",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(850)
        ply:SetHealth(850)
        ply:SetMaxArmor(220)
        ply:SetArmor(220)
    end
})

TEAM_KANOTO_AMOUR = DarkRP.createJob("Kanoto de l'Amour", {
    color = Color(127, 95, 0),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "KANOTO2",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Amour",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(850)
        ply:SetHealth(850)
        ply:SetMaxArmor(220)
        ply:SetArmor(220)
    end
})

TEAM_KANOTO_FLAMME = DarkRP.createJob("Kanoto de la Flamme", {
    color = Color(235, 73, 52),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "KANOTO3",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de la Flamme",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(850)
        ply:SetHealth(850)
        ply:SetMaxArmor(220)
        ply:SetArmor(220)
    end
})

TEAM_KANOTO_FOUDRE = DarkRP.createJob("Kanoto de la Foudre", {
    color = Color(235, 204, 7),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "KANOTO4",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de la Foudre",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(850)
        ply:SetHealth(850)
        ply:SetMaxArmor(220)
		ply:SetArmor(220)
    end
})

TEAM_KANOTO_INSECTE = DarkRP.createJob("Kanoto de l'Insecte", {
    color = Color(170, 6, 199),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "KANOTO5",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Insecte",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(850)
        ply:SetHealth(850)
        ply:SetMaxArmor(220)
		ply:SetArmor(220)
    end
})

TEAM_KANOTO_SERPENT = DarkRP.createJob("Kanoto du Serpent", {
    color = Color(5, 163, 68),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "KANOTO6",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle du Serpent",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(850)
        ply:SetHealth(850)
        ply:SetMaxArmor(220)
		ply:SetArmor(220)
    end
})

-- KANOE

TEAM_KANOE_EAU = DarkRP.createJob("Kanoe de l'Eau", {
    color = Color(9, 228, 231),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "KANOE1",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Eau",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_KANOE_AMOUR = DarkRP.createJob("Kanoe de l'Amour", {
    color = Color(127, 95, 0),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "KANOE2",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Amour",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_KANOE_FLAMME = DarkRP.createJob("Kanoe de la Flamme", {
    color = Color(235, 73, 52),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "KANOE3",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de la Flamme",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_KANOE_FOUDRE = DarkRP.createJob("Kanoe de la Foudre", {
    color = Color(235, 204, 7),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "KANOE4",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de la Foudre",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
		ply:SetArmor(240)
    end
})

TEAM_KANOE_INSECTE = DarkRP.createJob("Kanoe de l'Insecte", {
    color = Color(170, 6, 199),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "KANOE5",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Insecte",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
		ply:SetArmor(240)
    end
})

TEAM_KANOE_SERPENT = DarkRP.createJob("Kanoe du Serpent", {
    color = Color(5, 163, 68),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "KANOE6",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle du Serpent",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
		ply:SetArmor(240)
    end
})


-- TSUCHINOTO


TEAM_TSUCHINOTO_EAU = DarkRP.createJob("Tsuchinoto de l'Eau", {
    color = Color(9, 228, 231),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "TSUCHINOTO1",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Eau",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(950)
        ply:SetHealth(900)
        ply:SetMaxArmor(260)
        ply:SetArmor(260)
    end
})

TEAM_TSUCHINOTO_AMOUR = DarkRP.createJob("Tsuchinoto de l'Amour", {
    color = Color(127, 95, 0),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "TSUCHINOTO2",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Amour",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(950)
        ply:SetHealth(950)
        ply:SetMaxArmor(260)
        ply:SetArmor(260)
    end
})

TEAM_TSUCHINOTO_FLAMME = DarkRP.createJob("Tsuchinoto de la Flamme", {
    color = Color(235, 73, 52),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "TSUCHINOTO3",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de la Flamme",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(950)
        ply:SetHealth(950)
        ply:SetMaxArmor(260)
        ply:SetArmor(260)
    end
})

TEAM_TSUCHINOTO_FOUDRE = DarkRP.createJob("Tsuchinoto de la Foudre", {
    color = Color(235, 204, 7),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "TSUCHINOTO4",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de la Foudre",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(950)
        ply:SetHealth(950)
        ply:SetMaxArmor(260)
		ply:SetArmor(260)
    end
})

TEAM_TSUCHINOTO_INSECTE = DarkRP.createJob("Tsuchinoto de l'Insecte", {
    color = Color(170, 6, 199),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "TSUCHINOTO5",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Insecte",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(950)
        ply:SetHealth(950)
        ply:SetMaxArmor(260)
		ply:SetArmor(260)
    end
})

TEAM_TSUCHINOTO_SERPENT = DarkRP.createJob("Tsuchinoto du Serpent", {
    color = Color(5, 163, 68),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "TSUCHINOTO6",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle du Serpent",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(950)
        ply:SetHealth(950)
        ply:SetMaxArmor(260)
		ply:SetArmor(260)
    end
})

-- TSUCHINOE


TEAM_TSUCHINOE_EAU = DarkRP.createJob("Tsuchinoe de l'Eau", {
    color = Color(9, 228, 231),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "TSUCHINOE1",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Eau",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_TSUCHINOE_AMOUR = DarkRP.createJob("Tsuchinoe de l'Amour", {
    color = Color(127, 95, 0),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "TSUCHINOE2",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Amour",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_TSUCHINOE_FLAMME = DarkRP.createJob("Tsuchinoe de la Flamme", {
    color = Color(235, 73, 52),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "TSUCHINOE3",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de la Flamme",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_TSUCHINOE_FOUDRE = DarkRP.createJob("Tsuchinoe de la Foudre", {
    color = Color(235 , 204 , 7),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "TSUCHINOE4",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de la Foudre",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_TSUCHINOE_INSECTE = DarkRP.createJob("Tsuchinoe de l'Insecte", {
    color = Color(170, 6, 199),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "TSUCHINOE5",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Insecte",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_TSUCHINOE_SERPENT = DarkRP.createJob("Tsuchinoe du Serpent", {
    color = Color(5, 163, 68),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "TSUCHINOE6",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle du Serpent",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})


-- HINOTO


TEAM_HINOTO_EAU = DarkRP.createJob("Hinoto de l'Eau", {
    color = Color(9, 228, 231),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "HINOTO1",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Eau",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_HINOTO_AMOUR = DarkRP.createJob("Hinoto de l'Amour", {
    color = Color(127, 95, 0),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "HINOTO2",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Amour",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_HINOTO_FLAMME = DarkRP.createJob("Hinoto de la Flamme", {
    color = Color(235, 73, 52),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "HINOTO3",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de la Flamme",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_HINOTO_FOUDRE = DarkRP.createJob("Hinoto de la Foudre", {
    color = Color(235, 204, 7),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "HINOTO4",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de la Foudre",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_HINOTO_INSECTE = DarkRP.createJob("Hinoto de l'Insecte", {
    color = Color(170, 6, 199),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "HINOTO5",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Insecte",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_HINOTO_SERPENT = DarkRP.createJob("Hinoto du Serpent", {
    color = Color(5, 163, 68),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "HINOTO6",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle du Serpent",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})


-- HINOE


TEAM_HINOE_EAU = DarkRP.createJob("Hinoe de l'Eau", {
    color = Color(9, 228, 231),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "HINOE1",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Eau",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_HINOE_AMOUR = DarkRP.createJob("Hinoe de l'Amour", {
    color = Color(127, 95, 0),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "HINOE2",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Amour",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_HINOE_FLAMME = DarkRP.createJob("Hinoe de la Flamme", {
    color = Color(235, 73, 52),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "HINOE3",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de la Flamme",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_HINOE_FOUDRE = DarkRP.createJob("Hinoe de la Foudre", {
    color = Color(235, 204, 7),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "HINOE4",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de la Foudre",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_HINOE_INSECTE = DarkRP.createJob("Hinoe de l'Insecte", {
    color = Color(170, 6, 199),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "HINOE5",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Insecte",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_HINOE_SERPENT = DarkRP.createJob("Hinoe du Serpent", {
    color = Color(5, 163, 68),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "HINOE6",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle du Serpent",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})


-- KINOTO


TEAM_KINOTO_EAU = DarkRP.createJob("Kinoto de l'Eau", {
    color = Color(9, 228, 231),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "KINOTO1",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Eau",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_KINOTO_AMOUR = DarkRP.createJob("Kinoto de l'Amour", {
    color = Color(127, 95, 0),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "KINOTO2",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Amour",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_KINOTO_FLAMME = DarkRP.createJob("Kinoto de la Flamme", {
    color = Color(235, 73, 52),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "KINOTO3",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de la Flamme",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_KINOTO_FOUDRE = DarkRP.createJob("Kinoto de la Foudre", {
    color = Color(235, 204, 7),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "KINOTO4",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de la Foudre",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_KINOTO_INSECTE = DarkRP.createJob("Kinoto de l'Insecte", {
    color = Color(170, 6, 199),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "KINOTO5",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Insecte",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_KINOTO_SERPENT = DarkRP.createJob("Kinoto du Serpent", {
    color = Color(5, 163, 68),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "KINOTO6",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle du Serpent",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

-- KINOE


TEAM_KINOE_EAU = DarkRP.createJob("Kinoe de l'Eau", {
    color = Color(9, 228, 231),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "KINOE1",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Eau",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_KINOE_AMOUR = DarkRP.createJob("Kinoe de l'Amour", {
    color = Color(127, 95, 0),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "KINOE2",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Amour",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_KINOE_FLAMME = DarkRP.createJob("Kinoe de la Flamme", {
    color = Color(235, 73, 52),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "KINOE3",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de la Flamme",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_KINOE_FOUDRE = DarkRP.createJob("Kinoe de la Foudre", {
    color = Color(235, 204, 7),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "KINOE4",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de la Foudre",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_KINOE_INSECTE = DarkRP.createJob("Kinoe de l'Insecte", {
    color = Color(170, 6, 199),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "KINOE5",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Insecte",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_KINOE_SERPENT = DarkRP.createJob("Kinoe du Serpent", {
    color = Color(5, 163, 68),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/kisatsutai_male.mdl",
        "models/yufu/oldjimmy/demonslayer/custom/kisatsutai_female.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "KINOE6",
    max = 0,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle du Serpent",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})


-- PILIER


TEAM_PILIER_EAU = DarkRP.createJob("Pilier de l'Eau", {
    color = Color(9, 228, 231),
    model = {
        "models/yufu/oldjimmy/demonslayer/canon/giyu_tomioka.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "PILIER1",
    max = 0,
    salary = 600,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Eau",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(7000)
        ply:SetHealth(7000)
        ply:SetMaxArmor(1000)
        ply:SetArmor(1000)
    end
})

TEAM_PILIER_AMOUR = DarkRP.createJob("Pilier de l'Amour", {
    color = Color(127, 95, 0),
    model = {
        "models/yufu/oldjimmy/demonslayer/canon/mitsuri_kanroji.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "PILIER2",
    max = 0,
    salary = 600,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Amour",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(7000)
        ply:SetHealth(7000)
        ply:SetMaxArmor(1000)
        ply:SetArmor(1000)
    end
})

TEAM_PILIER_FLAMME = DarkRP.createJob("Pilier de la Flamme", {
    color = Color(235, 73, 52),
    model = {
        "models/yufu/oldjimmy/demonslayer/canon/kyojuro_rengoku.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "PILIER3",
    max = 0,
    salary = 600,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de la Flamme",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(7000)
        ply:SetHealth(7000)
        ply:SetMaxArmor(1000)
        ply:SetArmor(1000)
    end
})

TEAM_PILIER_FOUDRE = DarkRP.createJob("Pilier de la Foudre", {
    color = Color( 235 , 204 , 7 ),
    model = {
        "models/yufu/oldjimmy/demonslayer/canon/zenitsu_agatsuma.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "PILIER4",
    max = 0,
    salary = 600,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de la Foudre",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(7000)
        ply:SetHealth(7000)
        ply:SetMaxArmor(1000)
		ply:SetArmor(1000)
    end
})

TEAM_PILIER_INSECTE = DarkRP.createJob("Pilier de l'Insecte", {
    color = Color(170, 6, 199),
    model = {
        "models/yufu/oldjimmy/demonslayer/canon/shinobu_kocho.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "PILIER5",
    max = 0,
    salary = 600,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle de l'Insecte",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(7000)
        ply:SetHealth(7000)
        ply:SetMaxArmor(1000)
		ply:SetArmor(1000)
    end
})

TEAM_PILIER_SERPENT = DarkRP.createJob("Pilier du Serpent", {
    color = Color(5, 163, 68),
    model = {
        "models/yufu/oldjimmy/demonslayer/canon/obanai_iguro_nomask.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanaordinaire"},
    command = "PILIER6",
    max = 0,
    salary = 600,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Pourfendeurs - Souffle du Serpent",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(7000)
        ply:SetHealth(7000)
        ply:SetMaxArmor(1000)
		ply:SetArmor(1000)
    end
})













-- MAITRE POURF

TEAM_MAITRE_POURF = DarkRP.createJob("Maitre Pourf", {
    color = Color(63, 79, 127, 255),
    model = {
		"models/yufu/oldjimmy/demonslayer/canon/kagaya_uyabishiki.mdl",
    },
    description = [[Izumi Carry]],
    weapons = {"key", "katanaordinaire"},
    command = "MAITRE",
    max = 1,
    salary = 5000,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Maitre",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(20000)
        ply:SetHealth(20000)
        ply:SetMaxArmor(10000)
		ply:SetArmor(10000)
    end
})

TEAM_HERITIER_POURF = DarkRP.createJob("Heritier", {
    color = Color(63, 79, 127, 255),
    model = {
		"models/yufu/oldjimmy/demonslayer/canon/kagaya_uyabishiki.mdl",
    },
    description = [[Izumi Carry]],
    weapons = {"key", "katanaordinaire"},
    command = "HERI",
    max = 1,
    salary = 5000,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Maitre",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(13000)
        ply:SetHealth(13000)
        ply:SetMaxArmor(5000)
		ply:SetArmor(5000)
    end
})

TEAM_CONSEILLER = DarkRP.createJob("Conseiller du Maitre", {
    color = Color(127, 63, 111, 255),
    model = {
        "models/yufu/oldjimmy/demonslayer/oc/yasu_normokentro.mdl"
    },
    description = [[tu es le conseiller du maitre.]],
    weapons = {"key", "katanaordinaire"},
    command = "CONSEILLER",
    max = 2,
    salary = 5000,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Maitre",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(12500)
        ply:SetHealth(12500)
        ply:SetMaxArmor(3000)
		ply:SetArmor(3000)
    end
})

------------------------------------------ DEMON

--- RANG E

TEAM_DEMON_E_ROSE = DarkRP.createJob("Demon de rang E Rose", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONEROSE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Rose",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(500)
        ply:SetHealth(500)
        ply:SetMaxArmor(100)
        ply:SetArmor(100)
    end
})

TEAM_DEMON_E_HAINE = DarkRP.createJob("Demon de rang E Haine", {
    color = Color(153, 19, 19, 255),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONEHAINE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Haine",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(500)
        ply:SetHealth(500)
        ply:SetMaxArmor(100)
        ply:SetArmor(100)
    end
})

TEAM_DEMON_E_MAGMA = DarkRP.createJob("Demon de rang E Magma", {
    color = Color(153, 19, 19, 255),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONEMAGMA",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Magma",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(500)
        ply:SetHealth(500)
        ply:SetMaxArmor(100)
        ply:SetArmor(100)
    end
})

TEAM_DEMON_E_TONNERRE = DarkRP.createJob("Demon de rang E Tonnerre", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONETONNERRE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Tonnerre",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(500)
        ply:SetHealth(500)
        ply:SetMaxArmor(100)
        ply:SetArmor(100)
    end
})

TEAM_DEMON_E_LARMES = DarkRP.createJob("Demon de rang E Larmes", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONELARMES",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Larmes",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(500)
        ply:SetHealth(500)
        ply:SetMaxArmor(100)
        ply:SetArmor(100)
    end
})

TEAM_DEMON_E_COBRA = DarkRP.createJob("Demon de rang E Cobra", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONECOBRA",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Cobra",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(500)
        ply:SetHealth(500)
        ply:SetMaxArmor(100)
        ply:SetArmor(100)
    end
})

-- RANG D

TEAM_DEMON_D_ROSE = DarkRP.createJob("Demon de rang D Rose", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONDROSE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Rose",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(700)
        ply:SetHealth(700)
        ply:SetMaxArmor(200)
        ply:SetArmor(200)
    end
})

TEAM_DEMON_D_HAINE = DarkRP.createJob("Demon de rang D Haine", {
    color = Color(153, 19, 19, 255),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONDHAINE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Haine",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(700)
        ply:SetHealth(700)
        ply:SetMaxArmor(200)
        ply:SetArmor(200)
    end
})

TEAM_DEMON_D_MAGMA = DarkRP.createJob("Demon de rang D Magma", {
    color = Color(153, 19, 19, 255),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONDMAGMA",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Magma",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(700)
        ply:SetHealth(700)
        ply:SetMaxArmor(200)
        ply:SetArmor(200)
    end
})

TEAM_DEMON_D_TONNERRE = DarkRP.createJob("Demon de rang D Tonnerre", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONDTONNERRE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Tonnerre",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(700)
        ply:SetHealth(700)
        ply:SetMaxArmor(200)
        ply:SetArmor(200)
    end
})

TEAM_DEMON_D_LARMES = DarkRP.createJob("Demon de rang D Larmes", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONDLARMES",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Larmes",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(700)
        ply:SetHealth(700)
        ply:SetMaxArmor(200)
        ply:SetArmor(200)
    end
})

TEAM_DEMON_D_COBRA = DarkRP.createJob("Demon de rang D Cobra", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONDCOBRA",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Cobra",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(700)
        ply:SetHealth(700)
        ply:SetMaxArmor(200)
        ply:SetArmor(200)
    end
})

--- RANG C

TEAM_DEMON_C_ROSE = DarkRP.createJob("Demon de rang C Rose", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONCROSE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Rose",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(850)
        ply:SetHealth(850)
        ply:SetMaxArmor(220)
        ply:SetArmor(220)
    end
})

TEAM_DEMON_C_HAINE = DarkRP.createJob("Demon de rang C Haine", {
    color = Color(153, 19, 19, 255),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONCHAINE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Haine",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(850)
        ply:SetHealth(850)
        ply:SetMaxArmor(220)
        ply:SetArmor(220)
    end
})

TEAM_DEMON_C_MAGMA = DarkRP.createJob("Demon de rang C Magma", {
    color = Color(153, 19, 19, 255),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONCMAGMA",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Magma",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(850)
        ply:SetHealth(850)
        ply:SetMaxArmor(220)
        ply:SetArmor(220)
    end
})

TEAM_DEMON_C_TONNERRE = DarkRP.createJob("Demon de rang C Tonnerre", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONCTONNERRE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Tonnerre",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(850)
        ply:SetHealth(850)
        ply:SetMaxArmor(220)
        ply:SetArmor(220)
    end
})

TEAM_DEMON_C_LARMES = DarkRP.createJob("Demon de rang C Larmes", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONCLARMES",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Larmes",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(850)
        ply:SetHealth(850)
        ply:SetMaxArmor(220)
        ply:SetArmor(220)
    end
})

TEAM_DEMON_C_COBRA = DarkRP.createJob("Demon de rang C Cobra", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONCCOBRA",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Cobra",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(850)
        ply:SetHealth(850)
        ply:SetMaxArmor(220)
        ply:SetArmor(220)
    end
})

-- RANG B

TEAM_DEMON_B_ROSE = DarkRP.createJob("Demon de rang B Rose", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONBROSE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Rose",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_B_HAINE = DarkRP.createJob("Demon de rang B Haine", {
    color = Color(153, 19, 19, 255),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONBHAINE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Haine",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_B_MAGMA = DarkRP.createJob("Demon de rang B Magma", {
    color = Color(153, 19, 19, 255),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONBMAGMA",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Magma",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_B_TONNERRE = DarkRP.createJob("Demon de rang B Tonnerre", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONBTONNERRE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Tonnerre",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_B_LARMES = DarkRP.createJob("Demon de rang B Larmes", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONBLARMES",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Larmes",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_B_COBRA = DarkRP.createJob("Demon de rang B Cobra", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONBCOBRA",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Cobra",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})


-- RANG A


TEAM_DEMON_A_ROSE = DarkRP.createJob("Demon de rang A Rose", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONAROSE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Rose",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_A_HAINE = DarkRP.createJob("Demon de rang A Haine", {
    color = Color(153, 19, 19, 255),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONAHAINE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Haine",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_A_MAGMA = DarkRP.createJob("Demon de rang A Magma", {
    color = Color(153, 19, 19, 255),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONAMAGMA",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Magma",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_A_TONNERRE = DarkRP.createJob("Demon de rang A Tonnerre", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONATONNERRE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Tonnerre",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_A_LARMES = DarkRP.createJob("Demon de rang A Larmes", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONALARMES",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Larmes",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_A_COBRA = DarkRP.createJob("Demon de rang A Cobra", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONACOBRA",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Cobra",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})


-- RANG A+


TEAM_DEMON_AA_ROSE = DarkRP.createJob("Demon de rang A+ Rose", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONAAROSE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Rose",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_AA_HAINE = DarkRP.createJob("Demon de rang A+ Haine", {
    color = Color(153, 19, 19, 255),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONAAHAINE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Haine",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_AA_MAGMA = DarkRP.createJob("Demon de rang A+ Magma", {
    color = Color(153, 19, 19, 255),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONAAMAGMA",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Magma",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_AA_TONNERRE = DarkRP.createJob("Demon de rang A+ Tonnerre", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONAATONNERRE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Tonnerre",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_AA_LARMES = DarkRP.createJob("Demon de rang A+ Larmes", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONAALARMES",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Larmes",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_AA_COBRA = DarkRP.createJob("Demon de rang A+ Cobra", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONAACOBRA",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Cobra",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})


-- RANG S


TEAM_DEMON_S_ROSE = DarkRP.createJob("Demon de rang S Rose", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONSROSE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Rose",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_S_HAINE = DarkRP.createJob("Demon de rang S Haine", {
    color = Color(153, 19, 19, 255),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONSHAINE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Haine",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_S_MAGMA = DarkRP.createJob("Demon de rang S Magma", {
    color = Color(153, 19, 19, 255),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONSMAGMA",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Magma",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_S_TONNERRE = DarkRP.createJob("Demon de rang S Tonnerre", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONSTONNERRE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Tonnerre",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_S_LARMES = DarkRP.createJob("Demon de rang S Larmes", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONSLARMES",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Larmes",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_S_COBRA = DarkRP.createJob("Demon de rang S Cobra", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONSCOBRA",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Cobra",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})


-- RANG S+


TEAM_DEMON_SS_ROSE = DarkRP.createJob("Demon de rang S+ Rose", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONSSROSE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Rose",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_SS_HAINE = DarkRP.createJob("Demon de rang S+ Haine", {
    color = Color(153, 19, 19, 255),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONSSHAINE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Haine",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_SS_MAGMA = DarkRP.createJob("Demon de rang S+ Magma", {
    color = Color(153, 19, 19, 255),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONSSMAGMA",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Magma",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_SS_TONNERRE = DarkRP.createJob("Demon de rang S+ Tonnerre", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONSSTONNERRE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Tonnerre",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_SS_LARMES = DarkRP.createJob("Demon de rang S+ Larmes", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONSSLARMES",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Larmes",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_SS_COBRA = DarkRP.createJob("Demon de rang S+ Cobra", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONSSCOBRA",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Cobra",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})


-- RANG Z


TEAM_DEMON_Z_ROSE = DarkRP.createJob("Demon de rang Z Rose", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONZROSE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Rose",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_Z_HAINE = DarkRP.createJob("Demon de rang Z Haine", {
    color = Color(153, 19, 19, 255),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONZHAINE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Haine",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_Z_MAGMA = DarkRP.createJob("Demon de rang Z Magma", {
    color = Color(153, 19, 19, 255),
    model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONZMAGMA",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Magma",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_Z_TONNERRE = DarkRP.createJob("Demon de rang Z Tonnerre", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONZTONNERRE",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Tonnerre",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_Z_LARMES = DarkRP.createJob("Demon de rang Z Larmes", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONZLARMES",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire de la Larmes",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})

TEAM_DEMON_Z_COBRA = DarkRP.createJob("Demon de rang Z Cobra", {
    color = Color(153, 19, 19, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "DEMONZCOBRA",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demons - Pouvoir sanguinaire du Cobra",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(900)
        ply:SetHealth(900)
        ply:SetMaxArmor(240)
        ply:SetArmor(240)
    end
})


-- LUNE INF


TEAM_LUNE_IF_6 = DarkRP.createJob("Lune Inferieur 6", {
    color = Color(255, 0, 0, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m1.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "LUNEIF6",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Lune Inferieure",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(6000)
        ply:SetHealth(6000)
        ply:SetMaxArmor(700)
        ply:SetArmor(700)
    end
})

TEAM_LUNE_IF_5 = DarkRP.createJob("Lune Inferieur 5", {
    color = Color(255, 0, 0, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m1.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "LUNEIF5",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Lune Inferieure",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(6100)
        ply:SetHealth(6100)
        ply:SetMaxArmor(700)
        ply:SetArmor(700)
    end
})

TEAM_LUNE_IF_4 = DarkRP.createJob("Lune Inferieur 4", {
    color = Color(255, 0, 0, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m1.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "LUNEIF4",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Lune Inferieure",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(6200)
        ply:SetHealth(6200)
        ply:SetMaxArmor(900)
        ply:SetArmor(900)
    end
})

TEAM_LUNE_IF_3 = DarkRP.createJob("Lune Inferieur 3", {
    color = Color(255, 0, 0, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m1.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "LUNEIF3",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Lune Inferieure",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(6500)
        ply:SetHealth(6300)
        ply:SetMaxArmor(1000)
        ply:SetArmor(1000)
    end
})

TEAM_LUNE_IF_2 = DarkRP.createJob("Lune Inferieur 2", {
    color = Color(255, 0, 0, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m1.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "LUNEIF2",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Lune Inferieure",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(6400)
        ply:SetHealth(6400)
        ply:SetMaxArmor(1100)
        ply:SetArmor(1100)
    end
})

TEAM_LUNE_IF_1 = DarkRP.createJob("Lune Inferieur 1", {
    color = Color(255, 0, 0, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m1.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "LUNEIF1",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Lune Inferieure",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(6500)
        ply:SetHealth(6500)
        ply:SetMaxArmor(1200)
        ply:SetArmor(1200)
    end
})

-- LUNE SUP

TEAM_NAKI = DarkRP.createJob("Nakime", {
    color = Color(255, 0, 0, 255),
   model = {
		"models/oldjimmy/demonslayer/canon/nakime.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "NAKI",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Lune Superieure",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(12000)
        ply:SetHealth(12000)
        ply:SetMaxArmor(2000)
        ply:SetArmor(2000)
    end
})

TEAM_LUNE_SUP_6 = DarkRP.createJob("Lune Superieur 6", {
    color = Color(255, 0, 0, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/canon/gutaro.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "LUNESUP6",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Lune Superieure",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(8500)
        ply:SetHealth(8500)
        ply:SetMaxArmor(2000)
        ply:SetArmor(2000)
    end
})

TEAM_LUNE_SUP_5 = DarkRP.createJob("Lune Superieur 5", {
    color = Color(255, 0, 0, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/canon/zohakuten.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "LUNESUP5",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Lune Superieure",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(10000)
        ply:SetHealth(10000)
        ply:SetMaxArmor(2000)
        ply:SetArmor(2000)
    end
})

TEAM_LUNE_SUP_4 = DarkRP.createJob("Lune Superieur 4", {
    color = Color(255, 0, 0, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/canon/kaigaku.mdl"
    },
    description = [[...]],
    weapons = {"key"},
    command = "LUNESUP4",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Lune Superieure",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(12000)
        ply:SetHealth(12000)
        ply:SetMaxArmor(2000)
        ply:SetArmor(2000)
    end
})

TEAM_LUNE_SUP_3 = DarkRP.createJob("Lune Superieur 3", {
    color = Color(255, 0, 0, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m1.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "LUNESUP3",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Lune Superieure",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(16000)
        ply:SetHealth(16000)
        ply:SetMaxArmor(8000)
        ply:SetArmor(8000)
    end
})

TEAM_LUNE_SUP_2 = DarkRP.createJob("Lune Superieur 2", {
    color = Color(255, 0, 0, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m1.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "LUNESUP2",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Lune Superieure",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(18000)
        ply:SetHealth(18000)
        ply:SetMaxArmor(9000)
        ply:SetArmor(9000)
    end
})

TEAM_LUNE_SUP_1 = DarkRP.createJob("Lune Superieur 1", {
    color = Color(255, 0, 0, 255),
   model = {
		"models/yufu/oldjimmy/demonslayer/custom/demon_m1.mdl"
    },
    description = [[...]],
    weapons = {"key", "katanademonbasique"},
    command = "LUNESUP1",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Lune Superieure",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(20000)
        ply:SetHealth(20000)
        ply:SetMaxArmor(10000)
        ply:SetArmor(10000)
    end
})

-- MUZAN

TEAM_ORIGINEL = DarkRP.createJob( "Muzan" , {
    color = Color( 153 , 19 , 19 , 255 ),
    model = {
		"models/yufu/oldjimmy/demonslayer/canon/muzan.mdl"
    },
    description = [[Bien vu Newin]],
    weapons = {"key", "katanademonbasique"},
    command = "ORIGINEL",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Demon Originel",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(50000)
        ply:SetHealth(50000)
		ply:SetMaxArmor(25000)
        ply:SetArmor(25000)
    end
})

GAMEMODE.DefaultTeam = TEAM_CITOYEN