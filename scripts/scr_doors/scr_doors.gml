// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_door_close(){
	if (obj_porte.image_index == 10)
	{
		obj_porte.image_speed = -1
	
	}

	if (obj_porte.image_index == 0)
	{
		obj_porte.image_speed = 0
	}



	if (obj_porte_puzzle.image_index == 8)
	{
		obj_porte_puzzle.image_speed = -1
	
	}

	else if (obj_porte_puzzle.image_index == 0)
	{
		obj_porte_puzzle.image_speed = 0
		obj_porte_puzzle.image_index = 0
	}
}

function scr_door_open()
{
	if (obj_porte.image_index == 0)
	{
		obj_porte.image_speed = 1
	
	}

	if (obj_porte.image_index == 10)
	{
		obj_porte.image_speed = 0
	}



	if (obj_porte_puzzle.image_index == 0)
	{
		obj_porte_puzzle.image_speed = 1
	
	}

	else if (obj_porte_puzzle.image_index == 8)
	{
		obj_porte_puzzle.image_speed = 0
	}
}