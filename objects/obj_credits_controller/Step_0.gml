/// @description Credits room controller

if (keyboard_check(vk_enter) || y < -600 || keyboard_check_released(vk_escape))
{
	
	room_goto(rm_fe);		
	obj_player.image_alpha = 1;
	obj_player.x = obj_player.xstart;
	obj_player.y = obj_player.ystart;
}