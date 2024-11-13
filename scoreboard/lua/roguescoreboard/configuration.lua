RogueScoreboard.Configuration = {}

local Configuration = RogueScoreboard.Configuration

// M A I N   C O N F I G U R A T I O N S

Configuration.ServerTitle           = "SunAndMoon Community"
Configuration.DarkRP                = true
Configuration.SortByCategories      = true
Configuration.AdministrationMod     = "sam"
Configuration.InformationViewAll    = true
Configuration.InformationView       = { "modo-test" , "modo" , "Animateur" , "administrateur-test" , "admin" , "gerant-communautaire" , "Super Admin+" , "superadmin" }
Configuration.ShowOnlineCount       = true
Configuration.InformationBar        = true
Configuration.InformationBackground = false
Configuration.ShowName              = true
Configuration.ShowTeam              = true
Configuration.ShowRank              = true
Configuration.SteamName             = false

// R E P O R T  S Y S T E M ( N E W  )

Configuration.ReportEnabled         = true
Configuration.UsingReportAddon      = false
Configuration.ReportAddonPrefix     = "///"
Configuration.UsingReportSite       = false
Configuration.ReportURL             = ""
Configuration.ReportPrefix          = "@"
Configuration.ReportedText          = "Bonjour j'aimerais report ce joueur "

// T H E M E

Configuration.MainBackground        = Color( 19 ,20 ,21 ,246 )
Configuration.PanelBackground       = Color( 24 , 25 , 26 , 210 )
Configuration.ServerTitleColor      = Color( 255 ,255 ,255 )
Configuration.NameHover             = Color( 0 , 190 , 255 )
Configuration.Friends               = Color( 0 , 170 ,255 )
Configuration.Muted                 = Color( 255 , 190 , 0 )
Configuration.ClearProps            = Color( 255 , 190 , 0 )
Configuration.ClearPropsHover       = Color( 255 , 70 , 0 )
Configuration.ReportColor           = Color( 255 , 190 , 0 )
Configuration.ReportHoverColor      = Color( 255 , 70 , 0 )
Configuration.IconsDarkColor        = Color( 121 , 122 , 123 )
Configuration.PingFull              = Color( 0 , 255 , 0 )
Configuration.Ping3                 = Color( 250 , 255 , 0 )
Configuration.Ping2                 = Color( 255 , 155 , 0 )
Configuration.PingCritical          = Color( 255 , 100 , 0 )
Configuration.UndercoverIcon        = Color( 121 , 122 , 123 )
Configuration.IsUndercoverIcon      = Color( 0 , 160 , 255 )

// L A N G U A G E

Configuration.NameText              = "NOM" 
Configuration.JobText               = "METIER" 
Configuration.KillsText             = "K" 
Configuration.DeathsText            = "D"
Configuration.ClearPropText         = "SUPPRIMER PROPS"
Configuration.MuteText              = "MUTE"
Configuration.UnMuteText            = "UN-MUTE"
Configuration.ReportText            = "SIGNALER"
Configuration.TargetSelfCheck       = "Vous ne pouvez pas vous cibler."
Configuration.CommandCopy           = "COPIER STEAM ID & STEAM 64"
Configuration.CommandGoto           = "GOTO"
Configuration.CommandBring          = "BRING"
Configuration.CommandSpectate       = "SPECTATE"
Configuration.CommandBringFreeze    = "TP & FREEZE"
Configuration.CommandKick           = "KICK"
Configuration.CommandKickReason     = "Vous avez était kick !"
Configuration.CommandBan            = "BAN"
Configuration.CommandBanReason      = "Vous avez était banni !"
Configuration.PropText              = "PROPS"
Configuration.ActivateIncog         = "ESPION"
Configuration.DeactivateIncog       = "DESACTIVER"
Configuration.CurrentPlayersText    = "Joueurs connectés"

// C U S T O M  T A G S

Configuration.CustomUserTag = {}
Configuration.CustomUserTag["STEAM_0:1:506907342"] = { Tag = "Simple développeur Glua" , TagColor = Color( 121 , 122 , 123 ) }

// R A N K   S E L E C T I O N 

