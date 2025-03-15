
life_enemy = obj_spawner.life_default;
damage_enemy = obj_spawner.damage_dafault;
spd = 1;


hit = false;
hit_tick = room_speed * 2;

function hit_damage() {
	if(hit) return;
		hit = true;
		obj_player.life -= damage_enemy;
		
		
		alarm[0] = hit_tick;

	
}

