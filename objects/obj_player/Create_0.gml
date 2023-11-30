/// @description Insert description here
// You can write your code in this editor

global.life = 0

instance_create_layer(0, 0, "Instances_Obj_Weapon", obj_weapon);

instance_create_layer(0, 0, "Instances_pop_up", obj_zone_collision);



// Initialisation des variables
global.score = 0
global.combo = 0
global.shooting = false
temps_max_sans_tuer = 2 // en secondes
bonus_par_combo = 10

combo_reset_timer = 0;

sparks = false;

//deactive shake par défaut
layer_enable_fx("Shake",false);

//Change la valeur de l'alpha
flashAlpha = 0;
//couleur 
flashColour = c_white;

obj_life_on = 0;



global.facing = 0

if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(3);

//isGamePaused = false;


//Initialise les variables pour la narration :


	xx = camera_get_view_height(0)/2;
	yy = camera_get_view_width(0);

	text01 = 0;
	
	page_object = 0;
	f = 0;
	
	f2 = 0;
	page_object2 = 0;
	
	next_dialogue = 0;
	
	page_object3 = 0;
    f3 = 0;
	
	
	page_object4 = 0;
	f4 = 0;
	
	possede_arme = 0;
	
	anim_arme = false;
	frames = 0;
	fadeillu = false;
	
	
	frames2 = 0;
	
	
	anim_arme2 = false;

	
	
	page_object5 = 0;
	f5 = 0;
	
	alpha2 = 0;
	alpha = 0;
	
	//invincibilité temporaire
	
	invincible = false;
	
	
	
	flashui = 0;
	
	

hit_timer = 0;
	
	 
	 