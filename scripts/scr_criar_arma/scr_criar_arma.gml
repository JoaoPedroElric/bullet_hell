function criar_arma(sprite, proj, proj_spd, proj_damage, proj_delay, proj_count, proj_disp, proj_penetration, automatic, drop) {
    return {
        sprite: sprite,
        proj: proj,
        proj_spd: proj_spd,
        proj_damage: proj_damage,
        proj_delay: proj_delay,
        proj_count: proj_count,
        proj_disp: proj_disp,
        proj_penetration: proj_penetration,
        automatic: automatic,
        drop: drop
    };
}

