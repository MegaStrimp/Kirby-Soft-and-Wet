///@description KSW - Particle Set - New

function scr_KSW_ParticleSet_New(parTargetX,parTargetY)
{
	var par = [];
	
	par[0] = instance_create_depth(parTargetX,parTargetY,depth,obj_Particle);
	with (par[0])
	{
		sprite_index = spr_KSW_Particle_New;
		stopAfterAnimation = true;
		destroyTimer = 60;
	}
	
	return par;
}