draw_set_font(ft_GUI);

draw_text(30,30,"WAVE: ");
draw_text(90,30, obj_spawner.wave);
draw_text(30,55,"VIDA: ");
draw_text(90,55, global.life);
draw_text(30,75,"DANO DA ARMA: ");
if(instance_exists(obj_weapon)) {
	draw_text(165,75, obj_weapon.weapon_stats[3]);
}
draw_set_font(-1);