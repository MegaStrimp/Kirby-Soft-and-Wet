///@description KSW - Particle Set - Water Star

function scr_KSW_ParticleSet_WaterStar(parTargetX,parTargetY)
{
	var par = [];
	var targetParCount = 4;
	var targetSpd = 3;
	
	for (var i = 0; i < targetParCount; i++)
	{
		par[i] = instance_create_depth(parTargetX,parTargetY,depth - 1,obj_Particle);
		with (par[i])
		{
			var targetAngle = (i * (360 / targetParCount)) % 360;
			
			sprite_index = spr_KSW_Particle_SmallStar;
			hsp = lengthdir_x(targetSpd,targetAngle);
			vsp = lengthdir_y(targetSpd,targetAngle);
			grav = .2;
			gravLimit = 4;
			destroyTimer = 120;
		}
	}
	
	return par;
}