AddCSLuaFile( "cl_init.lua" ) 
AddCSLuaFile( "shared.lua" )

include("shared.lua") 

function ENT:Initialize() 
	self:SetModel( "models/yufu/oldjimmy/demonslayer/custom/genya_shinazugawa.mdl" )
	self:InitPhysics()
	if not file.Exists("healthnpc.txt", "DATA") then
		file.Write("healthnpc.txt", 50)
		local i = 50
	end
	timer.Simple(.1, function()
		local i = file.Read("healthnpc.txt", "DATA")
		i = tonumber(i)
		self:SetNWInt( "CostPerHealth", i )
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

util.AddNetworkString("OpenHealthNPCMenu")
util.AddNetworkString("BuyHealth")
util.AddNetworkString("SaveHealthConfigChanges")

function ENT:AcceptInput( n, a, p )	
	if n == "Use" and IsValid(p) then
		p:SetNWEntity("LastNPCUsed", self)
		timer.Simple(.1, function()
			net.Start("OpenHealthNPCMenu")
			net.Send(p)
		end)
	end
end

net.Receive("BuyHealth",function(len, p)
	if not IsValid(p) then return end
	local e = p:GetNWEntity( "LastNPCUsed" )
	if not IsValid(e) then return end
	if p:GetPos():Distance(e:GetPos()) > 100 then return end
	local f = net.ReadFloat()
	local IsMax = f == 1 and true or false
	local max = p:GetMaxHealth()
	local h2a = max * f
	local price = math.Round((e:GetNWInt("CostPerHealth") * max) * f)
	local drp = DarkRP or false
	local money = drp and p:getDarkRPVar("money") or 0
	if p:Health() >= max then 
		if drp then
			DarkRP.notify(p, 1, 2, "You cannot buy health at this time!")
		end
		p:ConCommand( "play buttons/button10.wav" )
		return
	end
	if money >= price and p:Health() < max then
		if drp then
			p:addMoney(-price)	
			DarkRP.notify(p, 2, 2, "You have purchased "..h2a.."HP!")
		end
		p:ConCommand( "play buttons/button14.wav" )
		local hp = math.Clamp(p:Health(), p:Health() + h2a, max)
		p:SetHealth(hp)
	end
	if money < price then
		if drp then
			DarkRP.notify(p, 1, 2, "You cannot afford this!")
		end
		p:ConCommand( "play buttons/button10.wav" )
	end
end)

net.Receive("SaveHealthConfigChanges", function(l, p)
	if not IsValid(p) or not p:IsSuperAdmin() then return end
	local i = net.ReadFloat()
	i = math.Round(i)
	if not type(i) == number then return end
	file.Write("healthnpc.txt", i)
	local e = p:GetNWEntity( "LastNPCUsed" )
	if not IsValid(e) then return end
	for k, v in pairs(ents.FindByClass("health_npc")) do
		v:SetNWInt( "CostPerHealth", i )
	end
end)