function mudar_arma(_id, index) {
    _id.weapon = index;
    var map = _id.armas[index];

    // Se a arma não tem uma lista de upgrades, cria uma
    if (!ds_map_exists(global.weapon_upgrades, index)) {
        ds_map_add(global.weapon_upgrades, index, ds_list_create());
    }

    // Inicializar o contador de upgrades para a arma, se necessário
    if (!ds_map_exists(global.weapon_upgrade_count, index)) {
        ds_map_add(global.weapon_upgrade_count, index, 0);
    }


    // Criar `weapon_stats` com valores iniciais da arma
    _id.weapon_stats = [
        map[? "sprite"],               // 0
        map[? "proj"],                 // 1
        map[? "proj_spd"],             // 2
        map[? "proj_damage"],          // 3
        map[? "proj_delay"],           // 4
        map[? "proj_count"],           // 5
        map[? "proj_disp"],            // 6
        map[? "proj_penetration"],     // 7
        map[? "automatic"],            // 8
        map[? "drop"]                  // 9
    ];

    // Aplicar upgrades existentes
    var upgrades = ds_map_find_value(global.weapon_upgrades, index);
    var size = ds_list_size(upgrades);
    for (var i = 0; i < size; i++) {
        var upgrade = upgrades[| i];
        _id.weapon_stats[upgrade[0]] += upgrade[1];
    }

    _id.can_shoot = true;
}

function upgrade_weapon(arma, _index, value) {
	
    // Obtém o contador de upgrades da arma
    var current_count = ds_map_find_value(global.weapon_upgrade_count, arma);

    // Verifica se o limite de upgrades já foi atingido
    if (current_count < 3) {
        // Aplica o upgrade na arma
        weapon_stats[_index] += value;

        // Salva o upgrade na lista da arma
        var upgrades = ds_map_find_value(global.weapon_upgrades, arma);
        ds_list_add(upgrades, [_index, value]);

        // Atualiza o contador de upgrades da arma
        ds_map_replace(global.weapon_upgrade_count, arma, current_count + 1);
    } else {
        show_message("Essa arma já recebeu o máximo de upgrades!");
    }
}
