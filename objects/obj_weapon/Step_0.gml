

if(instance_exists(weapon_id)){

	x = weapon_id.x + 2;
	y = weapon_id.y+ 1;
	
	image_angle = weapon_dir;
	
	weapon_x = x + lengthdir_x(2, weapon_dir);
	weapon_y = y + lengthdir_y(2, weapon_dir);
	
	
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
	
	function weapon_drop() {
		if(!weapon > 0) {
			return false;	
		}
		var inst = instance_create_layer(weapon_x,weapon_y,layer,drop);
		inst.image_angle = weapon_dir;
		inst.direction = weapon_dir;
		inst.speed = 5;
		
		mudar_arma(self,0);	
		
		show_debug_message("Proj: " + string(proj));
		show_debug_message("Proj Speed: " + string(proj_spd));
		show_debug_message("Proj Damage: " + string(proj_damage));
		show_debug_message("Proj Delay: " + string(proj_delay));
	}
	
	function weapon_pickup() {
		var inst = instance_nearest(x,y,obj_weapon_drop);
		if(instance_exists(inst)) {
			mudar_arma(self,inst.weapon_index);
			
			show_debug_message("Proj: " + string(proj));
			show_debug_message("Proj Speed: " + string(proj_spd));
			show_debug_message("Proj Damage: " + string(proj_damage));
			show_debug_message("Proj Delay: " + string(proj_delay));
			
			instance_destroy(inst);
		}
	}
	
} else {
	instance_destroy();	
}



	
	