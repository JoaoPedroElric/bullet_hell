penetration -= 1;
other.life_enemy -= damage;
var inst = instance_create_layer(x, y - sprite_height / 2, "Instances", obj_dano_txt);
inst.texto = string(damage);
inst.vel_x = random_range(-10,10);
inst.vel_y = random_range(-3,-4);

randomize();

if(penetration < 0) {
	instance_destroy();
}
