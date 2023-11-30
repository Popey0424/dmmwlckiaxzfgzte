/// @description Insert description here
// You can write your code in this editor

obj_life_on = 1;


if obj_life_on = 1
{	
instance_create_layer(0, 0, "Instances_pop_up", obj_life);
alarm[4] = 60;

with obj_life 
{
flashui = 1;


}

}



//if (__dnd_lives = 0)
//{
//	room_goto(Room_GameOver);
//}


if (__dnd_lives >= 0) and (invincible = false)
{
	
	invincible = true;
	//__dnd_lives -= 1;
	flashAlpha = 1;
	layer_enable_fx("Shake",true);
	alarm[2] = 5;
	alarm[1] = 60 ;
}
		
