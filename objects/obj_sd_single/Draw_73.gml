draw_set_font(title_font);
draw_set_color(c_red);
draw_set_halign(fa_center);
with (obj_score) {
	draw_text(other.x, other.y, "Score: " + string(player1Score));
}