Configuration.RankDisplay = {}
Configuration.RankDisplay["user"] = { DisplayName = "Joueur", TagName = "Joueur", DisplayColor = Color( 255 , 255 , 255 ), TagColor = Color( 121 , 122 , 123 ) }
Configuration.RankDisplay["Saphir"] = { DisplayName = "Saphir", TagName = "Saphir", DisplayColor = Color( 0 , 0 , 204 ), TagColor = Color( 251 , 255 , 15 ) }
Configuration.RankDisplay["Diamant"] = { DisplayName = "Diamant", TagName = "Diamant", DisplayColor = Color( 102 , 178 , 255 ), TagColor = Color( 255 , 151 , 15 ) }
Configuration.RankDisplay["modo-test"] = { DisplayName = "Modérateur - Test", TagName = "Modérateur - Test", DisplayColor = Color( 0 , 255 , 0 ), TagColor = Color( 15 , 255 , 163 ) }
Configuration.RankDisplay["modo"] = { DisplayName = "Modérateur", TagName = "Modérateur", DisplayColor = Color( 0 , 102 , 0 ), TagColor = Color( 77 , 208 , 225 ) }
Configuration.RankDisplay["Animateur"] = { DisplayName = "Animateur", TagName = "Animateur", DisplayColor = Color( 15 , 87 , 255 ), TagColor = Color( 15 , 87 , 255 ) }  
Configuration.RankDisplay["admin"]      = { DisplayName = "administrateur", TagName = "Administrateur", DisplayColor = Color( 255 , 255 , 0 ), TagColor = Color( 255 , 15 , 211 ) }
Configuration.RankDisplay["Crystal"]          = { DisplayName = "Crystal", TagName = "Crystal", DisplayColor = Color( 255 , 255 , 255 ), TagColor = Color( 255 , 0 , 0 ) }
Configuration.RankDisplay["AdminSA"]          = { DisplayName = "Super-Admin", TagName = "SA", DisplayColor = Color( 251 , 55 , 55 ), TagColor = Color( 255 , 0 , 0 ) }
Configuration.RankDisplay["Superviseur"]          = { DisplayName = "Superviseur", TagName = "Sup", DisplayColor = Color( 102 , 0 , 0 ), TagColor = Color( 255 , 0 , 0 ) }
Configuration.RankDisplay["superadmin"]          = { DisplayName = "Fondateur", TagName = "Fondateur", DisplayColor = Color( 102 , 0 , 204 ), TagColor = Color( 255 , 0 , 0 ) }

// C O M M A N D  C O N F I G U R A T I O N

Configuration.PropAccess = { "modo-test" , "modo" , "Animateur" , "administrateur-test" , "admin" , "Superviseur" , "AdminSA" , "superadmin" }
Configuration.MenuAccess = { "modo-test" , "modo" , "Animateur" , "administrateur-test" , "admin" , "Superviseur" , "AdminSA" , "superadmin" }
Configuration.SeperateAccess = true
Configuration.AllowedGoto = { "modo-test" , "modo" , "Animateur" , "administrateur-test" , "admin" , "Superviseur" , "AdminSA" , "superadmin" }
Configuration.AllowedBring = { "modo-test" , "modo" , "Animateur" , "administrateur-test" , "admin" , "Superviseur" , "AdminSA" , "superadmin" }
Configuration.AllowedSpectate = { "modo-test" , "modo" , "Animateur" , "administrateur-test" , "admin" , "Superviseur" , "AdminSA" , "superadmin" }
Configuration.AllowedFreeze = { "modo-test" , "modo" , "Animateur" , "administrateur-test" , "admin" , "Superviseur" , "AdminSA" , "superadmin" }
Configuration.AllowedKick = { "modo-test" , "modo" , "Animateur" , "administrateur-test" , "admin" , "Superviseur" , "AdminSA" , "superadmin" }
Configuration.AllowedBan = { "administrateur-test" , "admin" , "Superviseur" , "responsable-serveur" , "superadmin" }
Configuration.CommandBanTime = 120

// U N D E R  C O V E R  M O D E

Configuration.IncognitoAccess       = { "user" , "modo-test" , "modo" , "Animateur" , "administrateur-test" , "admin" , "Superviseur" , "AdminSA" , "superadmin" }
Configuration.IncognitoVision       = { "user" , "modo-test" , "modo" , "Animateur" , "administrateur-test" , "admin" , "Superviseur" , "AdminSA" , "superadmin" }
Configuration.UseCustomIcon         = true
Configuration.LowestMoney           = 12732
Configuration.HighestMoney          = 67324
Configuration.LowestKills           = 0
Configuration.HighestKills          = 2
Configuration.LowestDeaths          = 0
Configuration.HighestDeaths         = 2
Configuration.UndercoverNames       = { "Inconnu" }

