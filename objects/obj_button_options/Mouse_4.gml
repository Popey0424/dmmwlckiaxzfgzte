// go to room options 

if mouse_check_button_pressed(mb_left)
{
	audio_play_sound(Click, 1000, 0)
	with obj_fade
	
	{	
		pressed = 2;
	}
	
	
}

audio_sound_gain(Click, global.volume, 10);