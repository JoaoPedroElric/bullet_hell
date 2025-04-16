if(instance_exists(obj_player)) {
	var dir = point_direction(x, y,obj_player.x, obj_player.y);
	x += lengthdir_x(spd, dir);
	y += lengthdir_y(spd, dir);
	
	image_xscale = lerp(image_xscale,escala_x, .1);
	image_yscale = lerp(image_yscale,escala_y, .1);
	
}

