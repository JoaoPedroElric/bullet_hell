
// nada
armas[0] = ds_map_create();
ds_map_add(armas[0], "sprite", -1);				//0
ds_map_add(armas[0], "proj", noone);			//1
ds_map_add(armas[0], "proj_spd", 0);			//2
ds_map_add(armas[0], "proj_damage",0);			//3
ds_map_add(armas[0], "proj_delay", 0);			//4
ds_map_add(armas[0], "proj_count" ,0);			//5
ds_map_add(armas[0], "proj_disp", 1);			//6
ds_map_add(armas[0], "proj_penetration", 0);	//7
ds_map_add(armas[0], "automatic",false);		//8
ds_map_add(armas[0], "drop", -1);				//9



// pistola
armas[1] = ds_map_create();
ds_map_add(armas[1], "sprite", spr_pistola);
ds_map_add(armas[1], "proj", spr_bullet_pistola);
ds_map_add(armas[1], "proj_spd", 10);
ds_map_add(armas[1], "proj_damage", 6);
ds_map_add(armas[1], "proj_delay", 25);
ds_map_add(armas[1], "proj_count", 1);
ds_map_add(armas[1], "proj_disp", 10);
ds_map_add(armas[1], "proj_penetration", 0);
ds_map_add(armas[1], "automatic", true);
ds_map_add(armas[1], "drop", obj_pistola);

// uzi
armas[2] = ds_map_create();
ds_map_add(armas[2], "sprite", spr_uzi);
ds_map_add(armas[2], "proj", spr_bullet_uzi);
ds_map_add(armas[2], "proj_spd", 12);
ds_map_add(armas[2], "proj_damage", 3);
ds_map_add(armas[2], "proj_delay" , 12);
ds_map_add(armas[2], "proj_count", 1);
ds_map_add(armas[2], "proj_disp", 10);
ds_map_add(armas[2], "proj_penetration", 0);
ds_map_add(armas[2], "automatic", true);
ds_map_add(armas[2], "drop", obj_uzi);

// shotgun
armas[3] = ds_map_create();
ds_map_add(armas[3], "sprite",spr_shotgun);
ds_map_add(armas[3], "proj",spr_bullet_shotgun);
ds_map_add(armas[3], "proj_spd",15);
ds_map_add(armas[3], "proj_damage",15);
ds_map_add(armas[3], "proj_delay",40);
ds_map_add(armas[3], "proj_count",3);
ds_map_add(armas[3], "proj_disp", 15);
ds_map_add(armas[3], "proj_penetration", 0);
ds_map_add(armas[3], "automatic",true);
ds_map_add(armas[3], "drop",obj_shotgun);

// magnum
armas[4] = ds_map_create();
ds_map_add(armas[4], "sprite",spr_magnum);
ds_map_add(armas[4], "proj",spr_bullet_magnum);
ds_map_add(armas[4], "proj_spd",18);
ds_map_add(armas[4], "proj_damage",20);
ds_map_add(armas[4], "proj_delay",40);
ds_map_add(armas[4], "proj_count",1);
ds_map_add(armas[4], "proj_disp", 15);
ds_map_add(armas[4], "proj_penetration", 1);
ds_map_add(armas[4], "automatic",false);
ds_map_add(armas[4], "drop",obj_magnum);


valor_0 = 0;
valor_dano_pistol = 15;
valor_dano_uzi = 40;
valor_2 = 0;

// criar mais armas
global.up = 3;
global.weapon_upgrades = ds_map_create();  // Armazena os upgrades aplicados a cada arma
global.weapon_upgrade_count = ds_map_create(); // Contador de upgrades por arma
global.upgrade_max = 3; // Limite de upgrades por arma
global.id_wave = 0;
global.arma = 0;
upgrade_i = 3;

weapon_id = noone;
weapon_dir = noone;
weapon_x = 0;
weapon_y = 0;
can_shoot = true;
arma_atual = noone;
mudar_arma(self, global.arma);
show_debug_message("obj_weapon criado");

