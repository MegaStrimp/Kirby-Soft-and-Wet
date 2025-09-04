///@description KSW - Particle Set - Star

function scr_KSW_ParticleSet_Star(parTargetX,parTargetY,parTargetAngle,parTargetAngleRand = 45)
{
	var par = [];
	var targetSpd = 5;
	var targerDecel = .3;
	
	par[0] = instance_create_depth(parTargetX,parTargetY,depth + 1,obj_Particle);
	with (par[0])
	{
		var targetAngle = (parTargetAngle + irandom_range(-parTargetAngleRand,parTargetAngleRand)) % 360;
		
		sprite_index = spr_KSW_Particle_SmallStar;
		hsp = lengthdir_x(targetSpd,targetAngle);
		vsp = lengthdir_y(targetSpd,targetAngle);
		decelX = targerDecel;
		decelY = targerDecel;
		destroyAfterAnimation = true;
	}
	
	return par;
}