Arkonfig.Aura.AllAuras = {}

net.Receive( "AVAURA:AddAura", function()
    local ent = net.ReadEntity()
    Arkonfig.Aura.AllAuras[ ent ] = !ent:GetNWBool( "DSlayerAura", false ) && true || nil
end )

hook.Add( "PreDrawHalos", "AVAURA:DisplayAura", function()
    for k, _ in pairs( Arkonfig.Aura.AllAuras ) do
        if !IsValid( k ) || !k:Alive() then Arkonfig.Aura.AllAuras[ k ] = nil continue end
        halo.Add( { k }, Arkonfig.Aura.JobsAura[ k:Team() ].color, 5, 5, 3, true, false )
    end
end )