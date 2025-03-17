global.weapon_upgrades = ds_map_create();

move_speed = 3;
life_max = 10;
life = life_max;


my_weapon = instance_create_layer(x,y, "weapons",obj_weapon);
my_weapon.weapon_id = self;