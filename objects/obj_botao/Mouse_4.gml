image_xscale = escala_x * 1.2;
image_yscale = escala_y * 0.8;

if (instance_exists(obj_weapon)) {
    with (obj_weapon) {
        test_up();
    }
}