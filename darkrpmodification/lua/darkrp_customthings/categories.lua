--[[-----------------------------------------------------------------------
Categories
---------------------------------------------------------------------------
The categories of the default F4 menu.

Please read this page for more information:
http://wiki.darkrp.com/index.php/DarkRP:Categories

In case that page can't be reached, here's an example with explanation:

DarkRP.createCategory{
    name = "Citizens", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(0, 107, 0, 255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 100, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}


Add new categories under the next line!
---------------------------------------------------------------------------]]
DarkRP.createCategory{
    name = "Maitre",
    categorises = "jobs",
    startExpanded = true,
    color = Color(9, 228, 231),
    canSee = function(ply) return true end,
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Demons - Pouvoir sanguinaire du Tonnerre",
    categorises = "jobs",
    startExpanded = true,
    color = Color(235, 204, 7),
    canSee = function(ply) return true end,
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Demons - Pouvoir sanguinaire de la Haine",
    categorises = "jobs",
    startExpanded = true,
    color = Color(2, 87, 34),
    canSee = function(ply) return true end,
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Demons - Pouvoir sanguinaire du Cobra",
    categorises = "jobs",
    startExpanded = true,
    color = Color(5, 163, 68),
    canSee = function(ply) return true end,
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Demons - Pouvoir sanguinaire de la Rose",
    categorises = "jobs",
    startExpanded = true,
    color = Color(170, 6, 199),
    canSee = function(ply) return true end,
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Demons - Pouvoir sanguinaire du Magma",
    categorises = "jobs",
    startExpanded = true,
    color = Color(235, 73, 52),
    canSee = function(ply) return true end,
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Demons - Pouvoir sanguinaire de la Larmes",
    categorises = "jobs",
    startExpanded = true,
    color = Color(9, 228, 231),
    canSee = function(ply) return true end,
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Pourfendeurs - Souffle de l'Eau",
    categorises = "jobs",
    startExpanded = true,
    color = Color(9, 228, 231),
    canSee = function(ply) return true end,
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Pourfendeurs - Souffle de la Flamme",
    categorises = "jobs",
    startExpanded = true,
    color = Color(235, 73, 52),
    canSee = function(ply) return true end,
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Pourfendeurs - Souffle de l'Insecte",
    categorises = "jobs",
    startExpanded = true,
    color = Color(170, 6, 199),
    canSee = function(ply) return true end,
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Pourfendeurs - Souffle du Serpent",
    categorises = "jobs",
    startExpanded = true,
    color = Color(5, 163, 68),
    canSee = function(ply) return true end,
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Pourfendeurs - Souffle de la Foudre",
    categorises = "jobs",
    startExpanded = true,
    color = Color(235, 204, 7),
    canSee = function(ply) return true end,
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Pourfendeurs - Souffle de l'Amour",
    categorises = "jobs",
    startExpanded = true,
    color = Color(255, 0, 230),
    canSee = function(ply) return true end,
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Hybride",
    categorises = "jobs",
    startExpanded = true,
    color = Color(2, 87, 34),
    canSee = function(ply) return true end,
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Citoyens",
    categorises = "jobs",
    startExpanded = true,
    color = Color(237, 158, 0),
    canSee = function(ply) return true end,
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Aspirant/Jeune Demon",
    categorises = "jobs",
    startExpanded = true,
    color = Color(158, 88, 224),
    canSee = function(ply) return true end,
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Lune Superieure",
    categorises = "jobs",
    startExpanded = true,
    color = Color(185, 189, 187),
    canSee = function(ply) return true end,
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Lune Inferieure",
    categorises = "jobs",
    startExpanded = true,
    color = Color(185, 189, 187),
    canSee = function(ply) return true end,
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Demon Originel",
    categorises = "jobs",
    startExpanded = true,
    color = Color(255, 0, 43),
    canSee = function(ply) return true end,
    sortOrder = 100,
}