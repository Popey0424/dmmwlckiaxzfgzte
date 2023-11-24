// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_snap_angle(image_angle){
	show_debug_message(image_angle)
	if (image_angle < 45 || image_angle >= 315)
	{
		image_angle = 0
	}
	//else if (image_angle >= 45 && image_angle < 135)
	//{
	//	image_angle = 90
	//}
	
	else if (image_angle >= 135 && image_angle < 225)
	{
		image_angle = 180
	}

	//else if (image_angle >= 225 && image_angle < 315)
	//{
	//	image_angle = 270
	//}
	
	return (image_angle)
}

function scr_viseur()
{
	if (x < obj_player.x && y < obj_player.y-150)
	{
		x = obj_player.x - 200
		y = obj_player.y - 150
	}
	else if (x >= obj_player.x && y < obj_player.y-150)
	{
		x = obj_player.x + 200
		y = obj_player.y - 150
	}
	else if (x < obj_player.x && y > obj_player.y+150)
	{
		x = obj_player.x - 200
		y = obj_player.y + 150
	}
	else if (x >= obj_player.x && y > obj_player.y+150)
	{
		x = obj_player.x + 200
		y = obj_player.y + 150
	}
}
	
function scr_volume_manager(image_angle)
{
	if (image_angle < 16.36)
	{
		image_angle = 0
	}
	
	else if (image_angle < 49.08 || image_angle >= 16.36)
	{
		image_angle = 32.72
	}
	
	else if (image_angle < 81.8 || image_angle >= 49.08)
	{
		image_angle = 65.44
	}
	
	else if (image_angle < 114.52 || image_angle >= 81.8)
	{
		image_angle = 98.16
	}
	
	else if (image_angle < 147.24 || image_angle >= 114.52)
	{
		image_angle = 130.88
	}
	
	else if (image_angle < 179.96 || image_angle >= 147.24)
	{
		image_angle = 163.6
	}
	
	else if (image_angle < 212.68 || image_angle >= 179.96)
	{
		image_angle = 196.32
	}
	
	else if (image_angle < 245.4 || image_angle >= 212.68)
	{
		image_angle = 229.04
	}
	
	else if (image_angle < 278.12 || image_angle >= 245.4)
	{
		image_angle = 261.76
	}
	
	else if (image_angle < 310.84 || image_angle >= 278.12)
	{
		image_angle = 294.48
	}
	
	else if (image_angle < 343.56  || image_angle >= 310.84)
	{
		image_angle = 327.2
	}
	
	else if (image_angle >= 343.56)
	{
		image_angle = 359.92
	}
}
