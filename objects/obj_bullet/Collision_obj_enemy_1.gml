penetration -= 1;
other.life_enemy -= damage;
if(penetration < 0) {
	instance_destroy();
}
