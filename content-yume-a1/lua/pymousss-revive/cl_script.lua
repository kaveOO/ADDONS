----------------------------------]
-- dév by pymousss
-- pymousss.dev@gmail.com
----------------------------------]

DSConfig = DSConfig or {}
DSConfig.ReleveMod = DSConfig.ReleveMod or {}
CooldownTable = CooldownTable or {}


local function wr( pixels , base )

    base = base or 1920
    return ScrW() / ( base / pixels )

end

local function hr( pixels , base )

    base = base or 1080
    return ScrH() /( base / pixels )

end

surface.CreateFont( "DS:001AddonsFont15" , { font = "Blood Crow" , extended = false , size = ScreenScale(15) } )
surface.CreateFont( "DS:001AddonsFont25" , { font = "Blood Crow" , extended = false , size = ScreenScale(25) } )



local image_1 = Material( "materials/ds/revive/image_1.png" , "noclamp smooth" )
local image_2 = Material( "materials/ds/revive/image_2.png" , "noclamp smooth" )
local image_3 = Material( "materials/ds/revive/image_3.png" , "noclamp smooth" )
local image_4 = Material( "materials/ds/revive/image_4.png" , "noclamp smooth" )
local image_5 = Material( "materials/ds/revive/image_5.png" , "noclamp smooth" )
local image_6 = Material( "materials/ds/revive/image_6.png" , "noclamp smooth" )

----------------------------------]
-- dév by pymousss
-- DEV BY AIKAYA <3
----------------------------------]

net.Receive( "DSPanelReleve" , function()

    local model = net.ReadString()
    local joueurid = net.ReadString()
    local uniqueid = net.ReadString()
    local rpname = net.ReadString()
    local bool = net.ReadBool()

    local speedanim = .3

    local Frame = vgui.Create( "DFrame" )
    Frame:SetSize( wr(710) , hr(360) )
    Frame:SetPos( wr(605) , hr(1080) )
    Frame:SetTitle( "" )
    Frame:SetVisible( true )
    Frame:SetDraggable( false )
    Frame:ShowCloseButton( false )
    Frame:MakePopup()
    Frame:MoveTo( wr(605) , hr(360) , speedanim , 0 , -1 , function() end )
    Frame.Paint = function( a , b , c )

        surface.SetMaterial( image_1 )
        surface.SetDrawColor( 255 , 255 , 255 )
        surface.DrawTexturedRect( 0 , 0 , b , c )

        draw.SimpleText( rpname , "DS:001AddonsFont15" , wr(75) , hr(45) , Color( 150 , 150 , 150 ) , TEXT_ALIGN_LEFT , TEXT_ALIGN_CENTER )

    end

    local CloseFrame = vgui.Create( "DButton" , Frame )
    CloseFrame:SetSize( wr(121) , hr(80) )
    CloseFrame:SetPos( wr(579) , hr(10) )
    CloseFrame:SetText( "" )
    CloseFrame.Paint = function( a , b , c )

        surface.SetMaterial( image_2 )
        surface.SetDrawColor( 255 , 255 , 255 )
        surface.DrawTexturedRect( 0 , 0 , b , c )

    end
    CloseFrame.DoClick = function()

        Frame:MoveTo( wr(605) , hr(1080) , speedanim , 0 , -1 , function() end )

        timer.Simple( speedanim , function()

            Frame:Remove()

        end )

    end

    local ReleveFrame = vgui.Create("DButton", Frame)

    ReleveFrame:SetSize(wr(690), hr(125))
    ReleveFrame:SetPos(wr(10), hr(95))
    ReleveFrame:SetText("")
    ReleveFrame.Paint = function(a, b, c)
        if a:IsHovered() then
            surface.SetMaterial(image_5)
            surface.SetDrawColor(255, 255, 255)
            surface.DrawTexturedRect(0, 0, b, c)
        else
            surface.SetMaterial(image_3)
            surface.SetDrawColor(255, 255, 255)
            surface.DrawTexturedRect(0, 0, b, c)
        end
    
        local cooldown = CooldownTable[LocalPlayer():SteamID64()] or 0
        if cooldown > 0 then
            draw.SimpleText("Relever dans : " .. tostring(math.ceil(cooldown)) .. "s", "DS:001AddonsFont25", b / 2, c / 2, Color(218, 218, 218), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
        else
            if a:IsHovered() then
                draw.SimpleText("Relever", "DS:001AddonsFont25", b / 2, c / 2, Color(255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            else
                draw.SimpleText("Relever", "DS:001AddonsFont25", b / 2, c / 2, Color(218, 218, 218), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            end
        end
    end
    
    net.Receive("DSCooldownValue", function()
        local cooldown = net.ReadFloat()
        CooldownTable[LocalPlayer():SteamID64()] = cooldown
    end)

    ReleveFrame.DoClick = function()
        -- aikaya check if cooldown is > 0
        local cooldown = CooldownTable[joueurid] or 0
        if cooldown > 0 then
            return
        end

        net.Start("DSReleveFunction")
        net.WriteString(model)
        net.WriteString(joueurid)
        net.WriteString(uniqueid)
        net.SendToServer()

        Frame:MoveTo(wr(605), hr(1080), speedanim, 0, -1, function() end)

        timer.Simple(speedanim, function()
            Frame:Remove()
        end)
    end

    local KillFrame = vgui.Create( "DButton" , Frame )
    KillFrame:SetSize( wr(690) , hr(125) )
    KillFrame:SetPos( wr(10) , hr(225) )
    KillFrame:SetText( "" )
    KillFrame.Paint = function( a , b , c )

        if a:IsHovered() then

            surface.SetMaterial( image_6 )
            surface.SetDrawColor( 255 , 255 , 255 )
            surface.DrawTexturedRect( 0 , 0 , b , c )

            draw.SimpleText( "Tuer" , "DS:001AddonsFont25" , b / 2 , c / 2 , Color( 255 , 255 , 255 ) , TEXT_ALIGN_CENTER , TEXT_ALIGN_CENTER )

        else

            surface.SetMaterial( image_4 )
            surface.SetDrawColor( 255 , 255 , 255 )
            surface.DrawTexturedRect( 0 , 0 , b , c )

            draw.SimpleText( "Tuer" , "DS:001AddonsFont25" , b / 2 , c / 2 , Color( 218, 218, 218 ) , TEXT_ALIGN_CENTER , TEXT_ALIGN_CENTER )

        end

    end
    KillFrame.DoClick = function()

        net.Start( "DSKillFunction" )
            net.WriteString( uniqueid )
            net.WriteBool( bool )
        net.SendToServer()

        Frame:MoveTo( wr(605) , hr(1080) , speedanim , 0 , -1 , function() end )

        timer.Simple( speedanim , function()

            Frame:Remove()

        end )

    end

end )
