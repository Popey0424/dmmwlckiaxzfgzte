/// @description Insert description here
// You can write your code in this editor

if (image_angle >= 0 && image_angle < 18)
	global.nb_rotation = 5
	
	
if (image_angle >= 18 && image_angle < 18*3)
	global.nb_rotation = 4.5


if (image_angle >= 18*3 && image_angle < 18*5)
	global.nb_rotation = 4
	
	
if (image_angle >= 18*5 && image_angle < 18*7)
	global.nb_rotation = 3.5
	

if (image_angle >= 18*7 && image_angle < 18*9)
	global.nb_rotation = 3
	
	
if (image_angle >= 18*9 && image_angle < 18*11)
	global.nb_rotation = 2.5
	

if (image_angle >= 18*11 && image_angle < 18*13)
	global.nb_rotation = 2
	
	
if (image_angle >= 18*13 && image_angle < 18*15)
	global.nb_rotation = 1.5
	

if (image_angle >= 18*15 && image_angle < 18*17)
	global.nb_rotation = 1
	
	
if (image_angle >= 18*17 && image_angle < 18*19)
	global.nb_rotation = 0.5
		

if (image_angle >= 18*19)
	global.nb_rotation = 0
	

if (image_angle > 18*20)
	image_angle = 1800


Valve_mana.keep_angle = image_angle