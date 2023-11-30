if(__dnd_lives <= 0)
{
	
	
	global.score += 100; 
	


	
	instance_destroy()
	with(other)
	{
		if(!variable_instance_exists(id, "__dnd_lives"))
		obj_player.__dnd_lives += real(1);
	}
}
else if (__dnd_lives >= 0)
{
	__dnd_lives -= 1;
	death = true;
}



flashAlpha = 1;