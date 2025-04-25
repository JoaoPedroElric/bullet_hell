draw_set_font(ft_loja);
if(global.upgrade == false) {
	draw_self();	
}

if(global.upgrade == false) {
	switch(global.arma) {
		case 1:

			draw_text(x-10, y + 10, obj_weapon.valor_dano_pistol);	
			
			//draw_text(30,165, "+ velocidade de ataque:");
			//draw_text(x +6, y + 10, "S");
			//draw_text(x, y, obj_weapon.valor_spd_pistol);
			
		break;
		
		case 2:
			//draw_text(30,145, "1+ de dano: ");
			//draw_text(125, 145, "S");
			draw_text(140, 145, obj_weapon.valor_dano_uzi);
			
			//draw_text(30,165, "+ velocidade de ataque:");
			//draw_text(220,165, "S");
			draw_text(235,165, obj_weapon.valor_spd_uzi);
		break;
	//draw_text(30, 175, obj_weapon.upgrade_i);
	}
}
draw_set_font(-1);