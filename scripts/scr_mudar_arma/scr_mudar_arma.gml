function mudar_arma(_id,index){
	
	weapon = index;
	var map = _id.armas[_id.weapon];
	_id.sprite = map[? "sprite"];
	_id.proj = map[? "proj"];
	_id.proj_spd = map[? "proj_spd"];
	_id.proj_damage = map[? "proj_damage"];
	_id.proj_delay = map[? "proj_delay"];
	_id.proj_count = map[? "proj_count"];
	_id.proj_disp = map[? "proj_disp"];
	_id.proj_penetration = map[? "proj_penetration"];
	_id.automatic = map[? "automatic"];
	_id.drop = map[? "drop"];
	
	_id.can_shoot = true;

}