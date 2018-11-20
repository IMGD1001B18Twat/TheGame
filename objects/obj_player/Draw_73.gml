draw_set_font(hp_font);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text(x, y-sprite_height, name + ": " + string(hp) + " hp");