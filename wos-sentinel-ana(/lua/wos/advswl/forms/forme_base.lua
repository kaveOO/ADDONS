local FORM = {}

--The name of this form. Do not repeat names of forms!
FORM.Name = "Forme Basique"

--Who does this form belong to? Options: FORM_SINGLE, FORM_DUAL, FORM_BOTH
FORM.Type = FORM_SINGLE

--What user groups are able to use this form? And which stances?
FORM.UserGroups = { 
	["user"] = { 1 },
}

FORM.Stances = {}
FORM.Stances[1] = {
	[ "idle" ] = "ryoku_idle_lower",
	[ "run" ] = "s_run",
	[ "light_left" ] = {
		Sequence = "phalanx_r_left_t3",
		Time = 0.5,
		Rate = nil,
	},
	[ "light_right" ] = {
		Sequence = "phalanx_r_s3_t3",
		Time = 0.5,
		Rate = nil,
	},
	[ "light_forward" ] = {
		Sequence = "phalanx_r_s1_t2",
		Time = 0.5,
		Rate = nil,
	},
	[ "air_left" ] = {
		Sequence = "phalanx_r_left_t3",
		Time = 1,
		Rate = nil,
	},
	[ "air_right" ] = {
		Sequence = "phalanx_r_s3_t3",
		Time = 1,
		Rate = nil,
	},
	[ "air_forward" ] = {
		Sequence = "phalanx_r_s1_t2",
		Time = 1,
		Rate = nil,
	},
	[ "heavy" ] = {
		Sequence = "phalanx_r_s4_t3",
		Time = 1.5,

	},
	[ "heavy_charge" ] = "phalanx_r_s4_charge",
}

wOS:RegisterNewForm( FORM )