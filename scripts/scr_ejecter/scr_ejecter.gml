// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

	

function scr_ejecter()
{
	
	var  targetX = other.x; 
	var  targetY = other.y;
	
	//new way
	/*var _dir = point_direction(other.xprevious, other.yprevious, other.x, other.y);
	var _xdest = lengthdir_x(128, _dir+180);
    var _ydest = lengthdir_y(128, _dir+180);
	if (!place_meeting(other.x + _xdest, other.y + _ydest, obj_Wall))
	{
		other.x += _xdest;
		other.y += _ydest;
	}*/
	
	if (other.x <= x-128) 
	{
		targetX = x - 200;
		targetY = other.y;
		if (place_meeting(targetX - 128, targetY, obj_Wall))
		{
			if (!place_meeting(targetX + 20, targetY, obj_Wall))
				other.x -= 10;
		}
		else
			other.x -= 200
		
		//if (!place_meeting(targetX - 20, targetY, obj_Wall))
			//other.x -= 20;
		
	}
	
	else if (other.x >= x+128)
	{
		targetX = x + 200;
		targetY = other.y;
		if (place_meeting(targetX + 128, targetY, obj_Wall))
		{
			if (!place_meeting(targetX + 20, targetY, obj_Wall))
				other.x += 10;
		}	
		else
			other.x += 200
	}


	else if (other.y < y - 64) // player au dessus
	{
		targetX = other.x;
		targetY = other.y - 196;
		if (place_meeting(targetX, targetY - 96, obj_Wall))
		{
			if (!place_meeting(targetX, targetY - 20, obj_Wall))
				other.y -= 10;
		}
		else
			other.y -= 196
	}
	
	else if (other.y >= y -5) // player en dessous
	{
		targetX = other.x;
		targetY = other.y + 196;
		if (place_meeting(targetX, targetY + 96, obj_Wall))
		{
			if (!place_meeting(targetX, targetY + 20, obj_Wall))
				other.y += 10;
		}
		else
			other.y += 196
	}
	
	
	/*if (!place_meeting(targetX, targetY, obj_Wall))
	{
		other.x = targetX;
		other.y = targetY;
	}*/
}


function scr_ejecter_ennemies()
{
	
	var  targetX = other.x; 
	var  targetY = other.y;
	
	
    
	
	if (other.x <= x-128) 
	{
		targetX = x - 500;
		targetY = other.y;
		if (!place_meeting(targetX, targetY, obj_Wall))
		{
			other.x -= 100;
		}
		
	}
	
	else if (other.x >= x+128)
	{
		targetX = x + 500;
		targetY = other.y;
		if (!place_meeting(targetX, targetY, obj_Wall))
		{
			other.x += 100;
		}	
	}

	else if (other.y <= y + 64) // player en dessous
	{
		targetX = other.x;
		targetY = other.y + 250;
		if (!place_meeting(targetX, targetY, obj_Wall))
		{
			other.y +=100;
		}
	}

	else if (other.y >= y - 181) // player au dessus
	{
		targetX = other.x;
		targetY = other.y - 250;
		if (!place_meeting(targetX, targetY, obj_Wall))
		{
			other.y -= 100;
		}
	}
	
	/*if (!place_meeting(targetX, targetY, obj_Wall))
	{
		other.x = targetX;
		other.y = targetY;
	}*/
}




function scr_puzzle02()
{
	if (other.x < x) 
	{
		other.x = x - 256
	}
	
	else if (other.x >= x)
	{
		other.x = x + 256
	}
}

