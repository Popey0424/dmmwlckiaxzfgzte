/// @description Insert description here
// You can write your code in this editor

draw_self();

/*if ( _spawned == false)
{
	//test = part_system_create();
	_spawned = true;
}*/
part_particles_create(global.ps_system, x+100, y-20, PS_Particle_sparks, 1)