var key_up = keyboard_check(ord("W"));
var key_down = keyboard_check(ord("S"));
var key_left = keyboard_check(ord("A"));
var key_right = keyboard_check(ord("D"));




if(global.life <= 0){
	instance_destroy();	
	room_restart();
}

if(key_up) y = y-move_speed;

if(key_down) y = y+move_speed;

if(key_left) x = x-move_speed;

if(key_right) x = x+move_speed;

with(my_weapon) {
	var key_drop = keyboard_check_pressed(ord("E"));
	var mb;
	if(weapon_stats[8]){
		mb = mouse_check_button(mb_left);	
	} else {
		mb = mouse_check_button_pressed(mb_left);	
	}
	weapon_dir = point_direction(x,y,mouse_x,mouse_y);
	
	if(mb){
		shoot();
	}
	
	if(key_drop and weapon != 0) {
		weapon_drop();	
	}else if(key_drop and weapon == 0) {
		weapon_pickup();
	}
	
}

