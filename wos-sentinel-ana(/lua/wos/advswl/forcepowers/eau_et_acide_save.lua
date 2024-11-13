wOS = wOS or {}

local cutjoueur = "cut_joueur.wav"
local swordeau1 = "eau/sword_eau1.wav"

-- MOUV 1

wOS.ForcePowers:RegisterNewPower({
		name = "Mouvement 1 - Eau / Acide",
		icon = "E1",
		image = "materials/wos/skills/comp1.png",
		cooldown = 100,
		manualaim = false,
		description = "",
		help = "",
		action = function( self )

            if not self:IsValid() then return end
			local ply = self:GetOwner()

			ply:EmitSound( swordeau1 , 75 , 130 , 1 , CHAN_AUTO )

            timer.Simple( 0.1 , function() ParticleEffect( "[9]_water_slash_urokodaki" , ply:GetPos() + ply:GetForward() * 60 , ply:EyeAngles() + Angle( 0 , -180 , 45 ) , ply ) end )
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
                            
                    ply:EmitSound( swordeau1 , 75 , 130 , 1 , CHAN_AUTO )
                            
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

-- MOUV 2

wOS.ForcePowers:RegisterNewPower({
		name = "Mouvement 2 - Eau / Acide",
		icon = "E2",
		image = "materials/wos/skills/comp1.png",
		cooldown = 200,
		manualaim = false,
		description = "",
		help = "",
		action = function( self )

            if not self:IsValid() then return end
			local ply = self:GetOwner()
            
            ply:EmitSound( swordeau1 )

			self.Owner:SetSequenceOverride( "sda_atk_tanjiro3" , 1.5 )
            
            ply:SetVelocity( Vector( 0 , 0 , 350 ) )
            
            timer.Simple( 0.01 , function() if not self:IsValid() then return end
                    
                ply:SetVelocity( ply:GetAimVector() * 800 )
                    
            end )

            timer.Create( "mouvement-eau2" .. ply:SteamID64() , 0.1 , 5 , function() if not self:IsValid() then return end
                    
                for k , v in pairs( ents.FindInSphere( ply:GetPos() , 150 ) ) do
                        
                    if v:IsValid() and v != ply then
                            
                        if v:IsNPC() or v:IsPlayer() then
                                
                            local dmg_mouvement2_eau = DamageInfo()
                            dmg_mouvement2_eau:SetDamage( self.SaberDamage * 1.3 )
                            dmg_mouvement2_eau:SetDamageType( 2 )
                            dmg_mouvement2_eau:SetAttacker( ply )
                            dmg_mouvement2_eau:SetInflictor( self )
                            v:TakeDamageInfo( dmg_mouvement2_eau )	

                            v:EmitSound( cutjoueur , 75 , math.random( 50 , 150 ) , 0.8 , CHAN_AUTO )
                            util.ScreenShake( ply:GetPos() , 30 * 0.07 , 55 , 0.45 , 5000 )
                                
                        end
                            
                    end
                        
                end
                    
            end )
            
			return true
            
		end
})

-- MOUV 3

wOS.ForcePowers:RegisterNewPower({
		name = "Mouvement 3 - Eau / Acide",
		icon = "E3",
		image = "materials/wos/skills/comp1.png",
		cooldown = 240,
		manualaim = false,
		description = "",
		help = "",
		action = function( self )

            if not self:IsValid() then return end
			local ply = self:GetOwner()
            
            self.Owner:SetSequenceOverride( "sda_atk9_inosuke" , 2.1 )
            
            ply:EmitSound( swordeau1 )
            
            ply:SetMoveType( MOVETYPE_NONE )
            timer.Simple( 0.1 , function() ParticleEffectAttach( "[9]_bubble_explosion" , 4 , ply , 0 ) end )
            timer.Simple( 0.1 , function() ParticleEffectAttach( "[9]_shtil_end" , 4 , ply , 0 ) end )
            timer.Simple( 0.60 , function() ply:StopParticles() end )
            timer.Create( "mouvement-eau2" .. ply:SteamID64() , 0.1 , 5 , function() if not self:IsValid() then return end
                    
                for k , v in pairs( ents.FindInSphere( ply:GetPos() , 150 ) ) do
                        
                    if v:IsValid() and v != ply then
                            
                        if v:IsNPC() or v:IsPlayer() then
                                
                            local dmg_mouvement2_eau = DamageInfo()
                            dmg_mouvement2_eau:SetDamage( self.SaberDamage * 1.3 )
                            dmg_mouvement2_eau:SetDamageType( 2 )
                            dmg_mouvement2_eau:SetAttacker( ply )
                            dmg_mouvement2_eau:SetInflictor( self )
                            v:TakeDamageInfo( dmg_mouvement2_eau )	

                            v:EmitSound( cutjoueur , 75 , math.random( 50 , 150 ) , 0.8 , CHAN_AUTO ) 					
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

-- MOUV 4

wOS.ForcePowers:RegisterNewPower({
		name = "Mouvement 4 - Eau / Acide",
		icon = "E4",
		image = "materials/wos/skills/comp1.png",
		cooldown = 300,
		manualaim = false,
		description = "",
		help = "",
		action = function( self )

            if not self:IsValid() then return end
			local ply = self:GetOwner()
            
            self.Owner:SetSequenceOverride( "wos_ymt_upperslash_2" , 0.6 )
            
            timer.Simple( 0.6 , function() if not self:IsValid() then return end
                    
                self.Owner:SetSequenceOverride( "sda_atk_tanjirojump1" , 1.5 )
                    
            end )

            ply:EmitSound( swordeau1 )

            timer.Simple( 0.01 , function() if not self:IsValid() then return end
                    
                ply:SetVelocity( Vector(0 , 0 , 500 ) )

                timer.Simple( 1 , function() if not self:IsValid() then return end
                            
                    ply:SetVelocity( Vector( 0 , 0 , -10000 ) )
                            
                    timer.Simple( 0.10 , function() if not self:IsValid() then return end
                                    
                        for k,v in pairs( ents.FindInSphere( ply:GetPos() , 300 ) ) do
                                        
                            if v:IsValid() and v != ply then
                                            
                                if v:IsNPC() or v:IsPlayer() then
                                                
                                    local dmg_mouvement4_eau = DamageInfo()
                                    dmg_mouvement4_eau:SetDamage( self.SaberDamage * 1.3 )
                                    dmg_mouvement4_eau:SetDamageType( 2 )
                                    dmg_mouvement4_eau:SetAttacker( ply )
                                    dmg_mouvement4_eau:SetInflictor( self )

                                    v:TakeDamageInfo( dmg_mouvement4_eau )	
                                    v:EmitSound( cutjoueur , 75, math.random( 50 , 150 ) , 0.8 , CHAN_AUTO )
                                                
                                end
                                            
                            end
                                        
                        end
                                    
                        timer.Simple( 0.1 , function() ParticleEffectAttach( "[9]_bubble_explosion" , 4 , ply , 0 ) end )
            			timer.Simple( 0.1 , function() ParticleEffectAttach( "[9]_shtil_end" , 4 , ply , 0 ) end )

                        local eau_effect_mouvement4 = EffectData()
                        eau_effect_mouvement4:SetOrigin( ply:GetPos() )
                        util.Effect( "WaterSurfaceExplosion" , eau_effect_mouvement4 )

                    end )		

                end )	

            end )

			return true

		end
})