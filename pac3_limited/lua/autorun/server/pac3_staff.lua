-- add/change rank names here in the same format
local ranks = {
	["superadmin"] = true,
	["superadmin"] = true,
}
hook.Add("PrePACConfigApply", "PACRankRestrict", function(ply)
	if not ranks[ply:GetUserGroup()] then
              return false,"Impossible."
        end
end)