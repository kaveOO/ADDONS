
local function errhandler(err)
	ErrorNoHalt("\nDConfig prevented an error from breaking the addon entirely."
		      .."\n ** This is most likely an error with your hard-coded jobs, weapons or entities in .lua files.\n\n")
	ErrorNoHalt(err)
end
function dpcall(fn, ...)
	local ret = {xpcall(fn, errhandler, ...)}

	local succ = table.remove(ret, 1)

	return unpack(ret)
end

if SERVER then

	local DConfigDir = "darkrpmasterconfig"
	local JobsFile = DConfigDir .. "/jobs.txt"
	local ShipmentsFile = DConfigDir .. "/shipments.txt"
	local EntitiesFile = DConfigDir .. "/entities.txt"
	local AmmoFile = DConfigDir .. "/ammo.txt"
	local CategoriesFile = DConfigDir .. "/categories.txt"
	local SettingsFile = DConfigDir .. "/generalsettings.txt"

	local dconfigSettings = {}
	local dconfigJobs = {}
	local dconfigShipments = {}
	local dconfigAmmo = {}
	local dconfigCategories = {}
	local dconfigEntities = {}


	local cats = {"ammo","shipments","jobs","entities","vehicles"}


	function LoadJobs()
		if not file.Exists(JobsFile, "DATA") then return end
		local jobData = file.Read(JobsFile, "DATA")
		dconfigJobs = util.JSONToTable(jobData)

		if dconfigJobs then
			for k,v in ipairs(dconfigJobs) do
				dpcall(DConfigAddCustomJob, dconfigJobs[k])
			end
			DConfigSendData(nil, true)
		end
	end

	function LoadAmmo()
		if not file.Exists(AmmoFile, "DATA") then return end
		local ammoData = file.Read(AmmoFile, "DATA")
		dconfigAmmo = util.JSONToTable(ammoData)

		if dconfigAmmo then
			for k,v in pairs(dconfigAmmo) do
				dpcall(DConfigAddCustomAmmo, dconfigAmmo[k])
			end
			DConfigSendData(nil, true)
		end

	end

	function LoadShipments()
		if not file.Exists(ShipmentsFile, "DATA") then return end
		local shipmentData = file.Read(ShipmentsFile, "DATA")
		dconfigShipments = util.JSONToTable(shipmentData)
		if not dconfigShipments then return end

		if dconfigShipments then
			for k,v in pairs(dconfigShipments) do
				dpcall(DConfigAddCustomShipment, dconfigShipments[k])
			end
			DConfigSendData(nil, true)
		end
	end

	function LoadEntities()
		if not file.Exists(EntitiesFile, "DATA") then return end
		local entityData = file.Read(EntitiesFile, "DATA")
		dconfigEntities = util.JSONToTable(entityData)
		if not dconfigEntities then return end

		if dconfigEntities then
			for k,v in pairs(dconfigEntities) do
				DConfigAddCustomEntity(dconfigEntities[k])
			end
			DConfigSendData(nil, true)
		end
	end

	function LoadCategories()
		if not file.Exists(CategoriesFile, "DATA") then return end
		local categoriesData = file.Read(CategoriesFile, "DATA")
		dconfigCategories = util.JSONToTable(categoriesData)
		if not dconfigCategories then return end

		for k,v in pairs(dconfigCategories) do
			dpcall(DConfigAddCustomCategory, dconfigCategories[k])
		end
		DConfigSendData(nil, true)

	end

	function LoadDarkRPSettings()
		if not file.Exists(SettingsFile, "DATA") then return end
		local settingsData = file.Read(SettingsFile, "DATA")
		dconfigSettings = util.JSONToTable(settingsData)
		if dconfigSettings then
			local tbl = GAMEMODE or GM
			for k,v in pairs(dconfigSettings) do
				tbl.Config[k] = v
			end
			DConfigSendData(nil, true)
		end
	end
	if not DCONFIG then
		MsgC(Color(255,0,0), "DCONFIG ADDON MISSING. MAKE SURE YOU INSTALLED THE ADDON CORRECTLY!\n")
	end
	MsgC( Color( 0, 255, 255 ), "ATTEMPTING TO LOAD DCONFIG DATA...\n" )
	hook.Add("Initialize", "StallDConfigLoading", function() --DCONFIG SHOULD LOAD LAST SINCE THE JOBS HAVE TO BE NETWORKED. OTHERWISE RPEXTRATEAMS WILL BE OUT OF ORDER.
		dpcall(LoadCategories)
		dpcall(LoadJobs)
		dpcall(LoadShipments)
		dpcall(LoadEntities)
		dpcall(LoadAmmo)
		dpcall(LoadDarkRPSettings)
		hook.Run("DConfigDataLoaded")
		MsgC( Color( 0, 255, 0 ), "DCONFIG DATA LOADED SUCCESSFULLY!\n" )
		MsgC( Color( 0, 255, 255 ), "IF YOU ARE AN AUTHOR OF AN ADDON THAT USES A JOB BASED CONFIG FILE, CREATE YOUR CONFIG FILE AFTER DConfigDataLoaded HOOK HAS RAN!\n" )
	end)

end


