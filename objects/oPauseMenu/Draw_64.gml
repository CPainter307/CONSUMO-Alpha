/// @desc Draw pause menu if game is paused
if (isPaused)
{
draw_set_font(fMenu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
//draw_set_color(c_black); // Black rectangle
//draw_rectangle(0,0,room_width,room_height,0); // Draws the rectangle above the tile set
draw_sprite(sPauseMenu,image_index,0,0);


for (var i = 0; i < menu_items; i++)
{
	var offset = 2;
	var txt = menu[i];
	if (menu_cursor == i)
	{
		txt = string_insert("> ", txt, 0);
		var col = make_color_rgb(242, 255, 73);
	}
	else
	{
		var col = c_gray;	
	}
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i * 1.5));
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy+offset,txt);
	draw_text(xx,yy-offset,txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
}
}