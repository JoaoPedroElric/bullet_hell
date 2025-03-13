

if(instance_exists(weapon_id)){

	x = weapon_id.x + 2;
	y = weapon_id.y+ 1;
	
	image_angle = weapon_dir;
	
	weapon_x = x + lengthdir_x(8, weapon_dir);
	weapon_y = y + lengthdir_y(8, weapon_dir);
	
	
	function shoot() {
		if(!can_shoot) {
			return false;	
		}
		
		var fire = instance_create_layer(weapon_x+lengthdir_x(14,weapon_dir),weapon_y+lengthdir_y(14,weapon_dir), "bullet",obj_bullet);
		fire.sprite_index = proj;
		fire.speed = proj_spd;
		fire.image_angle = weapon_dir;
		fire.direction = weapon_dir;
		fire.damage = proj_damage; 
		can_shoot = false;
		alarm[0] = proj_delay;
		
				
	}
	
} else {
	instance_destroy();	
}



	
	