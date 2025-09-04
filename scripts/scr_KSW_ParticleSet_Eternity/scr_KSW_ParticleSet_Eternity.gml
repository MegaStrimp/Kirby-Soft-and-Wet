///@description KSW - Particle Set - Eternity

function scr_KSW_ParticleSet_Eternity(parTargetX,parTargetY,parTargetDepth,parTargetVsp)
{
	var par = [];
	
	par[0] = instance_create_depth(parTargetX,parTargetY,parTargetDepth,obj_Particle);
	with (par[0])
	{
		sprite_index = spr_KSW_Particle_Eternity;
		image_alpha = .4;
		scale = random_range(.5,1);
		destroyTimer = 420;
		vsp = parTargetVsp;
	}
	
	return par;
}