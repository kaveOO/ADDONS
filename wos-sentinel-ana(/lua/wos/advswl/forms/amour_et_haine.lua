local FORM = {}

FORM.Name = "Technique - Amour / Haine"
FORM.Type = FORM_SINGLE
FORM.UserGroups = {}
FORM.Stances = {}

FORM.Stances[1] = {
    [ "run" ] = "wos_ryoku_b_run",
    [ "idle" ] = "phalanx_r_idle",
    [ "light_left" ] = {
        Sequence = "ryoku_b_left_t3",
        Time = 1.1,
        Rate = nil,
    },
    [ "light_right" ] = {
        Sequence = "ryoku_b_right_t1",
        Time = 1.7,
        Rate = nil,
    },
    [ "light_forward" ] = {
        Sequence = "ryoku_b_s3_t1",
        Time = 1,
        Rate = nil,
    },
    [ "air_left" ] = {
        Sequence =  "ryoku_b_left_t3",
        Time = 1,
        Rate = nil,
    },
    [ "air_right" ] = {
        Sequence = "ryoku_b_right_2",
        Time = 1,
        Rate = nil,
    },
    [ "air_forward" ] = {
        Sequence = "ryoku_a_s1_t3",
        Time = 1,
        Rate = nil,
    },
    [ "heavy" ] = {
        Sequence = "phalanx_r_s4_t3",
        Time = 1,
        Rate = nil,
    },
    [ "heavy_charge" ] = "ryoku_b_s1_charge",
}

wOS:RegisterNewForm( FORM )