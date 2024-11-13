AddCSLuaFile("cl_init.lua") 
AddCSLuaFile("shared.lua")

include("shared.lua") 

function ENT:Initialize() 
	self:SetModel( "models/cyanblue/bisque_doll/marin_kitagawa/npc/marin_kitagawa_tda.mdl" )
	self:InitPhysics()
	if not file.Exists("armornpc.txt", "DATA") then
		file.Write("armornpc.txt", util.TableToJSON({cost = 50, max = 100}))
		local i = 50
	end
	timer.Simple(.1, function()
		local t = file.Read("armornpc.txt", "DATA")
		t = util.JSONToTable(t)
		local cost = t.cost
		self:SetNWInt( "CostPerArmor", cost )
	end)
end

function ENT:InitPhysics()
	self:PhysicsInitBox( Vector(-18,-18,0), Vector(18,18,72) )
	self:SetUseType( SIMPLE_USE )
	self:SetCollisionGroup( COLLISION_GROUP_WEAPON )
end

function ENT:OnTakeDamage()
	return false 
end 

util.AddNetworkString("OpenArmorNPCMenu")
util.AddNetworkString("BuyArmor")
util.AddNetworkString("SaveArmorConfigChanges")

function ENT:AcceptInput( n, a, p )	
	if n == "Use" and IsValid(p) then
		p:SetNWEntity("LastNPCUsed", self)
		timer.Simple(.1, function()
			net.Start("OpenArmorNPCMenu")
			net.Send(p)
		end)
	end
end


net.Receive("BuyArmor",function(len, p)
	if not IsValid(p) then return end
	local e = p:GetNWEntity( "LastNPCUsed" )
	if not IsValid(e) then return end
	if p:GetPos():Distance(e:GetPos()) > 100 then return end
	local f = net.ReadFloat()
	local IsMax = f == 1 and true or false
	local max = p:GetNWInt("PlayerMaxArmor", 100)
	local h2a = max * f
	local price = math.Round((e:GetNWInt("CostPerArmor") * max) * f)
	local drp = DarkRP or false
	local money = drp and p:getDarkRPVar("money") or 0
	if p:Armor() >= max then 
		if drp then
			DarkRP.notify(p, 1, 2, "You cannot buy armor at this time!")
		end
		p:ConCommand( "play buttons/button10.wav" )
		return
	end
	if money >= price and p:Armor() < max then
		if drp then
			p:addMoney(-price)	
			DarkRP.notify(p, 2, 2, "You have purchased "..h2a.."AP!")
		end
		p:ConCommand( "play buttons/button14.wav" )
		local ap = math.Clamp(p:Armor(), p:Armor() + h2a, max)
		p:SetArmor(ap)
	end
	if money < price then
		if drp then
			DarkRP.notify(p, 1, 2, "You cannot afford this!")
		end
		p:ConCommand( "play buttons/button10.wav" )
	end
end)

net.Receive("SaveArmorConfigChanges", function(l, p)
	if not IsValid(p) or not p:IsSuperAdmin() then return end
	local i = net.ReadFloat()
	local ap = net.ReadInt(16)
	i = math.Round(i)
	if not type(i) == number then return end
	if not type(ap) == number then return end
	local t = {cost = i, max = ap}
	local t = util.TableToJSON(t)
	file.Write("armornpc.txt", t)
	local e = p:GetNWEntity( "LastNPCUsed" )
	if not IsValid(e) then return end
	for k, v in pairs(player.GetAll()) do
		v:SetNWInt("PlayerMaxArmor", ap)
	end
	for k, v in pairs(ents.FindByClass("armor_npc")) do
		v:SetNWInt( "CostPerArmor", i )
	end
end)

hook.Add("PlayerSpawn", "Berkark_Armor_NPC_Set_Max_Armor", function(p)
	timer.Simple(.1, function()
		local t = file.Read("armornpc.txt", "DATA")
		t = util.JSONToTable(t)
		local max = t.max
		p:SetNWInt("PlayerMaxArmor", max)	
	end)
end)