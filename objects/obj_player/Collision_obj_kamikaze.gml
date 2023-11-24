


obj_life_on = 1;

if obj_life_on = 1
{	
instance_create_layer(0, 0, "Instances_pop_up", obj_life);
alarm[4] = 60;
}


if (invincible = false) {
	invincible = true;
	__dnd_lives -= 2;
	flashAlpha = 1;
	layer_enable_fx("Shake",true);
	alarm[2] = 5;
	alarm[1] = 60 ;
}




if (place_meeting(x, y, obj_kamikaze)) {
    hit_timer = 60; // 1 second at 60 frames per second
}