function scr_player_movement_fe() {
	var x_axis = 0;

	if (keyboard_check(vk_left) || keyboard_check(vk_right))
	{
		x_axis = keyboard_check(vk_right) - keyboard_check(vk_left);	
	}


	if (x_axis != 0 )
	{
		// Move player by multiplyihg by fraction of a second that represents frame time
		x += x_axis * player_speed;
	}
	x = clamp(x, 244, 776);

	if (x_axis > 0)
	{
		image_xscale = 1;	
		sprite_index = spr_player_right;
	}
	else if (x_axis < 0)
	{
		image_xscale = -1;	
		sprite_index = spr_player_right;
	}
	else
	{
		sprite_index = spr_player_right;	
		image_index = 2;	
	}


}
