/// @description Insert description here
// You can write your code in this editor

draw_self();

if flashAlpha > 0

{     
	shader_set(sh_flash);     
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, flashColour, flashAlpha);    
	shader_reset(); 
	
}

draw_path(path, x, y, 1);




if ( _spawned == false )
{
	//test = part_system_create();
	_spawned = true;
}

if death = true
{
part_particles_create(global.ps_system, x, y, PS_Explosion, 1)
death = false;
}
