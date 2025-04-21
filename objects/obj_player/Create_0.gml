
move_speed = 3;
life_max = 10;
global.life = life_max;
global.id_wave = 0;
global.arma = 0
global.sucata = 0;
global.kill = 0;
sucata = 0;

arma_criada = false;

window_set_cursor(cr_none);

my_weapon = instance_create_layer(x,y, "weapons",obj_weapon);
my_weapon.weapon_id = self;