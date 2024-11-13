local FORM = {}

--The name of this form. Do not repeat names of forms!
FORM.Name = "Forme Insecte"

--Who does this form belong to? Options: FORM_SINGLE, FORM_DUAL, FORM_BOTH
FORM.Type = FORM_SINGLE

--What user groups are able to use this form? And which stances?
FORM.UserGroups = { 
	["user"] = { 1 },
}

FORM.Stances = {}
FORM.Stances[1] = {
	[ "idle" ] = "r_idle",
	[ "run" ] = "s_run",
	[ "light_left" ] = {
		Sequence = "phalanx_r_left_t3",
		Time = 1,
		Rate = nil,
	},
	[ "light_right" ] = {
		Sequence = "b_right_t3",
		Time = 0.9,
		Rate = nil,
	},
	[ "light_forward" ] = {
		Sequence = "phalanx_b_s3_t2",
		Time = 0.7,
		Rate = nil,
	},
	[ "air_left" ] = {
		Sequence = "phalanx_r_left_t3",
		Time = 1,
		Rate = nil,
	},
	[ "air_right" ] = {
		Sequence = "b_right_t3",
		Time = 1,
		Rate = nil,
	},
	[ "air_forward" ] = {
		Sequence = "b_right_t3",
		Time = 0.6,
		Rate = nil,
	},
	[ "heavy" ] = {
		Sequence = "judge_r_s3_t1",
		Time = 2,

	},
	[ "heavy_charge" ] = "b_c4_charge",
}

wOS:RegisterNewForm( FORM )