

if(instance_exists(weapon_id)){



	if(keyboard_check_pressed(ord("1"))) {
		upgrade_weapon(weapon_id, 5, 1);
	}
	
	if(keyboard_check_pressed(ord("2"))) {
		upgrade_weapon(weapon_id, 3, 1);
	}
	
	x = weapon_id.x + 2;
	y = weapon_id.y+ 1;
	
	image_angle = weapon_dir;
	
	weapon_x = x + lengthdir_x(2, weapon_dir);
	weapon_y = y + lengthdir_y(2, weapon_dir);
	
	
function shoot() {
    if (!can_shoot) return false;

    for (var i = 0; i < weapon_stats[5]; i++) { 
        var fire = instance_create_layer(weapon_x + lengthdir_x(14, weapon_dir), weapon_y + lengthdir_y(14, weapon_dir),"bullet",obj_bullet);
        fire.sprite_index = weapon_stats[1]; 
        var dir = weapon_dir + (weapon_stats[6] * i);
		
		if(weapon_stats[5] > 1) {
			dir -= (weapon_stats[6] * (weapon_stats[5] - 1)) / 2;
		}
		
        fire.speed = weapon_stats[2]; 
        fire.image_angle = dir;
        fire.direction = dir;
        fire.damage = weapon_stats[3]; 
    }

    can_shoot = false;
    alarm[0] = weapon_stats[4]; 
}
	
	function weapon_drop() {
		if(!weapon > 0) {
			return false;	
		}
		var inst = instance_create_layer(weapon_x,weapon_y,layer,weapon_stats[9]);
		inst.image_angle = weapon_dir;
		inst.direction = weapon_dir;
		inst.speed = 5;
		
		mudar_arma(self,0);	
		

	}
	
	function weapon_pickup() {
		var inst = instance_nearest(x,y,obj_weapon_drop);
		if(instance_exists(inst)) {
			mudar_arma(self,inst.weapon_index);
			
			instance_destroy(inst);
		}
	}
	
} else {
	instance_destroy();	
}



	
	