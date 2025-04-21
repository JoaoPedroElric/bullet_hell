draw_set_font(ft_GUI);

draw_text(30,30,"WAVE: ");
draw_text(90,30, obj_spawner.wave);
draw_text(30,55,"VIDA: ");
draw_text(90,55, global.life);
draw_text(30,75,"DANO DA ARMA: ");

if(instance_exists(obj_weapon)) {
	draw_text(165,75, obj_weapon.weapon_stats[3]);
}

draw_text(30, 95, "WAVE MÁXIMA :");
draw_text(165, 95, global.wave_max);

draw_text(30, 115, obj_player.sucata);
draw_text(30, 130, obj_weapon.valor_0);
draw_text(30, 145, obj_weapon.valor_1);
draw_text(30, 160, obj_weapon.valor_2);
draw_text(30, 175, obj_weapon.upgrade_i);

draw_set_font(-1);

