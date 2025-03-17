x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2;

function card_select(){
	
	instance_create_layer(x, y, "Instances", obj_card);
	
}