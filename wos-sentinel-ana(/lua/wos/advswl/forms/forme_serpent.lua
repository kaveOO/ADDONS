local FORM = {}

FORM.Name = "Technique - Serpentt"
FORM.Type = FORM_SINGLE
FORM.UserGroups = {}
FORM.Stances = {}

FORM.Stances[1] = {
    [ "run" ] = "wos_ryoku_r_run",
    [ "idle" ] = "ryoku_idle_lower",
    [ "light_left" ] = {
        Sequence = "phalanx_r_left_t3",
        Time = 0.7,
        Rate = nil,
    },
    [ "light_right" ] = {
        Sequence = "phalanx_r_right_t2",
        Time = 0.6,
        Rate = nil,
    },
    [ "light_forward" ] = {
        Sequence = "phalanx_r_s3_t1",
        Time = 0.6,
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
        Sequence = "phalanx_r_s4_t3",
        Time = 1,
        Rate = nil,
    },
    [ "heavy_charge" ] = "phalanx_r_s4_charge",
}

wOS:RegisterNewForm( FORM )