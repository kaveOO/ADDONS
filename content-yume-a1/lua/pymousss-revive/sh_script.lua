-- variable global, touche et tu deviens moche ( PD )
DSConfig = DSConfig or {}
DSConfig.ReleveMod = DSConfig.ReleveMod or {}

--[[ BASE ]]----------------------------------------------------------------------------------------------------------------------------]

-- Temps avant de remove le cadavre du joueur : ( seconde )
DSConfig.ReleveMod.TimerCorps = 120
-- Distance entre le joueur et le corps pour ouvrir le menu
DSConfig.ReleveMod.DistanceUse = 100
-- Touche pour ouvrir le menu si le joueur est à la bonne distance :( https://wiki.facepunch.com/gmod/Enums/IN )
DSConfig.ReleveMod.BindOpen = IN_USE
-- Temps avant de remove l'env_fire et le corps quand le joueur et kill :
DSConfig.ReleveMod.TimerKill = 5

--[[ JOUEUR ]]--------------------------------------------------------------------------------------------------------------------------]

-- Set le joueur à combien d'HP : ( Fonctionnement en pourcentage )
DSConfig.ReleveMod.SetHP = 10

--[[ ENV_FIRE ]]------------------------------------------------------------------------------------------------------------------------]

-- Taille du feu ( Effet visuel )
DSConfig.ReleveMod.SizeFire = 100

----------------------------------------------------------------------------------------------------------------------------------------]