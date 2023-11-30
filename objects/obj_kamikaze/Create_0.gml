if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(6);


_spawned = false;
death = false;

enemy_just_died = false;


flashAlpha = 0;

flashColour = c_white;

path = path_add();

target_x = obj_player.x
target_y = obj_player.y

alarm[0] = 1;
