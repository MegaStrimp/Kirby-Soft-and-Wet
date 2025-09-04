///@description KSW - Particle Set - Bubble

function scr_KSW_ParticleSet_Bubble(parTargetX,parTargetY,parTargetHsp,parTargetVsp)
{
	var par = [];
	
	par[0] = instance_create_depth(parTargetX + irandom_range(-2,2),parTargetY + irandom_range(-2,2),depth + 1,obj_Particle);
	with (par[0])
	{
		sprite_index = choose(spr_KSW_Particle_Bubble1,spr_KSW_Particle_Bubble2);
		destroyTimer = 420;
		hsp = parTargetHsp;
		vsp = parTargetVsp;
		canBePaused = false;
	}
	
	return par;
}