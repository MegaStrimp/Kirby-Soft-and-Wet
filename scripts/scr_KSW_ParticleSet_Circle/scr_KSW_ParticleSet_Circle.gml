///@description KSW - Particle Set - Circle

function scr_KSW_ParticleSet_Circle(parTargetX,parTargetY)
{
	var par = [];
	
	par[0] = instance_create_depth(parTargetX,parTargetY,depth - 1,obj_Particle);
	with (par[0])
	{
		sprite_index = spr_KSW_Particle_Circle;
		destroyAfterAnimation = true;
	}
	
	return par;
}