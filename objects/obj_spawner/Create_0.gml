wave = 0;

if (!variable_global_exists("wave_max")) {
    global.wave_max = 0; 
}

enemies_per_wave = 15;  
spawned_enemies = 0;
waiting_for_input = true; 
life_default = 4;
damage_dafault = 2;
randomize();