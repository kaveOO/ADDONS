local FORM = {}

FORM.Name = "Technique - Insecte / Rose"
FORM.Type = FORM_SINGLE
FORM.UserGroups = {}
FORM.Stances = {}

FORM.Stances[1] = {
    [ "run" ] = "s_run",
    [ "idle" ] = "wos_phalanx_r_idle_2",
    [ "light_left" ] = {
        Sequence = "phalanx_r_left_t3",
        Time = 0.8,
        FlurryTime = 0.8,
        Rate = 0.5,
    },
    [ "light_right" ] = {
        Sequence = "phalanx_b_right_t3",
        Time = 0.9,
        FlurryTime = 0.5,
        Rate = nil,
    },
    [ "light_forward" ] = {
        Sequence = "phalanx_b_s3_t2",
        Time = 0.6,
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
        Sequence = "wos_judge_r_s3_t1",
        Time = 1.4,
        Rate = nil,
    },
    [ "heavy_charge" ] = "judge_r_s3_charge",
}

wOS:RegisterNewForm( FORM )