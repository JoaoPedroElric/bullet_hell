
life_enemy = obj_spawner.life_default;
damage_enemy = obj_spawner.damage_dafault;
spd = obj_spawner.spd_default;

global.money_drop = 0;



escala_x = image_xscale;
escala_y = image_yscale;

hit = false;
hit_tick = room_speed * 2;

function hit_damage() {
	if(hit) return;
		hit = true;
		global.life -= damage_enemy;
		
		
		alarm[0] = hit_tick;

	
}