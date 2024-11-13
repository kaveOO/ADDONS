if SERVER then
    AddCSLuaFile( "aura-dslayer/sh_config.lua" )
    AddCSLuaFile( "aura-dslayer/cl_aura.lua" )
    
    include( "aura-dslayer/sh_config.lua" )
    include( "aura-dslayer/sv_aura.lua" )
else
    include( "aura-dslayer/sh_config.lua" )
    include( "aura-dslayer/cl_aura.lua" )
end