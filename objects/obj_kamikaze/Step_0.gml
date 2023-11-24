//if (distance_to_object(obj_player) < 2560) 
//{
//    active = true;
	
	if (x < obj_player.x) 
	{
        direction = 1; // L'ennemi va vers la droite
		 sprite_index = spr_kamikaze_right;
    } 
	else 
	{
        direction = -1; // L'ennemi va vers la gauche
		 sprite_index = spr_kamikaze_left;
	}

//else 
//{
//	active = false;
//}
//if (active) 
//{
//    move_towards_point(obj_player.x, obj_player.y, 6);



//feedback visuel hit

if flashAlpha > 0
{
	flashAlpha -= 0.10;
}

 
