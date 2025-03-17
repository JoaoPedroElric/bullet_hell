
if (waiting_for_input && keyboard_check_pressed(vk_enter)) {
    waiting_for_input = false;
	spawned_enemies = 0;
	alarm[0] = 1;
	life_default *= 1.10;
	
}


// Se todos os inimigos morreram, permitir iniciar nova wave
if (!waiting_for_input && instance_number(obj_enemy_1) == 0 && spawned_enemies >= enemies_per_wave) {
    waiting_for_input = true;
    wave += 1;
	card_select();
    enemies_per_wave *= 1.25; // Aumenta a quantidade de inimigos por wave
}
