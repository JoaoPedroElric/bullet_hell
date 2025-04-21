
image_xscale = escala_x * 1.2;
image_yscale = escala_y * 0.8;


if(life_enemy <= 0){
	global.kill += 1;
	global.money_drop = random_range(1,5);
	obj_player.sucata += global.money_drop;
	randomize();
	instance_destroy();
}