// A D M I N I S T R A T I O N  P R E F I X

// U L X

Configuration.Administration = {}
Configuration.Administration["ulx"] = {}
Configuration.Administration["ulx"].goto = function(cmdPly)
    RunConsoleCommand("ulx", "goto", cmdPly:Nick())
end

Configuration.Administration["ulx"].bring = function(cmdPly)
    RunConsoleCommand("ulx", "bring", cmdPly:Nick())
end

Configuration.Administration["ulx"].freeze = function(cmdPly)
    RunConsoleCommand("ulx", "bring", cmdPly:Nick())
    RunConsoleCommand("ulx", "freeze", cmdPly:Nick())
end

Configuration.Administration["ulx"].unfreeze = function(cmdPly)
    RunConsoleCommand("ulx", "unfreeze", cmdPly:Nick())
end

Configuration.Administration["ulx"].send = function(cmdPly)
    RunConsoleCommand("ulx", "return", cmdPly:Nick())
end

Configuration.Administration["ulx"].spectate = function(cmdPly)
    RunConsoleCommand("ulx", "spectate", cmdPly:Nick())
end

Configuration.Administration["ulx"].ban = function(cmdPly, time, reason)
    RunConsoleCommand("ulx", "ban", cmdPly:Nick(), time, reason)
end

Configuration.Administration["ulx"].kick = function(cmdPly, reason)
    RunConsoleCommand("ulx", "kick", cmdPly:Nick(), reason)
end

// S A M  A D M I N

Configuration.Administration["sam"] = {}
Configuration.Administration["sam"].goto = function(cmdPly)
    RunConsoleCommand("sam", "goto", cmdPly:Nick())
end

Configuration.Administration["sam"].bring = function(cmdPly)
    RunConsoleCommand("sam", "bring", cmdPly:Nick())
end

Configuration.Administration["sam"].freeze = function(cmdPly)
    RunConsoleCommand("sam", "bring", cmdPly:Nick())
    RunConsoleCommand("sam", "freeze", cmdPly:Nick())
end

Configuration.Administration["sam"].unfreeze = function(cmdPly)
    RunConsoleCommand("sam", "unfreeze", cmdPly:Nick())
end

Configuration.Administration["sam"].send = function(cmdPly)
    RunConsoleCommand("sam", "return", cmdPly:Nick())
end

Configuration.Administration["sam"].spectate = function(cmdPly)
    RunConsoleCommand("sam", "spectate", cmdPly:Nick())
end

Configuration.Administration["sam"].ban = function(cmdPly, time, reason)
    RunConsoleCommand("sam", "ban", cmdPly:Nick(), time, reason)
end

Configuration.Administration["sam"].kick = function(cmdPly, reason)
    RunConsoleCommand("sam", "kick", cmdPly:Nick(), reason)
end

// F  A D M I N

Configuration.Administration["fadmin"] = {}
Configuration.Administration["fadmin"].goto = function(cmdPly)
    RunConsoleCommand("fadmin", "goto", cmdPly:Nick())
end

Configuration.Administration["fadmin"].bring = function(cmdPly)
    RunConsoleCommand("fadmin", "bring", cmdPly:Nick())
end

Configuration.Administration["fadmin"].freeze = function(cmdPly)
    RunConsoleCommand("fadmin", "bring", cmdPly:Nick())
    RunConsoleCommand("fadmin", "freeze", cmdPly:Nick())
end

Configuration.Administration["fadmin"].unfreeze = function(cmdPly)
    RunConsoleCommand("fadmin", "unfreeze", cmdPly:Nick())
end

Configuration.Administration["fadmin"].send = function(cmdPly)
    RunConsoleCommand("fadmin", "return", cmdPly:Nick())
end

Configuration.Administration["fadmin"].spectate = function(cmdPly)
    RunConsoleCommand("fadmin", "spectate", cmdPly:Nick())
end

Configuration.Administration["fadmin"].ban = function(cmdPly, time, reason)
    RunConsoleCommand("fadmin", "ban", cmdPly:Nick(), time, reason)
end

Configuration.Administration["fadmin"].kick = function(cmdPly, reason)
    RunConsoleCommand("fadmin", "kick", cmdPly:Nick(), reason)
