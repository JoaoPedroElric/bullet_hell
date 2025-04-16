penetration -= 1;
other.life_enemy -= damage;
var inst = instance_create_layer(x, y - sprite_height / 2, "Instances", obj_dano_txt);
inst.texto = string(damage);
inst.vel_x = random_range(-15,15);
randomize();

if(penetration < 0) {
	instance_destroy();
}
