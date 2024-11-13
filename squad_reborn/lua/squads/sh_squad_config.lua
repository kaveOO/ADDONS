
SQUAD = SQUAD or {}

SQUAD.Config = SQUAD.Config or {}

--Custom check function
SQUAD.Config.CustomCheck = function(ply)
    --if ply:GetUserGroup() == "user" then
    --  return true
    --end
    return true
end
SQUAD.Config.FailCheck = "Sorry, you are not a banana"

--Max members, i recommend using 4 in 4 amounts, and less than 12, 4 is perfect, but it's up to you to use it
SQUAD.Config.MaxMembers = 5
--Max tag size, example FIRED or LMAOX
SQUAD.Config.TagMaxSize = 5
--Max team name size, it speaks for itself
SQUAD.Config.NameMaxSize = 15
--Teams can deal damage between themselves? True enable damage
SQUAD.Config.DamageBetweenTeam = false
--Can you give weapons via C menu?
SQUAD.Config.CanShareWeapons = true
--Can you send money via C menu?
SQUAD.Config.CanShareMoney = true
--Can you share your view via C menu?
SQUAD.Config.CanViewPlayerScreens = true
--Can only bosses from squads use view function
SQUAD.Config.OnlyBossCanSee = true

--HUD size, i recommend values higher than 0.5
SQUAD.Config.HUDScale = 0.85
--HUD elements opacity, 255 is full opaque, 0 is invisible
SQUAD.Config.HUDOpacity = 100

--Key that brings minimap
SQUAD.Config.MinimapKey = KEY_G

--You can open squad menu in C menu?
SQUAD.Config.UseCMenu = true

--You can open squad menu in C menu?
SQUAD.Config.KeyBringSquadMenu = KEY_F6 --Keep -1 to disable it

--Prefix to use squad chat, example !party hey guys!
SQUAD.Config.ChatPrefix = "party"
--Which key is used to talk with your squad, you must hold voice chat too
SQUAD.Config.VoiceKey = KEY_LALT
--This is the key displayed in tips
SQUAD.Config.VoiceKeyString = "Left ALT"
--Which groups can see admin panel info inside C menu
SQUAD.Config.AdminPanelView = {"superadmin", "admin", "trialmod"}

--Language options
SQUAD.Language = {}

SQUAD.Language.Join = "%s wanna invite you!"
SQUAD.Language.CreateOne = "Create one!"
SQUAD.Language.AcceptInvitations = "Can I get invited?"
SQUAD.Language.ShareView = "Can share view?"
SQUAD.Language.DrawOutlines = "Draw outlines"
SQUAD.Language.Drawtips = "Draw Tips"
SQUAD.Language.NotInSquad = "You are not in a squad"
SQUAD.Language.InvitePlayers = "Invite players"
SQUAD.Language.Create = "Create"
SQUAD.Language.Filter = "Invite - Filter:"
SQUAD.Language.InvitationButtons = {"SENT", "SELECT"}
SQUAD.Language.LeavedSquad = "leaved the squad"
SQUAD.Language.Sent = "sent you"

SQUAD.Language.ExitMessage = "Are you sure you want to Leave from the SQUAD?"
SQUAD.Language.ExitConfirm = "Abandoning confirmation"
SQUAD.Language.Yeah = "Yeah"
SQUAD.Language.RemoveLeave = {"Remove", "Leave", "From SQUAD"}

SQUAD.Language.D_Title = "SQUAD - CREATE"
SQUAD.Language.Chars = "letters"
SQUAD.Language.D_Created = "SQUAD CREATED"
SQUAD.Language.D_Exists = "SQUAD ALREADY EXISTS"
SQUAD.Language.D_ExistsB = "USE A DIFFERENT NAME"
SQUAD.Language.D_Error = "AN ERROR OCCURRED"

SQUAD.Language.Message = "Send message"
SQUAD.Language.MessageWarning = "Wait atleast 5 seconds between sending messages"
SQUAD.Language.Money = "Send Money"
SQUAD.Language.MoneySubtitle = "Insert the amount of money you want to give"
SQUAD.Language.GiveGun = "Give gun"
SQUAD.Language.ScreenView = "View player screen"

SQUAD.Language.MaxMembers = "This SQUAD already has max members on it."

SQUAD.Language.Accept = "To accept"
SQUAD.Language.Refuse = "To refuse"

--Tips strings
SQUAD.Tips = {}