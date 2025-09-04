///@description KSW - Particle Set - Gloom

function scr_KSW_ParticleSet_Gloom(parTargetX,parTargetY)
{
	var par = [];
	
	par[0] = instance_create_depth(parTargetX,parTargetY,depth,obj_Particle);
	with (par[0])
	{
		sprite_index = spr_KSW_Particle_Gloom;
		destroyTimer = 30;
	}
	
	return par;
}