util.AddNetworkString( "AVAURA:AddAura" )

Arkonfig.Aura.AllAuras = {}

hook.Add( "PlayerSay", "AVAURA:ToggleAura", function( ply, text )
    if text == "/aura" && Arkonfig.Aura.JobsAura[ ply:Team() ] then
        ply:SetNWBool( "DSlayerAura", !ply:GetNWBool( "DSlayerAura", false ) )

        local narration = Arkonfig.Aura.Narrations[ Arkonfig.Aura.JobsAura[ ply:Team() ].faction ]
        narration = ply:GetNWBool( "DSlayerAura", false ) && narration[ "Activer" ] || narration[ "Desactiver" ]
        ply:Say( Arkonfig.Aura.NarrationCommand .. " " .. narration )

        Arkonfig.Aura.AllAuras[ ply ] = ply:GetNWBool( "DSlayerAura", false ) && true || nil
        
        net.Start( "AVAURA:AddAura" )
            net.WriteEntity( ply )
        net.Broadcast()

        return ""
    end
end )

hook.Add( "PlayerSpawn", "AVAURA:ResetAura", function( ply )
    ply:SetNWBool( "DSlayerAura", false )
end )

hook.Add( "PlayerInitialSpawn", "AVAURA:SyncAura", function( ply )
    for k, _ in pairs( Arkonfig.Aura.AllAuras ) do
        net.Start( "AVAURA:AddAura" )
            net.WriteEntity( k )
        net.Send( ply )
    end
end )