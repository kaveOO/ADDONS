wOS = wOS or {}

local cutjoueur = "cut_joueur.wav"

--- MOUV 1

wOS.ForcePowers:RegisterNewPower({
		name = "Mouvement 1 - Simple",
		icon = "C1",
		image = "materials/wos/skills/comp1.png",
		cooldown = 60,
		manualaim = false,
		description = "",
		help = "",
		action = function( self )

            if not self:IsValid() then return end
			local ply = self:GetOwner()

            self.Owner:SetSequenceOverride( "sda_atk5_zenitsu" , 1 )

            timer.Create( "mouvement1-simple" .. ply:SteamID64() , 0.1 , 4 , function() if not IsValid( self ) then return end

                for k , v in pairs( ents.FindInSphere( ply:GetPos() + ply:GetAimVector() * 110 , 110 ) ) do

                    if ( IsValid( v ) and v:IsPlayer() and v != ply ) then

                        v:TakeDamage( self.SaberDamage * 1 , ply , ply )
                        v:EmitSound( cutjoueur , 75 , math.random( 50 , 150 ) , 0.8 , CHAN_AUTO )
                        util.ScreenShake( ply:GetPos() , 3 , 50 , 0.5 , 300 ) 

                    end

                end

            end )

			return true

		end
})