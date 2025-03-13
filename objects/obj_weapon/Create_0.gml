// pistola
armas[0] = ds_map_create();
ds_map_add(armas[0], "sprite",1);
ds_map_add(armas[0], "proj",spr_bullet_pistola);
ds_map_add(armas[0], "proj_spd",10);
ds_map_add(armas[0], "proj_damage",10);
ds_map_add(armas[0], "proj_delay",20);
ds_map_add(armas[0], "automatic",false);

// uzi
armas[1] = ds_map_create();
ds_map_add(armas[1], "sprite",spr_uzi);
ds_map_add(armas[1], "proj",spr_bullet_uzi);
ds_map_add(armas[1], "proj_spd",7);
ds_map_add(armas[1], "proj_damage",3);
ds_map_add(armas[1], "proj_delay",10);
ds_map_add(armas[1], "automatic",true);


weapon_id = noone;
weapon_dir = noone;
weapon_x = 0;
weapon_y = 0;
weapon = 0
can_shoot = true;

var map = armas[weapon];
sprite = map[? "sprite"];
proj = map[? "proj"];
proj_spd = map[? "proj_spd"];
proj_damage = map[? "proj_damage"];
proj_delay = map[? "proj_delay"];
automatic = map[? "automatic"];

