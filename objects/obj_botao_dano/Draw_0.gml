draw_set_font(ft_loja);
if(global.upgrade) {
	draw_self();	
}

if(global.upgrade) {
	if(mouse) {
		draw_set_color(c_black);
		draw_text(mouse_x - 35, mouse_y+15, "Mais 1 de dano");	
		draw_set_color(-1);
	}

	switch(global.arma) {
		case 1:
			draw_text(x-10, y + 10, obj_weapon.valor_dano_pistol);	
		break;
		
		case 2:
			draw_text(x-10, y + 10, obj_weapon.valor_dano_uzi);

		break;
	}
}
draw_set_font(-1);