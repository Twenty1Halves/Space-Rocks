/// @description Insert description here
// You can write your code in this editor
switch(room){
	case rm_game:
		draw_text(20,20, "SCORE: " + string(score));
		draw_text(20,40, "LIVES: " + string(lives));
		break;
	case rm_start:
		var c = c_yellow;
		draw_set_halign(fa_center);
		draw_text_transformed_color(room_width/2,100,"SPACE ROCKS",3,3,0,c,c,c,c,1)
		
		draw_text(room_width/2, 200,
		@"Score 1000 points to win!
		
		UP/DOWN: move
		LEFT/RIGHT: change direction
		SPACE: shoot
		
		>> PRESS ENTER TO START <<");
		draw_set_halign(fa_left);
		break;
	case rm_win:
		var c = c_green;
		draw_set_halign(fa_center);
		draw_text_transformed_color(room_width/2,200,"YOU WIN!",3,3,0,c,c,c,c,1);
		draw_text(room_width/2,300,">> PRESS ENTER TO RESTART <<");
		draw_set_halign(fa_left);
		break;
	case rm_lose:
		var c = c_red;
		draw_set_halign(fa_center);
		draw_text_transformed_color(room_width/2,200,"GAME OVER!",3,3,0,c,c,c,c,1);
		draw_text(room_width/2,250,"FINAL SCORE: " + string(score));
		draw_text(room_width/2,300,">> PRESS ENTER TO RESTART <<");
		break;
	case rm_boss_intro:
		var c = c_orange;
		draw_set_halign(fa_center);
		draw_text_transformed_color(room_width/2,100,"An Enemy Is Approaching!",2,2,0,c,c,c,c,1);
		draw_text(room_width/2,150,"Choose a POWER UP");
		
		//POWER UP TEXT
		switch(global.upgrade){
			case 0:
				draw_text(room_width/2,200,"1: Recharging Bubble Shield");
				draw_text(room_width/2,250,"2: Double Missles");
				draw_text(room_width/2,300,"3: Speed Upgrade");
				break;
			case 1:
				var c = c_green;
				draw_text_color(room_width/2,200,"1: Recharging Bubble Shield",c,c,c,c,1);
				draw_text(room_width/2,250,"2: Double Missles");
				draw_text(room_width/2,300,"3: Speed Upgrade");
				break;
			case 2:
				var c = c_green;
				draw_text(room_width/2,200,"1: Recharging Bubble Shield");
				draw_text_color(room_width/2,250,"2: Double Missles",c,c,c,c,1);
				draw_text(room_width/2,300,"3: Speed Upgrade");
				break;
			case 3:
				var c = c_green;
				draw_text(room_width/2,200,"1: Recharging Bubble Shield");
				draw_text(room_width/2,250,"2: Double Missles");
				draw_text_color(room_width/2,300,"3: Speed Upgrade",c,c,c,c,1);
				break;
		}
		var c = c_orange;
		draw_text(room_width/2,350,">> PRESS ENTER TO FIGHT! <<");
		break;
	case rm_boss:
		draw_text(20,20, "SCORE: " + string(score));
		draw_text(20,40, "LIVES: " + string(lives));
		draw_text(room_width/2,20, "BOSS HP: " + string(global.boss_hp));
}