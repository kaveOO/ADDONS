
--[[-------------------------------------------------------------------
	Modified Lightsaber:
		Runs on the intuitive wOS Lightsaber Base
			Powered by
						  _ _ _    ___  ____  
				__      _(_) | |_ / _ \/ ___| 
				\ \ /\ / / | | __| | | \___ \ 
				 \ V  V /| | | |_| |_| |___) |
				  \_/\_/ |_|_|\__|\___/|____/ 
											  
 _____         _                 _             _           
|_   _|__  ___| |__  _ __   ___ | | ___   __ _(_) ___  ___ 
  | |/ _ \/ __| '_ \| '_ \ / _ \| |/ _ \ / _` | |/ _ \/ __|
  | |  __/ (__| | | | | | | (_) | | (_) | (_| | |  __/\__ \
  |_|\___|\___|_| |_|_| |_|\___/|_|\___/ \__, |_|\___||___/
                                         |___/             
----------------------------- Copyright 2022, David "King David" Wiltos ]]--[[
							  
	Lua Developer: King David
	Contact: www.wiltostech.com
		
-- Copyright 2022, David "King David" Wiltos ]]--

AddCSLuaFile()


SWEP.Author = "Robotboy655 + King David + Pymouss + AmineYZ"
SWEP.Category = "Katana - Ordre Démoniaques"
SWEP.Contact = "Pymouss + AmineYZ"
SWEP.RenderGroup = RENDERGROUP_BOTH
SWEP.Slot = 0
SWEP.SlotPos = 4
SWEP.Spawnable = true
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = false
SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false
SWEP.DrawWeaponInfoBox = false
SWEP.ViewModel = "models/weapons/v_crowbar.mdl"
SWEP.WorldModel = "models/blackcliff2.mdl"
SWEP.ViewModelFOV = 55
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = true
SWEP.Secondary.Ammo = "none"
SWEP.NoBlade = true
------------------------------------------------------------THINGS YOU WILL EDIT ARE BELOW HERE-------------------------------------------------------------------------
SWEP.PrintName = "Katana Démon #2" --Name of the lightsaber
SWEP.Class = "katana_demon" --The file name of this swep
SWEP.DualWielded = false --Should this be a dual wielded saber?
SWEP.CanMoveWhileAttacking = true -- Can the user move while attacking
SWEP.SaberDamage = 50 --How much damage the saber does when it's being swung
SWEP.SaberBurnDamage = 0 -- How much damage the saber does when it's colliding with someone ( coming in contact with laser )
SWEP.MaxForce = 100 --The maximum amount of force in the meter
SWEP.RegenSpeed = 1 --The MULTIPLIER for the regen speed. Half speed = 0.5, Double speed = 2, etc.
SWEP.CanKnockback = false --Should this saber be able to push people back when they get hit?
SWEP.ForcePowerList = { "Mediation" } 

--Use these options to overwrite the player's commands
SWEP.UseHilt = "models/blackcliff2.mdl" -- Model path of the hilt
SWEP.UseLength = 60 -- Length of the saber 
SWEP.UseWidth = 10 -- Width of the saber
SWEP.UseColor = Color(255,255,255,0) -- RGB Color of saber. Red = Color( 255, 0, 0 ) Blue = Color( 0, 0, 255 ), etc.
SWEP.UseDarkInner = false
SWEP.UseLoopSound = ""-- The loop sound path
SWEP.UseSwingSound = "" -- The swing sound path
SWEP.UseOnSound = "degainer.mp3"
SWEP.UseOffSound = "rengainer.mp3"

--These are the ones for the second saber for dual wielding. If you are using a single saber, this doesn't do shit
SWEP.UseSecHilt = false
SWEP.UseSecLength = false
SWEP.UseSecWidth = false
SWEP.UseSecColor = false
SWEP.UseSecDarkInner = false
SWEP.UseSkills = true
-----------------------------------------------------------END OF EDIT----------------------------------------------------------------


if !SWEP.DualWielded then
	SWEP.Base = "wos_adv_single_lightsaber_base"
else
	SWEP.Base = "wos_adv_dual_lightsaber_base"
end



if CLIENT then
	killicon.Add( SWEP.Class, "lightsaber/lightsaber_killicon", color_white )
end
