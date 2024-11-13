wOS = wOS or {}

local cutjoueur = "cut_joueur.wav"
local swordson1 = "vent/sword_vent1.wav"
local swordson2 = "vent/sword_vent2.wav"

-- MOUV 1

wOS.ForcePowers:RegisterNewPower({
		name = "Mouvement 1 - Serpent / Cobra",
		icon = "",
		image = "materials/wos/skills/serpent1.png",
		cooldown = 100,
		manualaim = false,
		description = "",
		help = "",
		action = function( self )

            if not self:IsValid() then return end
			local ply = self:GetOwner()

			ply:EmitSound( swordson1 , 75 , 130 , 1 , CHAN_AUTO ) 		
            
            timer.Simple(0.1 , function() ParticleEffect( "[26]_snake_slash" , ply:GetPos() + ply:GetForward() * 60 , ply:EyeAngles() + Angle( 0 , -180 , 45 ) , ply ) end )
            
            timer.Simple( 0.2 , function()
                    
                if not IsValid( self ) then return end
                    
                self.Owner:SetSequenceOverride( "sda_atk7_inosuke" , 1.2 )

                for k , v in pairs( ents.FindInSphere( ply:GetPos() + ply:GetAimVector() * 150 , 150 ) ) do
                        
                    if ( IsValid( v ) and v:IsPlayer() and v != ply ) then

                        v:TakeDamage( self.SaberDamage * 1.4 , ply , ply )
                        v:EmitSound( cutjoueur , 75 , math.random( 50 , 150 ) , 0.8 , CHAN_AUTO ) 				
                        util.ScreenShake( ply:GetPos() , 3 , 50 , 0.5 , 300 )

                    end

                end	

                timer.Simple( 0.4, function()

                    if not IsValid( self ) then return end

                    ply:EmitSound( swordson2, 75, 130, 1, CHAN_AUTO )

                    for k , v in pairs( ents.FindInSphere( ply:GetPos() , 150 ) ) do

                        if ( IsValid( v ) and v:IsPlayer() and v != ply ) then

                            v:TakeDamage( self.SaberDamage * 1.4 , ply , ply )
                            v:EmitSound( cutjoueur , 75 , math.random( 50 , 150 ) , 0.8 , CHAN_AUTO ) 				
                            util.ScreenShake( ply:GetPos(), 3, 50, 0.5, 300 ) 

                        end

                    end

                end )

            end )

			return true

		end
})

-- MOUV 2

wOS.ForcePowers:RegisterNewPower({
		name = "Mouvement 2 - Serpent / Cobra",
		icon = "",
		image = "materials/wos/skills/serpent2.png",
		cooldown = 200,
		manualaim = false,
		description = "",
		help = "",
		action = function( self )

            if not self:IsValid() then return end
			local ply = self:GetOwner()

			timer.Simple( 0.2, function()
                    
                if not IsValid( self ) then return end
                    
                self.Owner:SetSequenceOverride( "sda_atk_tanjiro7" , 1.2 )

                for k, v in pairs( ents.FindInSphere( ply:GetPos() + ply:GetAimVector() * 150 , 150 ) ) do
                        
                    if ( IsValid( v ) and v:IsPlayer() and v != ply ) then
                            
                        v:TakeDamage( self.SaberDamage * 1.4 , ply , ply )
                        v:EmitSound( cutjoueur , 75 , math.random( 50 , 150 ) , 0.8 , CHAN_AUTO ) 				
                        util.ScreenShake( ply:GetPos() , 3 , 50 , 0.5 , 300 ) 
                            
                    end
                        
                end	
                    
                timer.Simple( 0.4, function() 
                            
                    if not IsValid( self ) then return end	
                            
                    ply:EmitSound( swordson2, 75, 130, 1, CHAN_AUTO ) 
                            
                    for k, v in pairs( ents.FindInSphere( ply:GetPos() , 150 ) ) do
                                
                        if ( IsValid( v ) and v:IsPlayer() and v != ply ) then
                                    
                            v:TakeDamage( self.SaberDamage * 1.4 , ply, ply )
                            v:EmitSound( cutjoueur, 75, math.random(50, 150), 0.8, CHAN_AUTO ) 				
                            util.ScreenShake( ply:GetPos(), 3, 50, 0.5, 300 ) 
                        end
                                
                    end
                            
                end )
                    
            end )

            self.SerpentMouvement1 = ents.Create( "prop_dynamic" )
            self.SerpentMouvement1:SetModel( "models/obanai_snake.mdl" )
            self.SerpentMouvement1:SetModelScale( 0 , 0 )
            self.SerpentMouvement1:SetModelScale( 0.7 , 0.5 )
            self.SerpentMouvement1:SetPos( self.Owner:GetPos() + Vector(self.Owner:GetForward() * 75 ) + Vector( 0 , 0 , 25 ) )
            self.SerpentMouvement1:SetOwner( self.Owner )
            self.SerpentMouvement1:SetAngles( self.Owner:GetAngles() )
            self.SerpentMouvement1:Spawn()
            self.SerpentMouvement1:ResetSequence( "attack1" )
            self.SerpentMouvement1:SetSequence("attack1")

            timer.Simple( 1.7, function()
                self.SerpentMouvement1:SetModelScale( 0 , 0.5)
            end )

            timer.Simple( 2.7, function()
                self.SerpentMouvement1:Remove()
            end )

			return true

		end
})

