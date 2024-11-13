local FORM = {}

--The name of this form. Do not repeat names of forms!
FORM.Name = "Forme T"

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
		Sequence = "vanguard_r_left_t1",
		Time = 0.7,
		Rate = nil,
	},
	[ "light_right" ] = {
		Sequence = "phalanx_r_s3_t3",
		Time = 0.6,
		Rate = nil,
	},
	[ "light_forward" ] = {
		Sequence = "vanguard_r_right_t3",
		Time = 0.7,
		Rate = nil,
	},
	[ "air_left" ] = {
		Sequence = "ryoku_a_s2_t1",
		Time = 1,
		Rate = nil,
	},
	[ "air_right" ] = {
		Sequence = "ryoku_a_s2_t1",
		Time = 1,
		Rate = nil,
	},
	[ "air_forward" ] = {
		Sequence = "ryoku_a_s2_t1",
		Time = 1,
		Rate = nil,
	},
	[ "heavy" ] = {
		Sequence = "vanguard_b_s3_t2",
		Time = 1.5,

	},
	[ "heavy_charge" ] = "phalanx_r_s4_charge",
}

wOS:RegisterNewForm( FORM )