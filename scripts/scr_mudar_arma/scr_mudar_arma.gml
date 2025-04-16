function mudar_arma(_id, index) {
    _id.weapon = index;
    var map = _id.armas[index];
	

    // Se a arma não tem uma lista de upgrades, cria uma
    if (!ds_map_exists(global.weapon_upgrades, index)) {
        ds_map_add(global.weapon_upgrades, index, ds_list_create());
    }

    // Criar weapon_stats com valores iniciais da arma
    _id.weapon_stats = [
        map[? "sprite"],			   // 0
        map[? "proj"],				   // 1
        map[? "proj_spd"],             // 2
        map[? "proj_damage"],          // 3
        map[? "proj_delay"],           // 4
        map[? "proj_count"],           // 5
        map[? "proj_disp"],            // 6
        map[? "proj_penetration"],     // 7
        map[? "automatic"],            // 8
        map[? "drop"]                  // 9
    ];

    // Aplicar os upgrades da arma se existirem
    var upgrades = ds_map_find_value(global.weapon_upgrades, index);
    var size = ds_list_size(upgrades);
    for (var i = 0; i < size; i++) {
        var upgrade = upgrades[| i];
        _id.weapon_stats[upgrade[0]] += upgrade[1];
    }

    // Se a arma não tem contador de upgrades, inicializa com 0
    if (!ds_map_exists(global.weapon_upgrade_count, index)) {
        ds_map_add(global.weapon_upgrade_count, index, 0);
    }

    _id.can_shoot = true;
}

function upgrade_weapon(_index, value) {
	// aplicar upgrade
    weapon_stats[_index] += value;

    // Salvar o upgrade aplicado
    var upgrades = global.weapon_upgrades[? weapon];
    ds_list_add(upgrades, [_index, value]);
}


function check_upgrade(arma, _index, value) {
	
      // Se a arma não tem upgrades registrados, cria uma lista para ela
    if (!ds_map_exists(global.weapon_upgrades, arma)) {
        ds_map_add(global.weapon_upgrades, arma, ds_list_create());
    }
    
    // Se a arma não tem um contador de upgrades, inicializa com 0
    if (!ds_map_exists(global.weapon_upgrade_count, arma)) {
        ds_map_add(global.weapon_upgrade_count, arma, 0);
    }

    // Obtém a quantidade atual de upgrades aplicados na arma
    var current_count = ds_map_find_value(global.weapon_upgrade_count, arma);

    // Se ainda há espaço para upgrades, aplica
    if (current_count < global.upgrade_max) {
        upgrade_weapon(_index, value);

        // Salvar o upgrade aplicado
        var upgrades = ds_map_find_value(global.weapon_upgrades, arma);
        ds_list_add(upgrades, [_index, value]);

        // Atualizar contador de upgrades da arma
        ds_map_replace(global.weapon_upgrade_count, arma, current_count + 1);
    }
}