end

// S E R V E R  G U A R D

Configuration.Administration["serverguard"] = {}
Configuration.Administration["serverguard"].goto = function(cmdPly)
    RunConsoleCommand("sg", "goto", cmdPly:Nick())
end

Configuration.Administration["serverguard"].bring = function(cmdPly)
    RunConsoleCommand("sg", "bring", cmdPly:Nick())
end

Configuration.Administration["serverguard"].freeze = function(cmdPly)
    RunConsoleCommand("sg", "bring", cmdPly:Nick())
    RunConsoleCommand("sg", "freeze", cmdPly:Nick())
end

Configuration.Administration["serverguard"].unfreeze = function(cmdPly)
    RunConsoleCommand("sg", "unfreeze", cmdPly:Nick())
end

Configuration.Administration["serverguard"].send = function(cmdPly)
    RunConsoleCommand("sg", "return", cmdPly:Nick())
end

Configuration.Administration["serverguard"].spectate = function(cmdPly)
    RunConsoleCommand("sg", "spectate", cmdPly:Nick())
end

Configuration.Administration["serverguard"].ban = function(cmdPly, time, reason)
    RunConsoleCommand("sg", "ban", cmdPly:Nick(), time, reason)
end

Configuration.Administration["serverguard"].kick = function(cmdPly, reason)
    RunConsoleCommand("sg", "kick", cmdPly:Nick(), reason)
end

// X  A D M I N  2

Configuration.Administration["xadmin2"] = {}
Configuration.Administration["xadmin2"].goto = function(cmdPly)
    RunConsoleCommand("xadmin", "goto", cmdPly:Nick())
end

Configuration.Administration["xadmin2"].bring = function(cmdPly)
    RunConsoleCommand("xadmin", "bring", cmdPly:Nick())
end

Configuration.Administration["xadmin2"].freeze = function(cmdPly)
    RunConsoleCommand("xadmin", "bring", cmdPly:Nick())
    RunConsoleCommand("xadmin", "freeze", cmdPly:Nick())
end

Configuration.Administration["xadmin2"].unfreeze = function(cmdPly)
    RunConsoleCommand("xadmin", "unfreeze", cmdPly:Nick())
end

Configuration.Administration["xadmin2"].send = function(cmdPly)
    RunConsoleCommand("xadmin", "return", cmdPly:Nick())
end

Configuration.Administration["xadmin2"].spectate = function(cmdPly)
    RunConsoleCommand("xadmin", "spectate", cmdPly:Nick())
end

Configuration.Administration["xadmin2"].ban = function(cmdPly, time, reason)
    RunConsoleCommand("xadmin", "ban", cmdPly:Nick(), time, reason)
end

Configuration.Administration["xadmin2"].kick = function(cmdPly, reason)
    RunConsoleCommand("xadmin", "kick", cmdPly:Nick(), reason)
end

// X  A D M I N  1

Configuration.Administration["xadmin"] = {}
Configuration.Administration["xadmin"].goto = function(cmdPly)
    RunConsoleCommand("xadmin_goto", "goto", cmdPly:Nick())
end

Configuration.Administration["xadmin"].bring = function(cmdPly)
    RunConsoleCommand("xadmin_bring", "bring", cmdPly:Nick())
end

Configuration.Administration["xadmin"].freeze = function(cmdPly)
    RunConsoleCommand("xadmin_bring", "bring", cmdPly:Nick())
    RunConsoleCommand("xadmin_freeze", "freeze", cmdPly:Nick())
end

Configuration.Administration["xadmin"].unfreeze = function(cmdPly)
    RunConsoleCommand("xadmin_unfreeze", "unfreeze", cmdPly:Nick())
end

Configuration.Administration["xadmin"].send = function(cmdPly)
    RunConsoleCommand("xadmin_return", "return", cmdPly:Nick())
end

Configuration.Administration["xadmin"].spectate = function(cmdPly)
    RunConsoleCommand("xadmin_spectate", "spectate", cmdPly:Nick())
end

Configuration.Administration["xadmin"].ban = function(cmdPly, time, reason)
    RunConsoleCommand("xadmin_ban", "ban", cmdPly:Nick(), time, reason)
end

Configuration.Administration["xadmin"].kick = function(cmdPly, reason)
    RunConsoleCommand("xadmin_kick", "kick", cmdPly:Nick(), reason)
end