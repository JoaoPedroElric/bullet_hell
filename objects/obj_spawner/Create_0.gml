wave = 0;

if (!variable_global_exists("wave_max")) {
    global.wave_max = 0; 
}

global.upgrade = false;
enemies_per_wave = 8;  
spawned_enemies = 0;
waiting_for_input = true; 
life_default = 4;
damage_dafault = 2;
randomize();