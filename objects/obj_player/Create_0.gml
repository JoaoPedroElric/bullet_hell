move_speed = 4;
life = 100;
fire_cooldown = 0; 
fire_rate = 8; 
my_weapon = instance_create_layer(x,y, "weapons",obj_weapon);
my_weapon.weapon_id = self;