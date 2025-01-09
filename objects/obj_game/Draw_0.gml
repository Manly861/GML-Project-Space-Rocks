/// @description Insert description here
// You can write your code in this editor
switch(room){
	case rm_game:
		draw_text(20,20, "SCORE: " + string(score));
		draw_text(20,40, "LIVES: " + string(lives));
		break;
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(
			room_width/2, 75, "SPACE ROCKS" ,
			3, 3, 0,c,c,c,c, 1  
		);
		draw_set_halign(fa_center);
		var c = c_lime;
		var c1 = c_orange;
		draw_text_transformed_color(
			room_width/2, 200,
@"Score 1,000 points to win!
UP: move
LEFT/RIGHT: change direction
SPACE: shoot
>> PRESS ENTER TO START <<" ,
			1.25, 1.5, 0,c1,c1,c1,c, 1  
		);
		draw_set_halign(fa_left);
		break;
		
	case rm_win:
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(
			room_width/2, 200, "YOU WON!" ,
			3, 3, 0,c,c,c,c, 1  
		);
		draw_text(
			room_width/2, 300,
"PRESS ENTER TO RESTART"
		);
		draw_set_halign(fa_left);
		break;
	
	case rm_gameover:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(
			room_width/2, 150, "GAME OVER" ,
			3, 3, 0,c,c,c,c, 1  
		);
		var c = c_maroon;
		draw_text_transformed_color(
			room_width/2, 225, "FINAL SCORE: " + string(score) ,
			1.5, 1.5, 0,c,c,c,c, 1 
		);
		draw_text(
			room_width/2, 300,
"PRESS ENTER TO RESTART "
		);
		draw_set_halign(fa_left);
		break;

}