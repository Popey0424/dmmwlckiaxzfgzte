// aller a la room suivante 

if mouse_check_button_pressed(mb_left)
{
	audio_play_sound(Click, 1000, 0)
	//room_goto(Level01);
	
	with obj_fade
	
	{	
		pressed = 1;
	}
	

}

audio_sound_gain(Click, global.volume, 10);