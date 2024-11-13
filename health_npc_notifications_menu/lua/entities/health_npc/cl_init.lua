include("shared.lua") 


surface.CreateFont( "TRE80", {
    font = "Trebuchet MS", 
    size = ScreenScale(30),
    weight = 500,
    antialias = true,
})

surface.CreateFont( "TRE65", {
    font = "Trebuchet MS", 
    size = ScreenScale(23),
    weight = 500,
    antialias = true,
})

surface.CreateFont( "TRE50", {
    font = "Trebuchet MS", 
    size = ScreenScale(17),
    weight = 500,
    antialias = true,
})

surface.CreateFont( "TRE40", {
    font = "Trebuchet MS", 
    size = ScreenScale(14),
    weight = 500,
    antialias = true,
})

surface.CreateFont( "TRE35", {
    font = "Trebuchet MS", 
    size = ScreenScale(10),
    weight = 500,
    antialias = true,
})

surface.CreateFont( "TRE28", {
    font = "Trebuchet MS", 
    size = ScreenScale(8),
    weight = 500,
    antialias = true,
})

surface.CreateFont( "TRE20", {
    font = "Trebuchet MS", 
    size = ScreenScale(7.5),
    weight = 500,
    antialias = true,
})

function ENT:Draw()

    self:DrawModel()

    local text = "Health"
    local offset = Vector(0, 0, 80)
    local origin = self:GetPos()
    if LocalPlayer():GetPos():DistToSqr(origin) > (500*500) then return end
    local pos = origin + offset
    local ang = (LocalPlayer():EyePos() - pos):Angle()
    ang:RotateAroundAxis(ang:Right(), 90)
    ang:RotateAroundAxis(ang:Up(), 90)
    ang:RotateAroundAxis(ang:Forward(), 180)

    cam.Start3D2D(pos, ang, 0.04)
        surface.SetFont("TRE80")
        local w, h = surface.GetTextSize(text)
        draw.RoundedBox( 0, -w*.5 -30, -h*.5, w + 60, h, Color(231, 76, 60, 150))
        draw.SimpleText(text, "TRE80", 0, 0, Color(255,255,255), 1, 1)

        draw.RoundedBox( 0, -w*.5 -30, -h*.5 , 15, 2, Color(255, 255, 255))
        draw.RoundedBox( 0, -w*.5 -30, -h*.5, 2, 15, Color(255, 255, 255))

        draw.RoundedBox( 0, -w*.5 -30, h*.5 - 2, 15, 2, Color(255, 255, 255))
        draw.RoundedBox( 0, -w*.5 -30, h*.5 - 15, 2, 15, Color(255, 255, 255))

        draw.RoundedBox( 0, w*.5 + 30 - 14, h*.5 - 2, 15, 2, Color(255, 255, 255))
        draw.RoundedBox( 0, w*.5 + 30 - 1, h*.5 - 15, 2, 15, Color(255, 255, 255))

        draw.RoundedBox( 0, w*.5 + 30 - 14,  -h*.5, 15, 2, Color(255, 255, 255))
        draw.RoundedBox( 0, w*.5 + 30 - 1, -h*.5, 2, 15, Color(255, 255, 255))
    cam.End3D2D()

end

local blur = Material( "pp/blurscreen" )
function draw.BlurPanel( panel, amount )
	local x, y = panel:LocalToScreen(0, 0)
	local w, h = ScrW(), ScrH()
	surface.SetDrawColor(255, 255, 255)
	surface.SetMaterial(blur)
	for i = 1, 5 do
		blur:SetFloat( "$blur", (i)*(amount or 1) )
		blur:Recompute()
		render.UpdateScreenEffectTexture()
		surface.DrawTexturedRect( -x, -y, w, h )
	end
end


