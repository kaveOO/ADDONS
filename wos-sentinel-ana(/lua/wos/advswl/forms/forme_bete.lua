local FORM = {}

--The name of this form. Do not repeat names of forms!
FORM.Name = "Forme Bete"

--Who does this form belong to? Options: FORM_SINGLE, FORM_DUAL, FORM_BOTH
FORM.Type = FORM_DUAL

--What user groups are able to use this form? And which stances?
FORM.UserGroups = {
	["user"] = { 1 },
}

FORM.Stances = {}
FORM.Stances[1] = {
	[ "idle" ] = "r_idle",
	[ "run" ] = "wos_phalanx_b_run",
	[ "light_left" ] = {
		Sequence = "pure_r_s2_t3",
		Time = 0.9,
		Rate = nil,
	},
	[ "light_right" ] = {
		Sequence = "wos_ryoku_r_right_t2",
		Time = 0.7,
		Rate = nil,
	},
	[ "light_forward" ] = {
		Sequence = "vanguard_r_s1_t2",
		Time = 0.9,
		Rate = nil,
	},
	[ "air_left" ] = {
		Sequence = "ryoku_a_left_t1",
		Time = 1,
		Rate = nil,
	},
	[ "air_right" ] = {
		Sequence = "ryoku_a_left_t1",
		Time = 1,
		Rate = nil,
	},
	[ "air_forward" ] = {
		Sequence = "ryoku_a_left_t1",
		Time = 0.6,
		Rate = nil,
	},
	[ "heavy" ] = {
		Sequence = "vanguard_h_right_t3",
		Time = 1.5,

	},
	[ "heavy_charge" ] = "phalanx_r_s4_charge",
}

wOS:RegisterNewForm( FORM )