-- MOUV 3

wOS.ForcePowers:RegisterNewPower({
		name = "Mouvement 3 - Serpent / Cobra",
		icon = "",
		image = "materials/wos/skills/serpent3.png",
		cooldown = 240,
		manualaim = false,
		description = "",
		help = "",
		action = function( self )

            if not self:IsValid() then return end
			local ply = self:GetOwner()

            timer.Simple( 0.2, function()

                if not IsValid( self ) then return end
                    
                self.Owner:SetSequenceOverride( "sda_atk_tanjiro9" , 1.5 )

                for k, v in pairs( ents.FindInSphere( ply:GetPos() + ply:GetAimVector() * 150 , 150 ) ) do

                    if ( IsValid( v ) and v:IsPlayer() and v != ply ) then

                        timer.Simple( 1 , function()

                            v:SetMoveType(MOVETYPE_NONE)
                            v:TakeDamage( self.SaberDamage * 1.4 , ply , ply )
                            v:EmitSound( cutjoueur , 75 , math.random( 50 , 150 ) , 0.8 , CHAN_AUTO ) 				
                            util.ScreenShake( ply:GetPos() , 3 , 50 , 0.5 , 300 )
                            ParticleEffectAttach( "[*]_poison_aura" , 4 , v , 0 )
                            ParticleEffectAttach( "[26]_snake_catch" , 4 , v , 0 )
                            timer.Simple( 0.9 , function() v:StopParticles() v:SetMoveType(MOVETYPE_WALK) end )

                        end )
                            
                    end
                        
                end	
                    
            end )
            
            self.SerpentMouvement3 = ents.Create( "prop_dynamic" )
            self.SerpentMouvement3:SetModel( "models/obanai_snake.mdl" )
            self.SerpentMouvement3:SetModelScale( 0 , 0 )
            self.SerpentMouvement3:SetModelScale( 1 , 0.5 )
            self.SerpentMouvement3:SetPos( self.Owner:GetPos() + Vector(self.Owner:GetForward() * 75 ) + Vector( 0 , 0 , 25 ) )
            self.SerpentMouvement3:SetOwner( self.Owner )
            self.SerpentMouvement3:SetAngles( self.Owner:GetAngles() )
            self.SerpentMouvement3:Spawn()
            self.SerpentMouvement3:ResetSequence( "attack_distance2" )
            self.SerpentMouvement3:SetSequence( "attack_distance2" )

            timer.Simple( 1.7 , function()
                self.SerpentMouvement3:SetModelScale( 0 , 0.5 )
            end )

            timer.Simple( 2.7 , function()
                self.SerpentMouvement3:Remove()
            end )

			return true

		end
})

