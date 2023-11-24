


//création d'un fade out de la room menu 

if (state == 0) and pressed = 1

{timer++; 
	
	if (timer >= duration) {
		
		
		state = 1;
	}
	
}

else if (state == 1) 

{
	audio_stop_all()
	//room_goto(Level01);
	room_goto_next()
timer--;


if (timer <= 0) 

{
	
	instance_destroy();
	
}

}

alpha = timer/duration;
// state ==2

if (state == 0) and pressed = 2

{timer++; 
	
	if (timer >= duration) {
		
		
		state = 2;
	}
	
}

else if (state == 2) 

{
	audio_stop_all()
	room_goto(RoomOptions);
timer--;


if (timer <= 0) 

{
	
	instance_destroy();
	
}

}

alpha = timer/duration;

// state == 3

if (state == 0) and pressed = 3

{timer++; 
	
	if (timer >= duration) {
		
		
		state = 3;
	}
	
}

else if (state == 3) 

{
	audio_stop_all()
	room_goto(Room_Credits);
timer--;


if (timer <= 0) 

{
	
	instance_destroy();
	
}

}

alpha = timer/duration;

// state == 4

if (state == 0) and pressed = 4

{timer++; 
	
	if (timer >= duration) {
		
		
		state = 4;
	}
	
}

else if (state == 4) 

{
	audio_stop_all()
	game_end()
	
timer--;


if (timer <= 0) 

{
	
	instance_destroy();
	
}

}



if (state == 0) and pressed = 5

{timer++; 
	
	if (timer >= duration) {
		
		
		state = 5;
	}
	
}

else if (state == 5) 

{
	audio_stop_all()
	room_goto(RoomMenu);
	
timer--;


if (timer <= 0) 

{
	
	instance_destroy();
	
}

}

alpha = timer/duration;