var key_up = keyboard_check(ord("W"));
var key_down = keyboard_check(ord("S"));
var key_left = keyboard_check(ord("A"));
var key_right = keyboard_check(ord("D"));

if(key_up) y = y-move_speed;

if(key_down) y = y+move_speed;

if(key_left) x = x-move_speed;

if(key_right) x = x+move_speed;
