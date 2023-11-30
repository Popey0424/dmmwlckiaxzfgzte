function reset_variables()
{
	left  = 0;
	right = 0;
	up    = 0;
	down  = 0; 
	
	
	
}

function get_input()
{
	if(keyboard_check(ord("Q"))or keyboard_check(vk_left)) 
	{
		left = 1;
	}
	if(keyboard_check(ord("D"))or keyboard_check(vk_right)) 
	{
		right = 1;
	}
	if(keyboard_check(ord("Z"))or keyboard_check(vk_up)) up = 1;
	if(keyboard_check(ord("S"))or keyboard_check(vk_down)) down = 1;
	
	//if (keyboard_check(ord("Q")) || keyboard_check(ord("D")) || keyboard_check(ord("Z")) || keyboard_check(ord("S")))
	//{
	//	// Code pour jouer le son de pas ici
	//	audio_play_sound(Course, 1, false);
	//}
	
}

function calc_movement()
{
	
	if (sparks == true)
	{
		//sparks = part_system_create();
		sparks = false;
	
	}
	part_particles_create(global.ps_system, obj_player.x- (irandom_range(50,150)), obj_player.y+(irandom_range(0,75)), PS_sparks_fluid, 1)

	var _hmove = right - left;  //creation d'une variable qui vas etre libere de la memoir a la fin de la braquette
	if(_hmove == -1)
	{
		if possede_arme = 0
		
		{sprite_index = spr_player_right_without_weapon;}
		
		else
		
		{ sprite_index = spr_player_right;}
		
		
		facing_left = true;
		facing_right = false;
			
		image_xscale = -1
	}
	
	
	else if (_hmove == 1)
	{
		
		if possede_arme = 0
		
		{sprite_index = spr_player_right_without_weapon;}
		
		else
		
		{ sprite_index = spr_player_right;}
		
		
		facing_right = true;
		facing_left = false;
		
		image_xscale = 1
		
	}
	//if(mouse_check_button_pressed(ev_left_press))
	//{
		
	//}
	var _vmove = down - up;
	if ( _vmove == -1 )
	{
		//if (facing_left == true) sprite_index = spr_player_left;
		//if (facing_right == true) 
		
		if possede_arme = 0
		
		{sprite_index = spr_player_right_without_weapon;}
		
		else
		
		{ sprite_index = spr_player_right;}
		
		
		
	}
	else if ( _vmove == 1 )
	{
		//if (facing_left == true) sprite_index = spr_player_left;
		//if (facing_right == true) 
		if possede_arme = 0
		
		{sprite_index = spr_player_right_without_weapon;}
		
		else
		
		{ sprite_index = spr_player_right;}
	
		
	}
	
	
		
							// aller a gauche right = 0 et left = -1 donc = -1 donc player vas a gauche 
								// si cas contraire right = 1 et left = 0 alors go droite 
	
	if(_hmove != 0 or _vmove != 0) // si je ne suis pas = 0 alors on se deplace donc on continue le script sinon je finis la braquette
	{
		var _dir = point_direction(0, 0, _hmove, _vmove);// sers pour enlever le bug des diagonales 
		_hmove = lengthdir_x(walk_spd, _dir);
		_vmove = lengthdir_y(walk_spd, _dir);
		
		x += _hmove;
		y += _vmove;
		global.shooting = false;
		
	}	
	
	
}


function collision()
	{
		var _tx = x;
		var _ty = y;
		
		x = xprevious;
		y = yprevious;
		
		//get distance we want to move 
		var _disx = abs(_tx - x);
		var _disy = abs(_ty- y);
		
		repeat(_disx)
		{
			if(!place_meeting(x+sign(_tx-x), y, other))
			{
				x += sign(_tx-x);
				 
			}
		}
		
		repeat(_disy)
		{
			if(!place_meeting(x, y+sign(_ty-y), other))
			{
				y += sign(_ty-y);
			}
		}

		if place_meeting(x, y, other)
		{
				for( var i = 0; i < 1000; ++ i)
			{
				if (!place_meeting(x + i, y, other))
				{
					x += i;
					break;
				}
				if (!place_meeting(x - i, y, other))
				{
					x -= i;
					break;
				}
				if (!place_meeting(x, i + y, other))
				{
					y += i;
					break;
				}
				if (!place_meeting(x, i - y, other))
				{
					y -= i;
					break;
				}
	
			}
		}
	}