-- MOUV 4

wOS.ForcePowers:RegisterNewPower({
		name = "Mouvement 4 - Serpent / Cobra",
		icon = "",
		image = "materials/wos/skills/serpent4.png",
		cooldown = 300,
		manualaim = false,
		description = "",
		help = "",
		action = function( self )

            if not self:IsValid() then return end
			local ply = self:GetOwner()
            
            self.Owner:SetSequenceOverride( "sda_atk2_zenitsu" , 1.5 )

            self.SerpentMouvement4 = ents.Create( "prop_dynamic" )
            self.SerpentMouvement4:SetModel( "models/obanai_snake.mdl" )
            self.SerpentMouvement4:SetModelScale( 0 , 0 )
            self.SerpentMouvement4:SetModelScale( 1.5 , 0.5 )
            self.SerpentMouvement4:SetPos( self.Owner:GetPos() + Vector( 0 , 0 , 25 ) )
            self.SerpentMouvement4:SetOwner( self.Owner )
            self.SerpentMouvement4:SetAngles( self.Owner:GetAngles() )
            self.SerpentMouvement4:Spawn()
            self.SerpentMouvement4:ResetSequence( "attack2" )
            self.SerpentMouvement4:SetSequence( "attack2" )

            timer.Simple( 1.9 , function()
                self.SerpentMouvement4:SetModelScale( 0 , 0.5 )
            end )

            timer.Simple( 2.9 , function()
                self.SerpentMouvement4:Remove()
            end )

            timer.Simple( 0.001 ,function() 
                ParticleEffectAttach( "[26]_snake_around_ground" , 4, ply, 0) 
                ParticleEffectAttach( "[26]_snake_around_inf" , 4, ply, 0) 
                ParticleEffectAttach( "[26]_snake_catch" , 4 , ply, 0) 
            end )

            ply:SetMoveType( MOVETYPE_NONE )

            timer.Simple( 0.05 , function()
                    
                for k , v in pairs(ents.FindInSphere( ply:GetPos() , 300) ) do
                        
                    if v:IsValid() and v != ply then
                            
                        if v:IsNPC() or v:IsPlayer() then
                                
                            ParticleEffectAttach( "[*]_poison_aura" , 4 , v , 0 )
                            v:SetMoveType(MOVETYPE_NONE)
                            ParticleEffectAttach( "[26]_snake_catch" , 4 , v , 0 )
                            timer.Simple( 0.9 , function() v:StopParticles() v:SetMoveType(MOVETYPE_WALK) end )
                                
                        end
                            
                    end
                        
                end
                    
            end )

            timer.Create( "mouvement-serpent4" .. ply:SteamID64() , 0.05 , 5 , function() if not self:IsValid() then return end
                    
                for k , v in pairs( ents.FindInSphere( ply:GetPos() , 300 ) ) do
                        
                    if v:IsValid() and v != ply then
                            
                        if v:IsNPC() or v:IsPlayer() then
                                
                            local dmg_mouvement4_serpent = DamageInfo()
                            dmg_mouvement4_serpent:SetDamage( self.SaberDamage * 1.4 )
                            dmg_mouvement4_serpent:SetDamageType( 2 )
                            dmg_mouvement4_serpent:SetAttacker( ply )
                            dmg_mouvement4_serpent:SetInflictor( self )
                            v:TakeDamageInfo( dmg_mouvement4_serpent )	

                            v:EmitSound( cutjoueur , 75 , math.random( 50 , 150 ) , 0.8 , CHAN_AUTO ) 					
                            util.ScreenShake( ply:GetPos() , 30 * 0.07 , 55 , 0.45 , 5000 )

                        end
                            
                    end
                        
                end
                    
            end )
            
            timer.Simple( 1, function() 
                    
                ply:SetMoveType( MOVETYPE_WALK )
                ply:StopParticles()
                    
            end )

			return true

		end
})