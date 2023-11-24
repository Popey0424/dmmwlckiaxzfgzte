if (audio_group_is_loaded(music_group))
{
	audio_play_sound(Game_music, 1000, true);
	_control = true;
}

audio_sound_gain(Game_music, global.volume, 0);
