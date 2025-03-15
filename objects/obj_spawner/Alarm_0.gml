if (spawned_enemies < enemies_per_wave) {
    spawn_enemy();
    spawned_enemies += 1;
    alarm[0] = irandom_range(30,60);
}