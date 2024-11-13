Arkonfig = Arkonfig || {}

Arkonfig.Aura = {}

Arkonfig.Aura.NarrationCommand = "/advert" -- La commande de narration

Arkonfig.Aura.Narrations = {
    [ "Demon" ] = { -- Narrations des démons
        [ "Activer" ] = "Une aura dévastatrice se fait ressentir.", -- Quand un démon active son aura
        [ "Desactiver" ] = "Une aura dévastatrice se dissipe." -- Quand un démon désactive son aura
    },

    [ "Demonsup" ] = { -- Narrations des démons
    [ "Activer" ] = "Une aura divine se fait ressentir.", -- Quand un démon active son aura
    [ "Desactiver" ] = "Une aura divine se dissipe." -- Quand un démon désactive son aura
},

[ "Demonorig" ] = { -- Narrations des démons
[ "Activer" ] = "Une aura infinie se fait ressentir.", -- Quand un démon active son aura
[ "Desactiver" ] = "Une aura infinie se dissipe." -- Quand un démon désactive son aura
},
    [ "Pourfendeur" ] = { -- Narrations des pourfendeurs
        [ "Activer" ] = "Une aura puissante se fait ressentir.", -- Quand un pourfendeur active son aura
        [ "Desactiver" ] = "Une aura puissante se dissipe." -- Quand un pourfendeur désactive son aura
    }
}

hook.Add( "PostGamemodeLoaded", "AVAURA:LoadJobsConfig", function()
    Arkonfig.Aura.JobsAura = { -- Les jobs ayant l'accès aux auras, leur couleur et leur faction
        -- [ TEAM_METIER ] = { faction = "Pourfendeur ou Demon", color = Color( r, g, b ) },
 [ TEAM_LUNE_SUP_1 ] = { faction = "Demonsup", color = Color(255,0,0) },
 [ TEAM_LUNE_SUP_2 ] = { faction = "Demonsup", color = Color(128, 0, 0) },
 [ TEAM_LUNE_SUP_3 ] = { faction = "Demonsup", color = Color(128, 0, 0) },
 [ TEAM_LUNE_SUP_4 ] = { faction = "Demonsup", color = Color(128, 0, 0) },
 [ TEAM_LUNE_SUP_5 ] = { faction = "Demonsup", color = Color(128, 0, 0) },
 [ TEAM_LUNE_SUP_6 ] = { faction = "Demonsup", color = Color(128, 0, 0) },
 [ TEAM_ORIGINEL ] = { faction = "Demonorig", color = Color(255,0,0) },
 [ TEAM_LUNE_IF_1 ] = { faction = "Demon", color = Color(128, 0, 0) },
 [ TEAM_LUNE_IF_2 ] = { faction = "Demon", color = Color(128, 0, 0) },
 [ TEAM_LUNE_IF_3 ] = { faction = "Demon", color = Color(128, 0, 0) },
 [ TEAM_LUNE_IF_4 ] = { faction = "Demon", color = Color(128, 0, 0) },
 [ TEAM_LUNE_IF_5 ] = { faction = "Demon", color = Color(128, 0, 0) },
 [ TEAM_LUNE_IF_6 ] = { faction = "Demon", color = Color(128, 0, 0) },
 [ TEAM_PILIER_EAU ] = { faction = "Pourfendeur", color = Color(30,144,255) },
 [ TEAM_PILIER_FOUDRE ] = { faction = "Pourfendeur", color = Color(255,255,0) },
 [ TEAM_PILIER_AMOUR ] = { faction = "Pourfendeur", color = Color(217,0,255) },
 [ TEAM_PILIER_INSECTE ] = { faction = "Pourfendeur", color = Color(138,43,226) },
 [ TEAM_PILIER_FLAMME ] = { faction = "Pourfendeur", color = Color(139,0,0) },
 [ TEAM_PILIER_SERPENT ] = { faction = "Pourfendeur", color = Color(0,181,26) },
 [ TEAM_KINOE_EAU ] = { faction = "Pourfendeur", color = Color(30,144,255) },
 [ TEAM_KINOE_FOUDRE ] = { faction = "Pourfendeur", color = Color(255,255,0) },
 [ TEAM_KINOE_AMOUR ] = { faction = "Pourfendeur", color = Color(217,0,255) },
 [ TEAM_KINOE_INSECTE ] = { faction = "Pourfendeur", color = Color(138,43,226) },
 [ TEAM_KINOE_FLAMME ] = { faction = "Pourfendeur", color = Color(139,0,0) },
 [ TEAM_KINOE_SERPENT ] = { faction = "Pourfendeur", color = Color(0,181,26) },
 
    }
end )