local function OpenNPCHealthVendor()
	
	local sw, sh = ScrW(), ScrH()
    local p = LocalPlayer()
    p:ConCommand( "play vo/npc/male01/health05.wav" )
    local e = p:GetNWEntity( "LastNPCUsed" )

    local f = vgui.Create("DFrame")
    f:SetSize(sw, sh)
    f:MakePopup()
    f:Center()
    f:SetTitle("")
    f.Paint = function(s, w, h)
    	draw.BlurPanel( s )

        local frac = math.Clamp(p:Health()/p:GetMaxHealth(), 0, 1)

        draw.RoundedBox( 0, w*.5 - w*.15, h*.66, w*.3, h*.041, Color(189, 195, 199))
        draw.RoundedBox( 0, w*.5 - w*.15 + 1, h*.66 + 1, w*.3 - 2, h*.041 - 2 , Color(52, 73, 94) )
        draw.RoundedBox( 0, w*.5 - w*.12, h *.665 , w*.24, h*.03, Color(255, 255, 255))
        draw.RoundedBox( 0, w*.5 - w*.12 + 1, h *.665 + 1, (w*.24 * frac - 2), h*.03 - 2, Color(231, 76, 60))
        draw.SimpleText( p:Health(), "TRE28", w*.375, h *.678, Color(255, 255, 255), 2, 1)
        draw.SimpleText( p:GetMaxHealth(), "TRE28", w*.625, h *.678, Color(255, 255, 255), 0, 1)
    end

    local fr = vgui.Create("DPanel", f)
	fr:SetSize(sw *.3, sh *.3)
	fr:Center()
	fr.grad = Material( "vgui/gradient_up" )
    fr.Paint = function(s,w,h)
        draw.RoundedBox( 0, 0, 0, w, h, Color(189, 195, 199) )
        draw.RoundedBox( 0, 1, 1, w -2, h -2, Color(52, 73, 94) )
        surface.SetMaterial(s.grad)
    	surface.SetDrawColor(Color(2, 23, 34))
    	surface.DrawTexturedRect(1, 1, w - 2, w - 2)
    end

    if p:IsSuperAdmin() then
        local btn = vgui.Create("DButton", f)
        btn:SetPos(sw * .5 - sw*.05, sh * .5 - sh * .2)
        btn:SetSize( sw * .1, sh * .025)
        btn:SetIcon("icon16/shield.png")
        btn:SetFont("TRE28")
        btn:SetTextColor( Color(255, 255, 255) )
        btn:SetText("Configure Price")
        btn.Paint = function(s, w, h)
            draw.RoundedBox( 0, 0, 0, w, h, Color(189, 195, 199) )
            draw.RoundedBox( 0, 1, 1, w -2, h -2, Color(52, 73, 94) )
        end
        btn.DoClick = function(s)
            local frame = vgui.Create("DFrame", f)
            frame:SetSize(sw * .1, sw * .06)
            frame:SetPos( sw * .5 - sw * .05, sh * .18)
            frame:SetTitle("Configuration")
            frame.Paint = function(s, w, h)
                draw.RoundedBox( 0, 0, 0, w, h, Color(189, 195, 199) )
                draw.RoundedBox( 0, 1, 1, w -2, h -2, Color(52, 73, 94) )
            end

            local lbl = vgui.Create("DLabel", frame)
            lbl:Dock(TOP)
            lbl:SetText("Default Cost Per 1 HP?")
            lbl:SetFont("TRE20")
            lbl:SetContentAlignment(8)
            lbl:SizeToContents()

            local te = vgui.Create("DTextEntry", frame)
            te:Dock(TOP)
            te:SetValue(e:GetNWInt("CostPerHealth"))

            local dbtn = vgui.Create("DButton", frame)
            dbtn:Dock(BOTTOM)
            dbtn:SetText("Confirm Price")
            dbtn:SetFont("TRE20")
            dbtn.DoClick = function(s)
                net.Start("SaveHealthConfigChanges")
                    net.WriteFloat(te:GetValue())
                net.SendToServer()
            end
        end
    end

    local h = vgui.Create("DPanel", fr)
    h:Dock(TOP)
    h:DockMargin( sh *.0075, sh *.0075, sh *.0075, sh *.0075 )
    h:SetTall( fr:GetTall() / 3 )
    h.URL = "https://steamcommunity.com/id/Berkark"
    h.Paint = function(s, w, h) 
        x, y = (sh * .11), 0
        local add = p:IsSuperAdmin() and 0 or h*.2
        draw.RoundedBox( 0, 0, 0, w, h, Color(72, 93, 114, 155))
    	draw.SimpleText( "Hello There!", "TRE40", w*.22 , h *.2 + add, Color(255, 255, 255), 0, 1 )
        draw.SimpleText( "If you require healing please select an option below!", "TRE20", w*.22 , h *.42 + add, Color(255, 255, 255), 0, 1 )
        if p:IsSuperAdmin() then
            draw.RoundedBox( 0, x, h*.55, w - x - w*.008, h*.4, Color(186, 100, 100) )
            draw.SimpleText( "[ADMINS] any issues with this addon, contact me on steam", "TRE20", w*.22 , h *.65, Color(255, 255, 255), 0, 1 )
            draw.SimpleText( s.URL, "TRE20", w*.22 , h *.82, Color(55, 55, 155), 0, 1 )
        end
    end
    h.Think = function(s)
        if not p:IsSuperAdmin() then return end
        local w, h = s:GetWide(), s:GetTall()
        local mx, my = gui.MousePos()
        if input.IsMouseDown( MOUSE_FIRST ) and (mx > (sw * .5 - w*.3)) and (mx < (sw*.5 + w*.49)) and (my > (sh * .5 - h * .9)) and (my < (sh * .5 - h * .48)) then
            gui.OpenURL( s.URL )
        end
    end

    local mdl = vgui.Create( "DModelPanel" , h)
	mdl:Dock(LEFT)
	mdl:SetWide(sh * .11)
	mdl:SetModel("models/Humans/Group03m/male_09.mdl")
	function mdl:LayoutEntity( Entity ) return end
	local angl = 60
	mdl:SetCamPos(Vector(70,-15,angl))
	mdl:SetLookAt(Vector(0,0,(angl + 3)))
	mdl:SetFOV(15)

    local b = vgui.Create("DButton", h)
    b:SetSize(sh*.02, sh*.02)
    b:SetPos(fr:GetWide() - sh*.04, sh*.007)
    b:SetText("")
    b.Paint = function(s, w, h)
        draw.RoundedBox(8, 0, 0, w, h, Color(231, 76, 60))
    end
    b.DoClick = function(s)
        f:Close()
    end

    local bg = vgui.Create("DIconLayout", fr)
    bg:Dock(FILL)
    bg:DockMargin( sh * .01, 0, sh * .01, sh * .01)
    bg.Paint = function(s, w, h) end
    local BW = (fr:GetWide() - sh * .02) / 2
    local BH = (fr:GetTall() - h:GetTall() - sh * .0225) / 2   

    local col
    for k,v in SortedPairs(HEALTH_VALUES_MULTIPLIERS) do

        local hp = bg:Add("DButton")
        hp:SetFont("TRE35")
        hp:SetText( "" )
        hp:SetSize(BW, BH)
        hp.DoClick = function()
            net.Start("BuyHealth")
                net.WriteFloat(v)
            net.SendToServer()
        end
        hp.Paint = function(s,w,h)

            local health = LocalPlayer():Health()
            local maxhealth = LocalPlayer():GetMaxHealth()
            local quantity = math.Round(maxhealth * v)
            local IsMax = (quantity == maxhealth) and true or false
            quantity = IsMax and "MAX" or quantity
            local price = math.Round((e:GetNWInt("CostPerHealth") * maxhealth) * v)
            
            local z = sh * .075

            col = s:IsHovered() and Color(211, 56, 40) or Color(231, 76, 60)
            draw.RoundedBox(8, w*.5 - w*.375, h*.5 - h*.25, w*.75, h*.5, Color(245, 245, 245))
            draw.RoundedBox(z * .49, w*.25 - z*.5, h*.5 - z*.5, z, z, col) 

            draw.SimpleText( quantity, "TRE40", w*.25, h*.5, Color(255, 255, 255), 1, 1 ) 
            draw.SimpleText( "$"..price, "TRE35", w*.85, h*.5, Color(231, 76, 60), 2, 1 ) 
        end
	end
    f:ShowCloseButton( false )
end

net.Receive("OpenHealthNPCMenu",function()
	OpenNPCHealthVendor()
end)