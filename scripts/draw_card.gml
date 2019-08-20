var card_width, card_height, color;
color = c_white;
if (argument1 == -2) {
    color = make_colour_rgb(255,128,128);
    }
card_width = if2(object_index == chooser, 77, 46);
card_height = if2(object_index == chooser, 97, 58);
draw_roundrect_custom(x+card_position_x(argument0), y+card_position_y(argument0), x+card_position_x(argument0)+card_width, y+card_position_y(argument0)+card_height,3, c_black, color, 3);
draw_set_font(if2(object_index == chooser, text_font, card_font));
draw_set_halign(fa_center);
draw_set_valign(fa_center);
switch (argument1) {
    case 0: case -2: break;
    case 1: draw_text(x+card_position_x(argument0)+card_width*.5, y+card_position_y(argument0)+card_height*.5, "A"); break;
    case 10: {
        draw_text(x+card_position_x(argument0)+card_width*.25, y+card_position_y(argument0)+card_height*.25, "10");
        draw_text(x+card_position_x(argument0)+card_width*.25, y+card_position_y(argument0)+card_height*.75, "Q");
        draw_text(x+card_position_x(argument0)+card_width*.75, y+card_position_y(argument0)+card_height*.25, "J");
        draw_text(x+card_position_x(argument0)+card_width*.75, y+card_position_y(argument0)+card_height*.75, "K");
        break;
        }
    default: draw_text(x+card_position_x(argument0)+card_width*.5, y+card_position_y(argument0)+card_height*.5, string(argument1)); break;
    }
