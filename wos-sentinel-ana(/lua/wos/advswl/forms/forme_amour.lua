local FORM = {}

--The name of this form. Do not repeat names of forms!
FORM.Name = "Forme Amour"

--Who does this form belong to? Options: FORM_SINGLE, FORM_DUAL, FORM_BOTH
FORM.Type = FORM_SINGLE

--What user groups are able to use this form? And which stances?
FORM.UserGroups = { 
	["user"] = { 1 },
}

FORM.Stances = {}
FORM.Stances[1] = {
	[ "idle" ] = "ryoku_idle_lower",
	[ "run" ] = "ryoku_b_run",
	[ "light_left" ] = {
		Sequence = "ryoku_b_left_t3",
		Time = 1.5,
		Rate = nil,
	},
	[ "light_right" ] = {
		Sequence = "ryoku_b_right_t1",
		Time = 2,
		Rate = nil,
	},
	[ "light_forward" ] = {
		Sequence = "phalanx_r_s1_t2",
		Time = 0.6,
		Rate = nil,
	},
	[ "air_left" ] = {
		Sequence = "ryoku_a_s1_t3",
		Time = 1,
		Rate = nil,
	},
	[ "air_right" ] = {
		Sequence = "ryoku_a_s1_t3",
		Time = 1,
		Rate = nil,
	},
	[ "air_forward" ] = {
		Sequence = "ryoku_a_s1_t3",
		Time = 1,
		Rate = nil,
	},
	[ "heavy" ] = {
		Sequence = "ryoku_b_right_t3",
		Time = 2,

	},
	[ "heavy_charge" ] = "ryoku_b_s1_charge",
}

wOS:RegisterNewForm( FORM )