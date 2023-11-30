/// @description Insert description here
// You can write your code in this editor
x = obj_zone_collision.x
y = obj_zone_collision.y 
move_snap(128,64)



if (x > obj_player.x)
{
	image_xscale = 1
}

else if (x < obj_player.x)
{
	image_xscale = -1
}


if (obj_player.possede_arme == 0)
{
	self.image_alpha = 0
}
else if (obj_player.possede_arme == 1)
{
	self.image_alpha = 0.2
}

if (place_meeting(obj_zone_collision.x, obj_zone_collision.y, obj_player))
{
	image_blend = c_red
}

else if (!place_meeting(obj_zone_collision.x, obj_zone_collision.y, obj_player))
{
	image_blend = c_white
}
