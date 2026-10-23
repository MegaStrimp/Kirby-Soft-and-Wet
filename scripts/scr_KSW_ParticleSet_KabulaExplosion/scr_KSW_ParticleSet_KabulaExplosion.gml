///@description KSW - Particle Set - Event Star

function scr_KSW_ParticleSet_KabulaExplosion(parTargetX,parTargetY)
{
	var par = [];
	
	par[0] = instance_create_depth(parTargetX,parTargetY,depth,obj_Particle);
	with (par[0])
	{
		sprite_index = spr_KSW_Particle_KabulaExplosion;
		destroyAfterAnimation = true;
	}
	
	return par;
}