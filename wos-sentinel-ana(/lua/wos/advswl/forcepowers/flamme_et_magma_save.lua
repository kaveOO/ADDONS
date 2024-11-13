wOS = wOS or {}

local cutjoueur = "cut_joueur.wav"
local swordflamme1 = "flamme/sword_flamme1.wav"
local swordflamme2 = "flamme/sword_flamme2.wav"
local swordflamme3 = "flamme/sword_flamme3.wav"
local swordflamme6 = "flamme/sword_flamme6.wav"

-- MOUV 1

wOS.ForcePowers:RegisterNewPower({
		name = "Mouvement 1 - Flamme / Magma",
		icon = "F1",
		image = "materials/wos/skills/comp1.png",
		cooldown = 60,
		manualaim = false,
		description = "",
		help = "",
		action = function( self )

            if not self:IsValid() then return end
			local ply = self:GetOwner()

			ply:EmitSound( swordflamme1 , 75 , 130 , 1 , CHAN_AUTO )

            timer.Simple( 0.1 , function() ParticleEffect( "[10]_fire_slash" , ply:GetPos() + ply:GetForward() * 60 , ply:EyeAngles() + Angle( 0 , -180 , 45 ) , ply ) end )
            timer.Simple( 0.2 , function()

                if not IsValid( self ) then return end

                self.Owner:SetSequenceOverride( "sda_atk7_inosuke" , 1.2 )

                for k, v in pairs( ents.FindInSphere( ply:GetPos() + ply:GetAimVector() * 150 , 150 ) ) do
                        
                    if ( IsValid( v ) and v:IsPlayer() and v != ply ) then

                        v:TakeDamage( self.SaberDamage * 1.5 , ply , ply )
                        v:EmitSound( cutjoueur , 75 , math.random( 50 , 150 ) , 0.8 , CHAN_AUTO ) 				
                        util.ScreenShake( ply:GetPos() , 3 , 50 , 0.5 , 300 )

                    end
                        
                end

                timer.Simple( 0.4 , function()
                            
                    if not IsValid( self ) then return end
                            
                    ply:EmitSound( swordflamme1 , 75 , 130 , 1 , CHAN_AUTO )
                            
                    for k, v in pairs( ents.FindInSphere( ply:GetPos() , 150 ) ) do
                                
                        if ( IsValid( v ) and v:IsPlayer() and v != ply ) then
                                    
                            v:TakeDamage( self.SaberDamage * 1.5 , ply , ply )
                            v:EmitSound( cutjoueur , 75 , math.random( 50 , 150 ) , 0.8 , CHAN_AUTO ) 				
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
		name = "Mouvement 2 - Flamme / Magma",
		icon = "F2",
		image = "materials/wos/skills/comp1.png",
		cooldown = 120,
		manualaim = false,
		description = "",
		help = "",
		action = function( self )

            if not self:IsValid() then return end
			local ply = self:GetOwner()
            
            ply:EmitSound( swordflamme2 )

			self.Owner:SetSequenceOverride( "sda_atk_tanjiro3" , 1.5 )
            
            ply:SetVelocity( Vector( 0 , 0 , 350 ) )
            
            timer.Simple( 0.01 , function() if not self:IsValid() then return end
                    
                ply:SetVelocity( ply:GetAimVector() * 800 )
                    
            end )

            timer.Create( "mouvement-flamme1" .. ply:SteamID64() , 0.1 , 5 , function() if not self:IsValid() then return end
                    
                for k , v in pairs( ents.FindInSphere( ply:GetPos() , 150 ) ) do
                        
                    if v:IsValid() and v != ply then
                            
                        if v:IsNPC() or v:IsPlayer() then
                                
                            local dmg_mouvement1_eau = DamageInfo()
                            dmg_mouvement1_eau:SetDamage( self.SaberDamage * 1.5 )
                            dmg_mouvement1_eau:SetDamageType( 2 )
                            dmg_mouvement1_eau:SetAttacker( ply )
                            dmg_mouvement1_eau:SetInflictor( self )
                            v:TakeDamageInfo( dmg_mouvement1_eau )	

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
		name = "Mouvement 3 - Flamme / Magma",
		icon = "F3",
		image = "materials/wos/skills/comp1.png",
		cooldown = 240,
		manualaim = false,
		description = "",
		help = "",
		action = function( self )

            if not self:IsValid() then return end
			local ply = self:GetOwner()
            
            self.Owner:SetSequenceOverride( "sda_atk_dieudufeu2" , 3 )

            timer.Simple( 0.1 , function() ParticleEffectAttach("[10]_unknowing_fire_circle" , 4 , ply , 0 ) end )
            timer.Simple( 0.1 , function() ParticleEffectAttach("[10]_fire_tiger_main" , 4 , ply , 0 ) end )
            timer.Simple( 0.1 , function() ParticleEffectAttach("[10]_rengoku_start" , 4 , ply , 0 ) end )
            timer.Simple( 0.4 , function() ply:StopParticles() end )
            
            ply:SetVelocity( Vector( 0 , 0 , 350 ) )
            
            timer.Simple( 0.4 , function() if not self:IsValid() then return end
                    
                ply:SetVelocity( ply:GetAimVector() * 1000 )
                ply:EmitSound( swordflamme3 , 75, 130, 1, CHAN_AUTO )
                    
                timer.Create( "mouvement-flamme3" .. ply:SteamID64() , 0.15 , 5 , function() if not self:IsValid() then return end
                            
                    for k , v in ipairs( ents.FindInSphere( ply:GetShootPos() + ply:GetAimVector() * 50 , 150 ) ) do
                                
                        if v:IsValid() and v != ply then
                                    
                            if v:IsNPC() or v:IsPlayer() then
                                        
                                local dmg_mouvement3_flamme = DamageInfo()
                                dmg_mouvement3_flamme:SetDamage( self.SaberDamage * 1.5 )
                                dmg_mouvement3_flamme:SetDamageType( 2 )
                                dmg_mouvement3_flamme:SetAttacker( ply )
                                dmg_mouvement3_flamme:SetInflictor( self )
                                v:TakeDamageInfo( dmg_mouvement3_flamme )	

                                v:EmitSound( cutjoueur, 75, math.random( 50 , 150 ) , 0.8 , CHAN_AUTO )
                                util.ScreenShake( ply:GetPos() , 30 * 0.07 , 55 , 0.45 , 5000 )
                                        
                            end
                                    
                        end
                                
                    end
                            
                end )	
                    
            end )
            
			return true
            
		end
})

-- MOUV 4

wOS.ForcePowers:RegisterNewPower({
		name = "Mouvement 4 - Flamme / Magma",
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
            
            timer.Simple( 0.05 , function() ParticleEffect( "[10]_unknowing_fire_circle" , ply:GetPos() , ply:EyeAngles() + Angle( 0 , 0 , 0 ) , ply ) end )
            timer.Simple( 0.05 , function() ParticleEffect( "[10]_fire_tiger_main" , ply:GetPos() , ply:EyeAngles() + Angle( 0 , 0 , 0 ) , ply ) end )
            timer.Simple( 0.05 , function() ParticleEffect( "[10]_rengoku_start" , ply:GetPos() , ply:EyeAngles() + Angle( 0 , 0 , 0 ) , ply ) end )
            
            timer.Simple( 0.2 , function() if not IsValid( self ) then return end
                    
                ply:SetPos( ply:GetPos() + ply:GetRight() * 200 + ply:GetForward() * 300 )	
                    
                ply:EmitSound( swordflamme6 )
                    
                timer.Simple( 0.05 , function() ParticleEffect( "[10]_unknowing_fire_circle" , ply:GetPos() , ply:EyeAngles() + Angle( 0 , 0 , 0 ) , ply ) end )
                timer.Simple( 0.05 , function() ParticleEffect( "[10]_fire_tiger_main" , ply:GetPos() , ply:EyeAngles() + Angle( 0 , 0 , 0 ) , ply ) end )
                timer.Simple( 0.05 , function() ParticleEffect( "[10]_rengoku_start" , ply:GetPos() , ply:EyeAngles() + Angle( 0 , 0 , 0 ) , ply ) end )
                    
                for k, v in pairs( ents.FindInSphere( middle, 230 ) ) do
                        
                    if ( IsValid( v ) and v:IsPlayer() and v != ply ) then
                            
                        v:TakeDamage( self.SaberDamage * 1.5 , ply, ply )
                        v:EmitSound( cutjoueur, 75, math.random(50, 150), 0.8, CHAN_AUTO ) 				
                        util.ScreenShake( ply:GetPos(), 3, 50, 0.5, 600 ) 
                            
                    end
                        
                end
                    
                timer.Simple( 0.2, function() if not IsValid( self ) then return end
                           
                    ply:SetPos( ply:GetPos() + ply:GetRight() * -400 )
                            
                    ply:EmitSound( swordflamme6 )
                            
                    timer.Simple( 0.05 , function() ParticleEffect( "[10]_unknowing_fire_circle" , ply:GetPos() , ply:EyeAngles() + Angle( 0 , 0 , 0 ) , ply ) end )
                    timer.Simple( 0.05 , function() ParticleEffect( "[10]_fire_tiger_main" , ply:GetPos() , ply:EyeAngles() + Angle( 0 , 0 , 0 ) , ply ) end )
                    timer.Simple( 0.05 , function() ParticleEffect( "[10]_rengoku_start" , ply:GetPos() , ply:EyeAngles() + Angle( 0 , 0 , 0 ) , ply ) end )

                    for k, v in pairs( ents.FindInSphere( middle, 230 ) ) do

                        if ( IsValid( v ) and v:IsPlayer() and v != ply ) then

                            v:TakeDamage( self.SaberDamage * 1.5 , ply, ply )
                            v:EmitSound( cutjoueur, 75, math.random(50, 150), 0.8, CHAN_AUTO ) 		
                            util.ScreenShake( ply:GetPos(), 3, 50, 0.5, 600 ) 

                        end

                    end

                    timer.Simple( 0.2 , function() if not IsValid( self ) then return end	

                        ply:SetPos( ply:GetPos() + ply:GetRight() * 200 + ply:GetForward() * -300 )
                                    
                        ply:EmitSound( swordflamme6 )

                        timer.Simple( 0.05 , function() ParticleEffect( "[10]_unknowing_fire_circle" , ply:GetPos() , ply:EyeAngles() + Angle( 0 , 0 , 0 ) , ply ) end )
                        timer.Simple( 0.05 , function() ParticleEffect( "[10]_fire_tiger_main" , ply:GetPos() , ply:EyeAngles() + Angle( 0 , 0 , 0 ) , ply ) end )
                        timer.Simple( 0.05 , function() ParticleEffect( "[10]_rengoku_start" , ply:GetPos() , ply:EyeAngles() + Angle( 0 , 0 , 0 ) , ply ) end )

                        for k, v in pairs( ents.FindInSphere( middle, 230 ) ) do

                            if ( IsValid( v ) and v:IsPlayer() and v != ply ) then

                                v:TakeDamage( self.SaberDamage * 1.5 , ply , ply )
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