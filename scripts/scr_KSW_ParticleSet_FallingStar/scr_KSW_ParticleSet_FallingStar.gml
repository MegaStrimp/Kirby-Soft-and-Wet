///@description KSW - Particle Set - Falling Star

function scr_KSW_ParticleSet_FallingStar(parTargetX,parTargetY)
{
	var par = [];
	var targetPalIndex = irandom_range(1,9);
	
	par[0] = instance_create_depth(parTargetX,parTargetY,depth + 1,obj_Particle);
	with (par[0])
	{
		sprite_index = spr_KSW_Particle_SmallStar;
		destroyTimer = 420;
		hsp = -2;
		vsp = 2;
		palSprite = spr_KSW_Particle_FallingStar_Pal_Rainbow;
		palIndex = targetPalIndex;
	}
	
	for (var i = 1; i < 4; i++)
	{
		par[i] = instance_create_depth(parTargetX + (i * 6),parTargetY - (i * 6),depth + 1,obj_Particle);
		with (par[i])
		{
			sprite_index = spr_KSW_Particle_SmallStarWhite;
			image_alpha = 1 - (i * .25);
			destroyTimer = 420;
			hsp = -2;
			vsp = 2;
			palSprite = spr_KSW_Particle_FallingStar_Pal_Rainbow;
			palIndex = targetPalIndex;
		}
	}
	
	return par;
}