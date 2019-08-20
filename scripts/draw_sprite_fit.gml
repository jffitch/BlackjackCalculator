// argument0 = sprite_index
// argument1 = image_index
// argument2 = x
// argument3 = y
// argument4 = xfit
// argument5 = yfit
// argument6 = alpha

var scale = min(argument4 / sprite_get_width(argument0), argument5 / sprite_get_height(argument0));
draw_sprite_ext(argument0, argument1, argument2, argument3, scale, scale, 0, c_white, argument6);
