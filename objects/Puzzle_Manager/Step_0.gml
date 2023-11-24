/// @description Insert description here
// You can write your code in this editor

if(ds_list_size(global.puzzle01_answer) == ds_list_size(global.puzzle01))
{
	answer = ds_list_write(global.puzzle01_answer)
	puzzle = ds_list_write(global.puzzle01)
	if (answer == puzzle)
	{
		if (obj_porte_puzzle.image_index == 0)
		{
			obj_porte_puzzle.image_speed = 1
	
		}

		if (obj_porte_puzzle.image_index == 8)
		{
			obj_porte_puzzle.image_speed = 0
		}
	}
	else if (answer != puzzle)
	{
		obj_boite01.image_index = 0
		obj_boite02.image_index = 0
		obj_boite03.image_index = 0
		obj_boite04.image_index = 0
		ds_list_clear(global.puzzle01_answer)
		layer_enable_fx("Shake",true);
		alarm[0] = 30;
	}
	
}

if (obj_cuve.etat == 3)
{
	if (obj_porte_puzzle.image_index == 0)
	{
		obj_porte_puzzle.image_speed = 1
	
	}

	if (obj_porte_puzzle.image_index == 8)
	{
		obj_porte_puzzle.image_speed = 0
	}
}


if (global.puzzle03_answer == global.puzzle03)
{
	if (obj_porte_puzzle.image_index == 0)
	{
		obj_porte_puzzle.image_speed = 1
	
	}

	if (obj_porte_puzzle.image_index == 8)
	{
		obj_porte_puzzle.image_speed = 0
	}
}
