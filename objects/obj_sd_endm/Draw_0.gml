draw_set_font(title_font);
draw_set_color(c_red);
draw_set_halign(fa_center);

with (obj_score) {
	draw_text(room_width/2, other.sY, "P1: " + string(player1Score) + " P2: " + string(player2Score));	
}
draw_text(c1X, c1Y, choice1);
draw_text(c2X, c2Y, choice2);