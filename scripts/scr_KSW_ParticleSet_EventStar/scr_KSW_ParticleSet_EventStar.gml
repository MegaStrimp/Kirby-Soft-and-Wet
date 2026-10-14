///@description KSW - Particle Set - Event Star

function scr_KSW_ParticleSet_EventStar(parTargetImageBlend)
{
	var par = [];
	
	par[0] = instance_create_layer(-12,global.gameHeight / 2,"Instances",obj_Particle);
	with (par[0])
	{
		sprite_index = spr_KSW_Event_Star;
		image_blend = parTargetImageBlend;
		destroyTimer = 150;
		hsp = 4;
	}
	
	return par;
}