draw_set_font(ft_loja);
if(global.upgrade) {
	draw_self();	
}

if(global.upgrade) {


	switch(global.arma) {
		case 1:
			if(mouse) {
				draw_set_color(c_black);
				draw_text(mouse_x - 35, mouse_y+15, "Menos 2% de velocidade de ataque");	
				draw_set_color(-1);
			}
			draw_text(x-10, y + 10, obj_weapon.valor_spd_pistol);	
			
		break;
		case 2:
		
			draw_text(x-10, y + 10, obj_weapon.valor_spd_uzi);

		break;
	}
}
draw_set_font(-1);