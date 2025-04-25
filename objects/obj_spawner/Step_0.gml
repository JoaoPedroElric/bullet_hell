
if (waiting_for_input && keyboard_check_pressed(vk_enter)) {
	global.upgrade = false;
	wave += 1;
    waiting_for_input = false;
	spawned_enemies = 0;
	alarm[0] = 1;
	life_default *= 1.2;
	spd_default *= 1.04;
	
}

if(wave > global.wave_max) {
	global.wave_max = wave;	
}

// Se todos os inimigos morreram, permitir iniciar nova wave
if (!waiting_for_input && instance_number(obj_enemy_1) == 0 && spawned_enemies >= enemies_per_wave) {
    waiting_for_input = true;
    
    enemies_per_wave *= 1.25; // Aumenta a quantidade de inimigos por wave
	global.upgrade = true;
	global.life = global.life_max;
	save();

}
