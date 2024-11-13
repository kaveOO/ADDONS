local FORM = {}

FORM.Name = "Technique - Simple"
FORM.Type = FORM_SINGLE
FORM.UserGroups = {}
FORM.Stances = {}

FORM.Stances[1] = {
    [ "run" ] = "wos_ryoku_r_run",
    [ "idle" ] = "ryoku_idle_lower",
    [ "light_left" ] = {
        Sequence = "phalanx_r_left_t3",
        Time = 1,
        FlurryTime = 0.4,
        Rate = nil,
    },
    [ "light_right" ] = {
        Sequence = "phalanx_r_right_t2",
        Time = 0.7,
        Rate = nil,
    },
    [ "light_forward" ] = {
        Sequence = "phalanx_b_s4_t2",
        Time = 0.8,
        FlurryTime = 0.5,
        Rate = nil,
    },
    [ "air_left" ] = {
        Sequence =  "phalanx_a_left_t1",
        Time = 0.6,
        Rate = 1.6,
    },
    [ "air_right" ] = {
        Sequence = "phalanx_a_right_t1",
        Time = 0.6,
        Rate = 1.7,
    },
    [ "air_forward" ] = {
        Sequence = "phalanx_a_s1_t1",
        Time = 0.6,
        Rate = 1.2,
    },
    [ "heavy" ] = {
        Sequence = "judge_r_s3_t1",
        Time = 2,
        Rate = nil,
    },
    [ "heavy_charge" ] = "wos_judge_r_s3_charge",
}

wOS:RegisterNewForm( FORM )