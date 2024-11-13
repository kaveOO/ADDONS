wOS = wOS or {}

local cutjoueur = "cut_joueur.wav"
local swordamour1 = "vent/sword_vent1.wav"
local swordamour2 = "vent/sword_vent2.wav"

--- MOUV 1

wOS.ForcePowers:RegisterNewPower({
		name = "Mouvement 1 - Vent",
		icon = "",
		image = "materials/wos/skills/comp1.png",
		cooldown = 100,
		manualaim = false,
		description = "",
		help = "",
		action = function( self )

            if not self:IsValid() then return end
			local ply = self:GetOwner()

			ply:EmitSound( swordvent1, 75, 130, 1, CHAN_AUTO )

            timer.Simple( 0.1 , function() ParticleEffect("[01]_wind_cut" , ply:GetPos() + ply:GetForward() * 60 , ply:EyeAngles() + Angle( 0 , -180 , 45 ) , ply ) end )

            timer.Simple( 0.2 , function()

                if not IsValid( self ) then return end

                self.Owner:SetSequenceOverride( "sda_atk7_inosuke" , 1.2 )

                for k, v in pairs( ents.FindInSphere( ply:GetPos() + ply:GetAimVector() * 150 , 150 ) ) do
                        
                    if ( IsValid( v ) and v:IsPlayer() and v != ply ) then

                        v:TakeDamage( self.SaberDamage * 1.3 , ply , ply )
                        v:EmitSound( cutjoueur , 75 , math.random(50 , 150) , 0.8 , CHAN_AUTO ) 				
                        util.ScreenShake( ply:GetPos() , 3 , 50 , 0.5 , 300 )

                    end
                        
                end

                timer.Simple( 0.4 , function()
                            
                    if not IsValid( self ) then return end
                            
                    ply:EmitSound( swordamour2 , 75 , 130 , 1 , CHAN_AUTO )	
                            
                    for k, v in pairs( ents.FindInSphere( ply:GetPos() , 150 ) ) do
                                
                        if ( IsValid( v ) and v:IsPlayer() and v != ply ) then
                                    
                            v:TakeDamage( self.SaberDamage * 1.3 , ply , ply )
                            v:EmitSound( cutjoueur, 75, math.random(50, 150), 0.8, CHAN_AUTO ) 				
                            util.ScreenShake( ply:GetPos() , 3 , 50 , 0.5 , 300 )
                                    
                        end
                                
                    end
                            
                end )
                    
            end )
            
			return true
            
		end
})

--- MOUV 2

wOS.ForcePowers:RegisterNewPower({
		name = "Mouvement 2 - Vent",
		icon = "",
		image = "materials/wos/skills/comp1.png",
		cooldown = 200,
		manualaim = false,
		description = "",
		help = "",
		action = function( self )

            if not self:IsValid() then return end
			local ply = self:GetOwner()
            
            self.Owner:SetSequenceOverride( "sda_atk15_inosuke" , 1.5 )

			timer.Simple( 0.1 , function() ParticleEffect("[01]_wind_cut_impact" , ply:GetPos() + ply:GetForward() * 60 , ply:EyeAngles() + Angle( 0 , -180 , 45 ) , ply ) end )
            timer.Simple( 0.1 , function() ParticleEffect("[01]_wind_around_second_glow" , ply:GetPos() , ply:EyeAngles() + Angle(0,0,0), ply ) end )
            timer.Simple( 0.1 , function() ParticleEffect("[01]_wind_jump_add_4" , ply:GetPos() , ply:EyeAngles() + Angle( 0 , 90 , 0 ) , ply ) end )
            timer.Simple( 0.3 , function() ply:StopParticles() end )
            timer.Simple( 0.2 , function() 
            if not IsValid( self ) then return end	

                for k , v in pairs( ents.FindInSphere( ply:GetPos() + ply:GetAimVector() * 130 , 130 ) ) do
                        
                    if ( IsValid( v ) and v:IsPlayer() and v != ply ) then
                            
                        v:TakeDamage( self.SaberDamage * 1.3 , ply , ply )
                        timer.Simple( 0.1 , function() ParticleEffect("[*]_wind_cut" , v:GetPos() , ply:EyeAngles() + Angle( 0 , 90 , 0 ) , v ) end )
                        v:EmitSound( cutjoueur, 75, math.random(50, 150), 0.8, CHAN_AUTO )
                        util.ScreenShake( ply:GetPos() , 3 , 50 , 0.5 , 300 ) 
                            
                    end
                        
                end
                    
                timer.Simple( 0.4 , function() 
                            
                    if not IsValid( self ) then return end
                            
                    ply:EmitSound( swordamour2 , 75 , 130 , 1 , CHAN_AUTO )
                            
                    for k , v in pairs( ents.FindInSphere( ply:GetPos() , 150 ) ) do
                                
                        if ( IsValid( v ) and v:IsPlayer() and v != ply ) then
                                    
                            v:TakeDamage( self.SaberDamage * 1.3 , ply, ply )
                            timer.Simple( 0.1 , function() ParticleEffect("[*]_wind_cut" , v:GetPos() , ply:EyeAngles() + Angle( 0 , 90 , 0 ) , v ) end )
                            v:EmitSound( cutjoueur , 75, math.random(50, 150), 0.8, CHAN_AUTO ) 				
                            util.ScreenShake( ply:GetPos() , 3 , 50 , 0.5 , 300 ) 
                                    
                        end
                                
                    end
                            
                end )
                    
            end )
            
			return true
            
		end
})

