/// @description create hole
// You can write your code in this editor

global.shooting = true


//obj_player.sprite_index = spr_player_attack_right
if (obj_zone_collision.x < obj_player.x)
{
	obj_player.image_xscale = -1
}
else
{
	obj_player.image_xscale = 1
}

if(can_shoot == true)
	{
		audio_play_sound(tir, 1000, 0)
		instance_create_layer(obj_trou_visu.x , obj_trou_visu.y , "Instances_Character", obj_trou01);
		
		can_shoot = false;
		
		alarm_set(0, 120);
	}
	
audio_sound_gain(tir, global.volume, 0);