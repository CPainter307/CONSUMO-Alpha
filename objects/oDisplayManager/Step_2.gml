#macro view view_camera[0]
camera_set_view_size(view, ideal_width, ideal_height)

if instance_exists(oPlayer) {
	var _x = clamp(oPlayer.x - (ideal_width)/2, 0, room_width-(ideal_width))
	var _y = clamp(oPlayer.y - (ideal_height)/2, 0, room_height-(ideal_height))
	
	var _cur_x = camera_get_view_x(view)
	var _cur_y = camera_get_view_y(view)

	var _spd = .2
	camera_set_view_pos(view, lerp(_cur_x, _x, _spd), lerp(_cur_y, _y, _spd))
}