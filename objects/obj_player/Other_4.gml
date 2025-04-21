if (!arma_criada) {
	ini_open("save.sav");
    global.arma = ini_read_real("player", "id_arma", 0);
    show_debug_message("Room Start - Global arma: " + string(global.arma));
   
    instance_create_layer(x, y, "weapons", obj_weapon);
    arma_criada = true;
	ini_close();
}

show_debug_message("fora do if Room Start - Global arma: " + string(global.arma));
