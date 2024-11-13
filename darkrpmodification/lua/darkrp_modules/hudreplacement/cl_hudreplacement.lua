--[[---------------------------------------------------------------------------
Which default HUD elements should be hidden?
---------------------------------------------------------------------------]]

local hideHUDElements = {
    -- if you DarkRP_HUD this to true, ALL of DarkRP's HUD will be disabled. That is the health bar and stuff,
    -- but also the agenda, the voice chat icons, lockdown text, player arrested text and the names above players' heads
    ["DarkRP_HUD"] = false,

    -- DarkRP_EntityDisplay is the text that is drawn above a player when you look at them.
    -- This also draws the information on doors and vehicles
    ["DarkRP_EntityDisplay"] = true,

    -- This is the one you're most likely to replace first
    -- DarkRP_LocalPlayerHUD is the default HUD you see on the bottom left of the screen
    -- It shows your health, job, salary and wallet, but NOT hunger (if you have hungermod enabled)
    ["DarkRP_LocalPlayerHUD"] = false,

    -- If you have hungermod enabled, you will see a hunger bar in the DarkRP_LocalPlayerHUD
    -- This does not get disabled with DarkRP_LocalPlayerHUD so you will need to disable DarkRP_Hungermod too
    ["DarkRP_Hungermod"] = false,

    -- Drawing the DarkRP agenda
    ["DarkRP_Agenda"] = false,

    -- Lockdown info on the HUD
    ["DarkRP_LockdownHUD"] = false,

    -- Arrested HUD
    ["DarkRP_ArrestedHUD"] = false,
}

-- this is the code that actually disables the drawing.
hook.Add("HUDShouldDraw", "HideDefaultDarkRPHud", function(name)
    if hideHUDElements[name] then return false end
end)

if true then return end -- REMOVE THIS LINE TO ENABLE THE CUSTOM HUD BELOW

--[[---------------------------------------------------------------------------
The Custom HUD
only draws health
---------------------------------------------------------------------------]]
local Health = 0
local function hudPaint()
    

end
hook.Add("HUDPaint", "DarkRP_Mod_HUDPaint", hudPaint)
