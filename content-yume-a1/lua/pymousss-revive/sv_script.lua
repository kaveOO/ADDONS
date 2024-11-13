----------------------------------]
-- dév by pymousss
-- pymousss.dev@gmail.com
----------------------------------]

util.AddNetworkString( "DSPanelReleve" )
util.AddNetworkString( "DSReleveFunction" )
util.AddNetworkString( "DSKillFunction" )

----------------------------------]
-- dév by pymousss
-- pymousss.dev@gmail.com
----------------------------------]

local CorpsTable = {}
local TimerCorps = {}
local FireTable = {}
local TimerFire = {}
DSConfig = DSConfig or {}
DSConfig.ReleveMod = DSConfig.ReleveMod or {}

----------------------------------]
-- dév by pymousss
-- pymousss.dev@gmail.com
----------------------------------]

local function ValeurUnique()

    return "CorpsUniqueID_" .. os.time() .. "_" .. math.random( 1 , 100000 )

end

----------------------------------]
-- dév by pymousss
-- pymousss.dev@gmail.com
----------------------------------]

hook.Add( "PlayerDeath" , "DS:SpawnEntityPlayerModel" , function( a , b , c )

    local ValeurUnique = ValeurUnique()

    local Corps = ents.Create( "prop_ragdoll" )
    Corps:SetModel( a:GetModel() )
    Corps:SetPos( a:GetPos() )
    Corps:SetAngles( a:EyeAngles() )
    Corps:Spawn()
    Corps:SetNWString( "CorpsModelID" , tostring( a:GetModel() ) )
    Corps:SetNWString( "CorpsJoueurID" , tostring( a:SteamID64() ) )
    Corps:SetNWString( "CorpsUniqueID" , tostring( ValeurUnique ) )
    Corps:SetNWString( "CorpsRPName" , tostring( a:Nick() ) )
    Corps:SetNWBool( "CorpsUseBool" , true )

    CorpsTable[ValeurUnique] = Corps

    a:GetRagdollEntity():Remove()

    table.insert( CorpsTable , Corps )

    if TimerCorps[ValeurUnique] then

        timer.Remove(TimerCorps[ValeurUnique])

    end

    TimerCorps[ValeurUnique] = "DSTimerRemoveEntityPlayerModel" .. ValeurUnique
    timer.Create( TimerCorps[ValeurUnique] , DSConfig.ReleveMod.TimerCorps , 1 , function()

        if IsValid( CorpsTable[ValeurUnique] ) then
            CorpsTable[ValeurUnique]:Remove()
        end

        TimerCorps[ValeurUnique] = nil
        CorpsTable[ValeurUnique] = nil

    end )

end )

----------------------------------]
-- dév by pymousss
-- pymousss.dev@gmail.com
----------------------------------]

hook.Add( "KeyPress" , "DS:UseEntityPlayerModel" , function( a , b )

    local Ent = a:GetEyeTrace().Entity
    local trace = a:GetEyeTrace()

    if not IsValid( Ent ) then return end
	if Ent:GetClass() != "prop_ragdoll" then return end

    if b == DSConfig.ReleveMod.BindOpen and trace.HitPos:Distance(a:GetShootPos()) <= DSConfig.ReleveMod.DistanceUse and Ent:GetNWBool( "CorpsUseBool" ) then

        net.Start( "DSPanelReleve" )
            net.WriteString( Ent:GetNWString( "CorpsModelID" ) )
            net.WriteString( Ent:GetNWString( "CorpsJoueurID" ) )
            net.WriteString( Ent:GetNWString( "CorpsUniqueID" ) )
            net.WriteString( Ent:GetNWString( "CorpsRPName" ) )
            net.WriteBool( Ent:GetNWBool( "CorpsUseBool" ) )
        net.Send( a )

    end

end )

----------------------------------]
-- dév by pymousss
-- pymousss.dev@gmail.com
----------------------------------]

net.Receive("DSKillFunction", function( a , b )

    local uniqueid = net.ReadString()
    local bool = net.ReadBool()

    local Corps = CorpsTable[uniqueid]

    if IsValid(Corps) then

        Corps:SetModel( "models/player/charple.mdl" )
        Corps:SetNWBool( "CorpsUseBool" , false )

        local fire = ents.Create( "env_fire" )
        fire:SetPos( Corps:GetPos() )
        fire:SetKeyValue( "firesize" , tostring( DSConfig.ReleveMod.SizeFire ) )
        fire:Spawn()
        fire:Fire( "StartFire" , "" , 0 )
        fire:Fire( "kill" , "" , DSConfig.ReleveMod.TimerKill )

        sound.Play( "ambient/fire/ignite.wav", Corps:GetPos() , 90 , 100 , 1 )

        FireTable[uniqueid] = fire

        if TimerFire[uniqueid] then

            timer.Remove(TimerFire[uniqueid])

        end

        TimerFire[uniqueid] = "DSTimerRemoveEntityPlayerModel" .. uniqueid
        timer.Create( TimerFire[uniqueid] , DSConfig.ReleveMod.TimerKill , 1 , function()

            if IsValid( FireTable[ValeurUnique] ) then
                FireTable[ValeurUnique]:Remove()
            end

            TimerFire[uniqueid] = nil

        end )

        timer.Simple( DSConfig.ReleveMod.TimerKill , function()
        
            Corps:Remove()
            CorpsTable[uniqueid] = nil
        
        end )

    end

end)

----------------------------------]
-- dév by aikaya
----------------------------------]

util.AddNetworkString("DSCooldownValue")

local CooldownTable = {}

hook.Add("PlayerDeath", "DS:Cooldown", function(ply)
    CooldownTable[ply:SteamID64()] = CurTime() + 60
end)

hook.Add("Think", "DS:SendCooldown", function()
    for _, ply in ipairs(player.GetAll()) do
        if CooldownTable[ply:SteamID64()] then
            net.Start("DSCooldownValue")
            net.WriteFloat(CooldownTable[ply:SteamID64()] - CurTime())
            net.Send(ply)
        end
    end
end)

net.Receive("DSReleveFunction", function(a, b)
    local model = net.ReadString()
    local joueurid = net.ReadString()
    local uniqueid = net.ReadString()

    if CooldownTable[joueurid] and CooldownTable[joueurid] > CurTime() then
        return
    end

    local Corps = CorpsTable[uniqueid]

    for i, joueur in ipairs(player.GetAll()) do
        if joueur:SteamID64() == joueurid then
            joueur:Spawn()
            joueur:SetModel(model)
            joueur:SetPos(Corps:GetPos())
            joueur:SetHealth(joueur:GetMaxHealth() * DSConfig.ReleveMod.SetHP / 100)
            break
        end
    end

    if IsValid(Corps) then
        Corps:Remove()
        CorpsTable[uniqueid] = nil
    end
end)

