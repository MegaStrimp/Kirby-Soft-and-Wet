///@description KSW - Particle Set - Star Splash

function scr_KSW_ParticleSet_StarSplash(parTargetX,parTargetY)
{
	var par = [];
	var targetPalCount = 4;
	var targetOffset = choose(0,45);
	var targetSpd = 2;
	
	for (var i = 0; i < targetPalCount; i++)
	{
		par[i] = instance_create_depth(parTargetX,parTargetY,depth - 1,obj_Particle);
		with (par[i])
		{
			var targetAngle = (i * (360 / targetPalCount) + targetOffset) % 360;
			
			sprite_index = spr_KSW_Particle_SmallStar;
			hsp = lengthdir_x(targetSpd,targetAngle);
			vsp = lengthdir_y(targetSpd,targetAngle);
			destroyAfterAnimation = true;
		}
	}
	
	return par;
}