--- MOUV 3

wOS.ForcePowers:RegisterNewPower({
		name = "Mouvement 3 - Vent",
		icon = "",
		image = "materials/wos/skills/comp1.png",
		cooldown = 240,
		manualaim = false,
		description = "",
		help = "",
		action = function( self )

            if not self:IsValid() then return end
			local ply = self:GetOwner()
            
            self.Owner:SetSequenceOverride( "sda_atk_dieudufeu2" , 3 )

            timer.Simple( 0.1 , function() ParticleEffectAttach("[01]_wind_jump" , 4 , ply , 0 ) end )
            timer.Simple( 0.4 , function() ply:StopParticles() end )
            
            ply:SetVelocity( Vector( 0 , 0 , 350 ) )
            
            timer.Simple( 0.4 , function() if not self:IsValid() then return end
                    
                ply:SetVelocity( ply:GetAimVector() * 1000 )
                ply:EmitSound( swordamour2, 75, 130, 1, CHAN_AUTO )
                    
                timer.Create( "mouvement-vent3" .. ply:SteamID64() , 0.15 , 5 , function() if not self:IsValid() then return end
                            
                    for k , v in ipairs( ents.FindInSphere( ply:GetShootPos() + ply:GetAimVector() * 50 , 150 ) ) do
                                
                        if v:IsValid() and v != ply then
                                    
                            if v:IsNPC() or v:IsPlayer() then
                                        
                                local dmg_mouvement1_soleil = DamageInfo()
                                dmg_mouvement1_soleil:SetDamage( self.SaberDamage * 1.3 )
                                dmg_mouvement1_soleil:SetDamageType( 2 )
                                dmg_mouvement1_soleil:SetAttacker( ply )
                                dmg_mouvement1_soleil:SetInflictor( self )
                                v:TakeDamageInfo( dmg_mouvement1_soleil )	

                                v:EmitSound(cutjoueur, 75, math.random(50, 150), 0.8, CHAN_AUTO )
                                util.ScreenShake( ply:GetPos() , 30 * 0.07 , 55 , 0.45 , 5000 )
                                        
                            end
                                    
                        end
                                
                    end
                            
                end )	
                    
            end )
            
			return true
            
		end
})

--- MOUV 4

wOS.ForcePowers:RegisterNewPower({
		name = "Mouvement 4 - Vent",
		icon = "A4",
		image = "materials/wos/skills/comp1.png",
		cooldown = 300,
		manualaim = false,
		description = "",
		help = "",
		action = function( self )

            if not self:IsValid() then return end
			local ply = self:GetOwner()
            
            self.Owner:SetSequenceOverride( "sda_atk9_inosuke" , 2.1 )

            timer.Simple( 0.1 , function() ParticleEffectAttach( "[01]_wind_around" , 4 , ply , 0 ) end )
            timer.Simple( 0.8 , function() ply:StopParticles() end )
            
            timer.Create( "mouvement-vent4" .. ply:SteamID64() , 0.05 , 6 , function() if not self:IsValid() then return end

                for k , v in pairs( ents.FindInSphere(ply:GetPos() , 200 ) ) do

                    if v:IsValid() and v != ply then

                        if v:IsNPC() or v:IsPlayer() then

                            local dmg_mouvement4_amour = DamageInfo()
                            dmg_mouvement4_vent:SetDamage( self.SaberDamage * 1.3 )
                            dmg_mouvement4_vent:SetDamageType( 2 )
                            dmg_mouvement4_vent:SetAttacker( ply )
                            dmg_mouvement4_vent:SetInflictor( self )
                            v:TakeDamageInfo( dmg_mouvement4_amour )	

                            v:EmitSound(cutjoueur , 75 , math.random( 50 , 150 ) , 0.8 , CHAN_AUTO ) 					
                            util.ScreenShake( ply:GetPos() , 30 * 0.07 , 55 , 0.45 , 5000 )

                        end

                    end

                end

            end )

            timer.Simple( 0.60 , function() 

                ply:SetMoveType( MOVETYPE_WALK )

            end )

			return true

		end
})