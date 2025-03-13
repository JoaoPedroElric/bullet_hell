var key_up = keyboard_check(ord("W"));
var key_down = keyboard_check(ord("S"));
var key_left = keyboard_check(ord("A"));
var key_right = keyboard_check(ord("D"));
var key_fire = mouse_check_button(mb_left);

if(key_up) y = y-move_speed;

if(key_down) y = y+move_speed;

if(key_left) x = x-move_speed;

if(key_right) x = x+move_speed;

with(my_weapon) {
	weapon_dir = point_direction(x,y,mouse_x,mouse_y);
}

fire_cooldown = approach(fire_cooldown, 0, 1);

if(key_fire && fire_cooldown == 0) {
	var fire = instance_create_layer(x,y, "bullet",obj_bullet);
	fire.speed = 10;
	fire.direction = point_direction(x,y, mouse_x, mouse_y);
	fire_cooldown = fire_rate;
}