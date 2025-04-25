
if(instance_exists(weapon_id)){
	
function test_up() {
	

	//upgrades
	if(global.upgrade) {

		//if(keyboard_check_pressed(ord("1"))) {
			// dano
			switch (global.arma) {
				// limite de dano pra pistola.
				case 1:
				
				if(obj_player.sucata >= valor_dano_pistol && weapon_stats[3] < 12) {
					check_upgrade(weapon_id, 3, 1);
					obj_player.sucata -= valor_dano_pistol;
					
					valor_dano_pistol *= 1.5;
				}
				break;
				
				//limite ded dano pra uzi.
				case 2:
				if(obj_player.sucata >= valor_dano_uzi && weapon_stats[3] < 7) {
					check_upgrade(weapon_id, 3, 1);
					obj_player.sucata -= valor_dano_uzi;
					
					valor_dano_uzi *= 2;
				}
				break;
			}
			
		//}
		// Velocidade de ataque
		if(keyboard_check_pressed(ord("2"))) {
			switch(global.arma) {
				case 1:
				if(obj_player.sucata >= valor_spd_pistol && weapon_stats[4] > 19) {
					check_upgrade(weapon_id, 4, -0.5);
					obj_player.sucata -= valor_spd_pistol;
					valor_spd_pistol *= 1.2;
				}
				break;
				case 2:
				if(obj_player.sucata >= valor_spd_uzi && weapon_stats[4] > 6) {
					check_upgrade(weapon_id, 4, -0.5);
					obj_player.sucata -= valor_spd_uzi;
					valor_spd_uzi *= 1.2;
				}
				break;
			
			}
		}
	}
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
			arma_atual = inst.weapon_index;
			instance_destroy(inst);
		}
	}
	
} else {
	instance_destroy();	
}





	
	