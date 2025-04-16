
move_speed = 3;
life_max = 10;
global.life = life_max;

window_set_cursor(cr_none);


my_weapon = instance_create_layer(x,y, "weapons",obj_weapon);
my_weapon.weapon_id = self;