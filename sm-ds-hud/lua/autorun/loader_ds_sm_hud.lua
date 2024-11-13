--

local function AddFile(File, dir)
    local fileSide = string.lower(string.Left(File, 3))
    if SERVER and fileSide == "sv_" then
        include(dir..File)
        print("[ HUD ] SV INCLUDE: " .. File)
    elseif fileSide == "sh_" then
        if SERVER then 
            AddCSLuaFile(dir..File)
            print("[ HUD ] SH ADDCS: " .. File)
        end
        include(dir..File)
        print("[ HUD ] SH INCLUDE: " .. File)
    elseif fileSide == "cl_" then
        if SERVER then 
            AddCSLuaFile(dir..File)
            print("[ HUD ] CL ADDCS: " .. File)
        else
            include(dir..File)
            print("[ HUD ] CL INCLUDE: " .. File)
        end
    end
end

local function IncludeDir(dir)
    dir = dir .. "/"
    local File, Directory = file.Find(dir.."*", "LUA")

    for k, v in ipairs(File) do
        if string.EndsWith(v, ".lua") then
            AddFile(v, dir)
        end
    end
    
    for k, v in ipairs(Directory) do
        print("[ HUD ] Directory: " .. v)
        IncludeDir(dir..v)
    end
end

IncludeDir("hud")