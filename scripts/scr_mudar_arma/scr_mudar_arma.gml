function mudar_arma(_id, index) {
    _id.weapon = index;

    var map = _id.armas[index];

    _id.weapon_stats = [
        map[? "sprite"],           // 0
        map[? "proj"],             // 1
        map[? "proj_spd"],         // 2
        map[? "proj_damage"],      // 3
        map[? "proj_delay"],       // 4
        map[? "proj_count"],       // 5
        map[? "proj_disp"],        // 6
        map[? "proj_penetration"], // 7
        map[? "automatic"],        // 8
        map[? "drop"]              // 9
    ];

    _id.can_shoot = true;
}

function upgrade_weapon(_index, value) {

    weapon_stats[_index] += value;
}