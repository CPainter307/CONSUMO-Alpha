/// @description Insert description here
// You can write your code in this editor
if (instance_exists(oPlayer)) {
	if (!oPlayer.holdingL && !oPlayer.holdingR) {	
		x = lerp(x, oPlayer.x+xrad*sin(t+pi/2), .3);
		y = lerp(y, oPlayer.y+yrad*sin(2*t), .3);
		t += dt;
		if (t >= 2*pi) {
			t -= 2*pi;
		}
		if (oPlayer.facingRight)
		{
			image_xscale = .2;	
		}
		else
		{
			image_xscale = -.2;	
		}
	}

	if (oPlayer.holdingL || oPlayer.holdingR) {
		image_xscale = .2;
		image_angle = oPlayerPickUpRadius.imageDir;
		if (image_angle > 90) && (image_angle < 270) {
			image_yscale = -.2;	
		}
		else {
			image_yscale = .2;	
		}
		if (oPlayer.hsp = 0) {
			x = lerp(x, (oPlayer.x) + sin(get_timer()/700000) * 10, .3); 
			y = lerp(y, (oPlayer.y - 75) + sin(get_timer()/750000) * 10, .3);
		}
		//rotate sprite 	
		if (!gamepad_is_connected(0)) {

			if oPlayerInput.key_up {
				x = lerp(x, (oPlayer.x) + sin(get_timer()/400000) * 2, .3);
				y = lerp(y, (oPlayer.y - 110) + sin(get_timer()/350000) * 2, .3);		
			}
			if oPlayerInput.key_left	{
				x = lerp(x, (oPlayer.x - 128) + sin(get_timer()/400000) * 2, .3);
				y = lerp(y, (oPlayer.y) + sin(get_timer()/350000) * 2, .3);	
			}
			if oPlayerInput.key_right	{
				x = lerp(x, (oPlayer.x + 128) + sin(get_timer()/400000) * 2, .3);
				y = lerp(y, (oPlayer.y) + sin(get_timer()/350000) * 2, .3);	
			}
			if oPlayerInput.key_down	{
				x = lerp(x, (oPlayer.x) + sin(get_timer()/400000) * 2, .3);
				y = lerp(y, (oPlayer.y + 100) + sin(get_timer()/350000) * 2, .3);	
			}
			if oPlayerInput.key_down && oPlayerInput.key_right	{
				x = lerp(x, (oPlayer.x + 70) + sin(get_timer()/400000) * 2, .3);
				y = lerp(y, (oPlayer.y + 100) + sin(get_timer()/350000) * 2, .3);
			}
			if oPlayerInput.key_up && oPlayerInput.key_right {
				x = lerp(x, (oPlayer.x + 70) + sin(get_timer()/400000) * 2, .3);
				y = lerp(y, (oPlayer.y - 100) + sin(get_timer()/350000) * 2, .3);
			}
			if oPlayerInput.key_down && oPlayerInput.key_left {
				x = lerp(x, (oPlayer.x - 70) + sin(get_timer()/400000) * 2, .3);
				y = lerp(y, (oPlayer.y + 100) + sin(get_timer()/350000) * 2, .3);
			}
			if oPlayerInput.key_up && oPlayerInput.key_left {
				x = lerp(x, (oPlayer.x - 70) + sin(get_timer()/400000) * 2, .3);
				y = lerp(y, (oPlayer.y - 100) + sin(get_timer()/350000) * 2, .3);
			}
			sprite_index = sHacky;
			if oPlayer.isLocked {
				x = mouse_x + sin(get_timer()/400000) * 2;
				y = mouse_y + sin(get_timer()/350000) * 2;
				radX = abs(lengthdir_x(128, oPlayerInput.mouse_dir));
				radY = abs(lengthdir_y(128, oPlayerInput.mouse_dir));
				x = clamp(x, oPlayer.x - radX, oPlayer.x + radX);
				y = clamp(y, oPlayer.y - radY, oPlayer.y + radY);
			}
		}	
		
		if (gamepad_is_connected(0)) {
			sprite_index = sHacky;
			x = (oPlayer.x + 30) + sin(get_timer()/400000) * 10;
			y = (oPlayer.y - 100) + sin(get_timer()/350000) * 10;
			/*if (gamepad_axis_value(0, gp_axislh) == 0 && gamepad_axis_value(0, gp_axislv) == 0) {
				sprite_index = sIndicatorCircle;
			}*/
		}
	}
	if (!oPlayer.holdingL || !oPlayer.holdingR)
	{
		if (x > oPlayer.x && (oPlayerPickUpRadius.throwingL || oPlayerPickUpRadius.throwingR))
		{
			image_angle = 0;
			image_yscale = .2;
			image_xscale = .2;
		}
		if (x < oPlayer.x && (oPlayerPickUpRadius.throwingL || oPlayerPickUpRadius.throwingR))
		{
			image_angle = 0;	
			image_yscale = .2;
			image_xscale = .2;
			oPlayer.imageDir = 0;
		}
	}
}