

//if(global.pause) exit;


if obj_life_on = 0 and instance_exists(obj_life)
{

instance_destroy(obj_life);

}


if __dnd_lives > 4
{
	__dnd_lives = 4
}

if (global.combo % 5 == 0)
{
    global.score += bonus_par_combo * global.combo
}



global.life = __dnd_lives


//trigger flash
//if(keyboard_check_pressed(vk_space))
//	flashAlpha = 1;
	
//reduction flash
if flashAlpha > 0
{
	flashAlpha -= 0.01;
}

		
		
walk_spd = 10

if (global.facing == 0) && (keyboard_check(vk_nokey))

{
	
	if possede_arme = 0
	{sprite_index = spr_player_idle_without_weapon;  }
	else
	{sprite_index = spr_player_idle;}
}

if (global.facing == 1) && (keyboard_check(vk_nokey))
{
	image_xscale=-1;
}

reset_variables();

get_input();


//le joueur ne bouge plus si l'objet stop est présent

if (instance_exists(obj_stop_player)) 
{
	//do nothing
	}
else
{
calc_movement();
}
//if(mouse_check_button_pressed(ev_left_press))
//	{
//		obj_player.sprite_index = spr_player_attack_right
//	}





//le joueur peut bouger s'il appuie de nouveau sur f près d'un objet interactif

if ((instance_exists(obj_stop_player)) and f=0) or ((instance_exists(obj_stop_player)) and f2=0 ) or ((instance_exists(obj_stop_player)) and f3=0 ) or ((instance_exists(obj_stop_player)) and f4=0) or ((instance_exists(obj_stop_player)) and f5=0 )
{
instance_destroy(obj_stop_player);
}





//interaction avec l'objet narratif01

if f=1

{

if (keyboard_check_pressed(vk_right)) or keyboard_check_pressed(ord("D"))
{
  page_object = page_object+1;
} 


if (keyboard_check_pressed(vk_left)) or keyboard_check_pressed(ord("Q"))
{
  page_object = page_object-1;}

  
  
if ((keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("Q"))) and page_object<0)
{
  	f = 0;
	page_object = 0;
}

}

//obje interactif numéro 2

if f2=1

{
if (keyboard_check_pressed(vk_right)) or keyboard_check_pressed(ord("D"))
{
  page_object2 = page_object2+1;
} 

if (keyboard_check_pressed(vk_left)) or keyboard_check_pressed(ord("Q"))
{
  page_object2 = page_object2-1;}

 
if ((keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("Q"))) and page_object2<0)
{
      f2 = 0;
    page_object2 = 0;
}  }


// Checkpoint

if (__dnd_lives <=0)
{
		
	if (instance_exists(obj_checkpoint_on))
    {
        vspeed=0;
        obj_player.y = obj_checkpoint_on.y;
        obj_player.x = obj_checkpoint_on.x;
        __dnd_lives = 1;
    }
    else
    {
        vspeed=0;
        obj_player.x = xstart;
        obj_player.y = ystart;
        __dnd_lives = 1;
    }
}

Script10();



// interaction avec le livre 02

if f3=1

{
if (keyboard_check_pressed(vk_right)) or keyboard_check_pressed(ord("D"))
{
  page_object3 = page_object3+1;
} 

if (keyboard_check_pressed(vk_left)) or keyboard_check_pressed(ord("Q"))
{
  page_object3 = page_object3-1;}

 
if ((keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("Q"))) and page_object3<0)
{
      f3 = 0;
    page_object3 = 0;
}  }

// object interactif 04 (camera)



if f4=1

{
if (keyboard_check_pressed(vk_right)) or keyboard_check_pressed(ord("D"))
{
  page_object4 = page_object4+1;
} 

if (keyboard_check_pressed(vk_left)) or keyboard_check_pressed(ord("Q"))
{
  page_object4 = page_object4-1;}

 
if ((keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("Q"))) and page_object4<0)
{
      f4 = 0;
    page_object4 = 0;
}  }


//

life = __dnd_lives


//feedback visuel si on se prend un dégât


// Step Event hit timer 
if (hit_timer > 0) {
    image_blend = c_red; // Set sprite to red
    hit_timer -= 1;      // Decrease the timer
} else {
    image_blend = c_white; // Reset to normal color
}

if (global.shooting == true) and (possede_arme = 1)
{
	
	
	obj_player.sprite_index = spr_player_attack_right
}



//initalisationd des caméras


view_enabled = true;
view_visible[0] = true;
view_visible[1] = false;


// Tant que le joueur n'a pas récupéré l'arme


if possede_arme = 1

{
with obj_weapon

{

can_shoot = true;

}

}

else

with obj_weapon

{

can_shoot = false;

}

//créer le viseur



if possede_arme = 1

{

anim_arme = true;

}



if anim_arme = true 
{ 
	
	frames = frames + 1;
	alpha = alpha + 0.1;	
	
			
}


if fadeillu = true
{ 
alpha = alpha - 0.1;	
}


//Arrêter l'illu de fin

if anim_arme2 = true

{ 
	
	frames2 = frames2 + 1;
	alpha2 = alpha2 + 0.1;	
}

//objet interactif 5 : affiche

if f5=1

{
if (keyboard_check_pressed(vk_right)) or keyboard_check_pressed(ord("D"))
{
  page_object5 = page_object5+1;
} 

if (keyboard_check_pressed(vk_left)) or keyboard_check_pressed(ord("Q"))
{
  page_object5 = page_object5-1;}

 
if ((keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("Q"))) and page_object5<0)
{
      f5 = 0;
    page_object5 = 0;
}  }



