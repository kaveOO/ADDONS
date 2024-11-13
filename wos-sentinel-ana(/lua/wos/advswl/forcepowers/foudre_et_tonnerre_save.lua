wOS = wOS or {}

local cutjoueur = "cut_joueur.wav"
local swordfoudre21 = "foudre/sword_foudre_2_1.wav"
local swordfoudre22 = "foudre/sword_foudre_2_2.wav"
local swordfoudre23 = "foudre/sword_foudre_3.wav"

-- MOUV 1

wOS.ForcePowers:RegisterNewPower({
		name = "Mouvement 1 - Foudre / Tonnerre",
		icon = "F1",
		image = "materials/wos/skills/comp1.png",
		cooldown = 100,
		manualaim = false,
		description = "",
		help = "",
		action = function( self )

            if not self:IsValid() then return end
			local ply = self:GetOwner()

			ply:EmitSound( swordfoudre21 , 75, 130, 1, CHAN_AUTO )

            timer.Simple( 0.1 , function() ParticleEffect( "[14]_lightning_slash" , ply:GetPos()+ply:GetForward() * 60 , ply:EyeAngles() + Angle( 0 , -180 , 45 ) , ply ) end )

            timer.Simple( 0.2 , function()

                if not IsValid( self ) then return end

                self.Owner:SetSequenceOverride( "sda_atk7_inosuke" , 1.2 )

                for k, v in pairs( ents.FindInSphere( ply:GetPos() + ply:GetAimVector() * 130 , 130 ) ) do
                        
                    if ( IsValid( v ) and v:IsPlayer() and v != ply ) then

                        v:TakeDamage( self.SaberDamage * 1.3 , ply , ply )
                        v:EmitSound( cutjoueur , 75 , math.random(50 , 150) , 0.8 , CHAN_AUTO ) 				
                        util.ScreenShake( ply:GetPos() , 3 , 50 , 0.5 , 300 )

                    end
                        
                end

                timer.Simple( 0.4 , function()
                            
                    if not IsValid( self ) then return end
                            
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
		name = "Mouvement 2 - Foudre / Tonnerre",
		icon = "F2",
		image = "materials/wos/skills/comp1.png",
		cooldown = 200,
		manualaim = false,
		description = "",
		help = "",
		action = function( self )

            if not self:IsValid() then return end
			local ply = self:GetOwner()
            
            self.Owner:SetSequenceOverride( "sda_atk5_zenitsu" , 1 )
            
            timer.Simple( 0.05 , function() ParticleEffect( "[14]_lightning_explosion" , ply:GetPos() , ply:EyeAngles() + Angle( 0 , 0 , 0 ) , ply ) end )
            
            ply:EmitSound( swordfoudre22 )
            
            timer.Create( "mouvement2-foudre" .. ply:SteamID64() , 0.1 , 4 , function() if not IsValid( self ) then return end
                    
                for k , v in pairs( ents.FindInSphere( ply:GetPos() + ply:GetAimVector() * 110 , 110 ) ) do
                        
                    if ( IsValid( v ) and v:IsPlayer() and v != ply ) then
                            
                        v:TakeDamage( self.SaberDamage * 1.3 , ply , ply )
                        v:EmitSound( cutjoueur, 75, math.random(50, 150), 0.8, CHAN_AUTO )
                        util.ScreenShake( ply:GetPos() , 3 , 50 , 0.5 , 300 ) 
                            
                    end
                        
                end
                    
            end )
            
			return true
            
		end
})

--- MOUV 3

wOS.ForcePowers:RegisterNewPower({
		name = "Mouvement 3 - Foudre / Tonnerre",
		icon = "F3",
		image = "materials/wos/skills/comp1.png",
		cooldown = 240,
		manualaim = false,
		description = "",
		help = "",
		action = function( self )

            if not self:IsValid() then return end
			local ply = self:GetOwner()
            
            self.Owner:SetSequenceOverride( "sda_atk_tanjiro8" , 2 )
            
            ply:SetVelocity( Vector( 0 , 0 , 350 ) )
            
            timer.Simple( 1.1 , function() ParticleEffect( "[14]_lightning_explosion" , ply:GetPos() , ply:EyeAngles() + Angle( 0 , 0 , 0 ) , ply ) end )
            
            timer.Simple( 1.1 , function() if not self:IsValid() then return end
                    
                ply:EmitSound( swordfoudre23 )
                    
                for k , v in ipairs( ents.FindInSphere( ply:GetShootPos() , 300 ) ) do
                        
                    if v:IsValid() and v != ply then
                            
                        if v:IsNPC() or v:IsPlayer() then
                          
                            local dmg_mouvement3_foudre = DamageInfo()
                            dmg_mouvement3_foudre:SetDamage( self.SaberDamage * 1.3 )
                            dmg_mouvement3_foudre:SetDamageType( 2 )
                            dmg_mouvement3_foudre:SetAttacker( ply )
                            dmg_mouvement3_foudre:SetInflictor( self )
                            v:TakeDamageInfo( dmg_mouvement3_foudre )

                            v:EmitSound( cutjoueur , 75, math.random(50, 150), 0.8, CHAN_AUTO ) 				
                            util.ScreenShake( ply:GetPos() , 30 * 0.07 , 55 , 0.45 , 5000 ) 

                            local soleil_effect_mouvement3 = EffectData()
                            soleil_effect_mouvement3:SetOrigin( v:GetPos() + v:GetUp() * 20 )
                            soleil_effect_mouvement3:SetNormal( v:GetPos():GetNormal() )
                            util.Effect( "Explosion" , soleil_effect_mouvement3 )
                                
                        end
                            
                    end
                        
                end
                    
            end )
            
			return true
            
		end
})

--- MOUV 4

wOS.ForcePowers:RegisterNewPower({
		name = "Mouvement 4 - Foudre / Tonnerre",
		icon = "F4",
		image = "materials/wos/skills/comp1.png",
		cooldown = 300,
		manualaim = false,
		description = "",
		help = "",
		action = function( self )

            if not self:IsValid() then return end
			local ply = self:GetOwner()
            
            self.Owner:SetSequenceOverride( "sda_atk7_zenitsu" , 1 )
            
            ply:Freeze( true )
            local middle = ply:GetPos() + ply:GetForward() * 230
            
            timer.Simple( 0.05 , function() ParticleEffect( "[14]_lightning_explosion" , ply:GetPos() , ply:EyeAngles() + Angle( 0 , 0 , 0 ) , ply ) end )
            
            timer.Simple( 0.2 , function() if not IsValid( self ) then return end
                    
                ply:SetPos( ply:GetPos() + ply:GetRight() * 200 + ply:GetForward() * 300 )	
                    
                ply:EmitSound( swordfoudre23 )
                    
                timer.Simple( 0.05 , function() ParticleEffect( "[14]_lightning_explosion" , ply:GetPos() , ply:EyeAngles() + Angle( 0 , 0 , 0 ) , ply ) end )
                    
                for k, v in pairs( ents.FindInSphere( middle, 230 ) ) do
                        
                    if ( IsValid( v ) and v:IsPlayer() and v != ply ) then
                            
                        v:TakeDamage( self.SaberDamage * 1.3 , ply, ply )
                        v:EmitSound( cutjoueur, 75, math.random(50, 150), 0.8, CHAN_AUTO ) 				
                        util.ScreenShake( ply:GetPos(), 3, 50, 0.5, 600 ) 
                            
                    end
                        
                end
                    
                timer.Simple( 0.2, function() if not IsValid( self ) then return end
                           
                    ply:SetPos( ply:GetPos() + ply:GetRight() * -400 )
                            
                    ply:EmitSound( swordfoudre23 )
                            
                    timer.Simple( 0.05 , function() ParticleEffect( "[14]_lightning_explosion" , ply:GetPos() , ply:EyeAngles() + Angle( 0 , 0 , 0 ) , ply ) end )

                    for k, v in pairs( ents.FindInSphere( middle, 230 ) ) do

                        if ( IsValid( v ) and v:IsPlayer() and v != ply ) then

                            v:TakeDamage( self.SaberDamage * 1.3 , ply, ply )
                            v:EmitSound( cutjoueur, 75, math.random(50, 150), 0.8, CHAN_AUTO ) 		
                            util.ScreenShake( ply:GetPos(), 3, 50, 0.5, 600 ) 

                        end

                    end

                    timer.Simple( 0.2 , function() if not IsValid( self ) then return end	

                        ply:SetPos( ply:GetPos() + ply:GetRight() * 200 + ply:GetForward() * -300 )
                                    
                        ply:EmitSound( swordfoudre23 )

                        timer.Simple( 0.05 , function() ParticleEffect( "[14]_lightning_explosion" , ply:GetPos() , ply:EyeAngles() + Angle( 0 , 0 , 0 ) , ply ) end )

                        for k, v in pairs( ents.FindInSphere( middle, 230 ) ) do

                            if ( IsValid( v ) and v:IsPlayer() and v != ply ) then

                                v:TakeDamage( self.SaberDamage * 1.3 , ply , ply )
                                v:EmitSound( cutjoueur , 75 , math.random( 50 , 150) , 0.8 , CHAN_AUTO ) 				
                                util.ScreenShake( ply:GetPos() , 3 , 50 , 0.5 , 600 )

                            end

                        end

                    end )

                end )

            end )

            timer.Simple( 0.6 , function()
                    
                if ply:IsConnected() then
                        
                    ply:Freeze( false )
                        
                end
                    
            end )
            
			return true
            
		end
})