if(instance_exists(weapon_id)){
	x = weapon_id.x + 5;
	y = weapon_id.y+ 3;
	
	image_angle = weapon_dir;
	
	weapon_x = x + lengthdir_x(8, weapon_dir);
	weapon_y = y + lengthdir_y(8, weapon_dir);
	
} else {
	instance_destroy();	
}

var key_fire = mouse_check_button(mb_left);

	
	