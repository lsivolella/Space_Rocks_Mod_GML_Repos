/// @description Position Score & Lives
switch(room){
	case rm_game:
		draw_text(20, 20, "SCORE: "+string(score)+"/1,000");
		draw_text(20, 40, "LIVES: "+string(lives));
		break;
	
	case rm_start:
	draw_set_halign(fa_center);
		var _c_yellow = c_yellow;
		draw_text_transformed_color(
			room_width/2, 100, "SPACE ROCKS",
			3, 3, 0, _c_yellow, _c_yellow, _c_yellow, _c_yellow, 1);
		draw_text(room_width/2, 200,
			@"Score 1,000 points to win!
			
			UP: Move
			LEFT/RIGHT: Change Direction
			SPACE: Shoot
			CTRL: Laser Beam (coming soon)
		
			>> PRESS ENTER TO START <<
			
			
			
			
			By Greyhound Studios");
		draw_set_halign(fa_left);
		break;
		
	case rm_win:
	draw_set_halign(fa_center);
		var _c_green = c_green;
		draw_text_transformed_color(room_width/2, 150, "YOU WON!",
		3, 3, 0, _c_green, _c_green, _c_green, _c_green, 1);
		draw_text(room_width/2, 250,
		@"CONGRATULATIONS!
		
		PRESS ENTER TO RESTART");
		draw_set_halign(fa_left);
		break;
		
	case rm_gameover:
	draw_set_halign(fa_center);
		var _c_red = c_red;
		draw_text_transformed_color(room_width/2, 150, "GAME OVER",
		3, 3, 0, _c_red, _c_red, _c_red, _c_red, 1);
		draw_text(room_width/2, 250,
		"FINAL SCORE: "+string(score));
				draw_text(room_width/2, 300,
		"PRESS ENTER TO TRY AGAIN");
		break;
}
	
