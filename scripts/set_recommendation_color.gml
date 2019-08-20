switch (argument0) {
    case "SPLIT": draw_set_colour(c_purple); break;
    case "STAND": draw_set_colour(c_red); break;
    case "HIT": draw_set_colour(c_green); break;
    case "DOUBLE": draw_set_colour(c_blue); break;
    case "DOUBLE?": draw_set_colour(c_yellow); break;
    default: draw_set_colour(c_black); break;
    }
