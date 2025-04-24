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

draw_text(30, 120, "S");
draw_text(45, 120, obj_player.sucata);
//draw_text(30, 130, obj_weapon.valor_0);
if(global.upgrade) {
	switch(global.arma) {
		case 1:
			draw_text(30,145, "1+ de dano: ");
			draw_text(125, 145, "S");
			draw_text(140, 145, obj_weapon.valor_dano_pistol);	
			
			draw_text(30,165, "+ velocidade de ataque:");
			draw_text(220,165, "S");
			draw_text(235,165, obj_weapon.valor_spd_pistol);
			
		break;
		
		case 2:
			draw_text(30,145, "1+ de dano: ");
			draw_text(125, 145, "S");
			draw_text(140, 145, obj_weapon.valor_dano_uzi);
			
			draw_text(30,165, "+ velocidade de ataque:");
			draw_text(220,165, "S");
			draw_text(235,165, obj_weapon.valor_spd_uzi);
		break;
	//draw_text(30, 175, obj_weapon.upgrade_i);
	}
}
draw_set_font(-1);

