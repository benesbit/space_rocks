/// @description Insert description here
// You can write your code in this editor
switch(room){
	case rm_game:
		draw_text(20, 20, "SCORE: " + string(score));
		draw_text(20, 40, "LIVES: " + string(lives));
		break;
		
	case rm_start:
		var c = c_yellow;
		draw_text_transformed_color(
			room_width/4, 100, "SPACE ROCKS!",
			3, 3, 0,
			c, c, c, c, 1
		);
		draw_text(
			room_width/4, 200,
			@"Score 1,000 points to win!
			
			UP: Move ship forward
			LEFT/RIGHT: Change ship direction
			SPACE: Fire the lazer!
			
			>> PRESS ENTER TO START <<
			"
		);
		break;
	
	case rm_win:
		
		break;
		
	case rm_gameover:
		
		break;
}