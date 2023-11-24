/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

//x = obj_Player.x + 250;
//y = obj_Player.y + 10;
//var _dist = point_distance(obj_player.x, obj_player.y, x, y);
//if(_dist > 300)
//	_dist = 300;
	
var _dis = 300;
var _dir = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
_dir = clamp(_dir, 0, 359);
x = obj_player.x + lengthdir_x(_dis, _dir);
y = obj_player.y + lengthdir_y(_dis, _dir);
//image_angle = _dir
//scr_viseur()


zone_collision_active = false;
image_index = 0



