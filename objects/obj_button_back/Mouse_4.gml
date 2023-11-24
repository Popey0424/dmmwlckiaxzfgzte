// go to room options 

if mouse_check_button_pressed(mb_left)
{
	audio_play_sound(Click, 1000, 0)
	
	
	room_goto(RoomMenu);
	
	
	
}

audio_sound_gain(Click, global.volume, 10);