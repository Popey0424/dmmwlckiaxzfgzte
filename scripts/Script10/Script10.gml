// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script10()
{
	if (__dnd_lives <=0)
	{
		
		if (instance_exists(obj_checkpoint_on))
		{
			vspeed=0;
			obj_player.y = obj_checkpoint_on.y;
			obj_player.x = obj_checkpoint_on.x;
			__dnd_lives = 1;
		}
		else
		{
			vspeed=0;
			obj_player.x = xstart;
			obj_player.y = ystart;
			__dnd_lives = 1;
		}
	}
}

function Script11()
{
	
	if (instance_exists(obj_checkpoint_on))
	{
		vspeed=0;
		obj_player.y = obj_checkpoint_on.y;
		obj_player.x = obj_checkpoint_on.x;
			
	}
	else
	{
		vspeed=0;
		obj_player.x = xstart;
		obj_player.y = ystart;
			
	}
}
