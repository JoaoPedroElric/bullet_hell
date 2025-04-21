function save(){
	
	if(file_exists("save.sav")) file_delete("save.sav");
	ini_open("save.sav");
	
	ini_write_real("player", "id_arma", global.arma);
	
	ini_close();		
	global.id_wave +=1;
	//show_message("salvo");
}

function load() {
	if(file_exists("save.sav")) {
		ini_open("save.sav");
		global.arma = ini_read_real("player", "id_arma", 0);
		show_message("load");
		ini_close();
	}	
}