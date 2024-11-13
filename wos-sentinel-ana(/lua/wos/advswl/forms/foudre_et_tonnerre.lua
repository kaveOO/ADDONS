local FORM = {}

FORM.Name = "Technique - Foudre / Tonnerre"
FORM.Type = FORM_SINGLE
FORM.UserGroups = {}
FORM.Stances = {}

FORM.Stances[1] = {
    [ "run" ] = "s_run",
    [ "idle" ] = "wos_phalanx_r_idle",
    [ "light_left" ] = {
        Sequence = "wos_judge_b_left_t3",
        Time = 1.2,
        FlurryTime = 0.8,
        Rate = 0.5,
    },
    [ "light_right" ] = {
        Sequence = "phalanx_r_s3_t3",
        Time = 0.8,
        FlurryTime = 0.5,
        Rate = nil,
    },
    [ "light_forward" ] = {
        Sequence = "wos_judge_b_s3_t3",
        Time = 0.7,
        Rate = nil,
    },
    [ "air_left" ] = {
        Sequence =  "judge_a_left_t1",
        Time = 0.6,
        Rate = 2,
    },
    [ "air_right" ] = {
        Sequence = "phalanx_a_right_t1",
        Time = 0.6,
        Rate = 1.7,
    },
    [ "air_forward" ] = {
        Sequence = "ryoku_a_s1_t1",
        Time = 0.6,
        Rate = 1,
    },
    [ "heavy" ] = {
        Sequence = "wos_phalanx_r_s4_t3",
        Time = nil,
        Rate = 0.8,
    },
    [ "heavy_charge" ] = "wos_phalanx_r_s4_charge",
}

wOS:RegisterNewForm( FORM )