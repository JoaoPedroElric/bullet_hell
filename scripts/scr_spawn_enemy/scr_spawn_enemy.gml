function spawn_enemy() {
	
    var cam = view_get_camera(0);
    var cam_x = camera_get_view_x(cam);
    var cam_y = camera_get_view_y(cam);
    var cam_w = camera_get_view_width(cam);
    var cam_h = camera_get_view_height(cam);

    var spawn_x = irandom_range(cam_x, cam_x + cam_w);
    var spawn_y = irandom_range(cam_y, cam_y + cam_h);
	
    instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy_1);	
}