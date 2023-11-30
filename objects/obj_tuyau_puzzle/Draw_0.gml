/// @description Insert description here
// You can write your code in this editor



if ( _spawned == false)
{
	test = part_system_create();
	_spawned = true;
}
part_particles_create(test, x, y, PS_Particle_sparks, 1)