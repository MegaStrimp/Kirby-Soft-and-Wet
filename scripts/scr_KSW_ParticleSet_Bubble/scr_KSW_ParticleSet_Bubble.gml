///@description KSW - Particle Set - Bubble

function scr_KSW_ParticleSet_Bubble(parTargetX,parTargetY,parTargetHsp,parTargetVsp)
{
	var par = [];
	
	par[0] = instance_create_depth(parTargetX + irandom_range(-2,2),parTargetY + irandom_range(-2,2),depth + 1,obj_Particle);
	with (par[0])
	{
		sprite_index = choose(spr_KSW_Particle_Bubble1_Day,spr_KSW_Particle_Bubble2_Day);
		if (global.shaders)
		{
			switch (global.KSW_CurrentPhase)
			{
				case KSW_Phases.afternoon:
				sprite_index = choose(spr_KSW_Particle_Bubble1_Afternoon,spr_KSW_Particle_Bubble2_Afternoon);
				break;
				
				case KSW_Phases.night:
				sprite_index = choose(spr_KSW_Particle_Bubble1_Night,spr_KSW_Particle_Bubble2_Night);
				break;
			}
		}
		destroyTimer = 420;
		hsp = parTargetHsp * speedMultFinal;
		vsp = parTargetVsp * speedMultFinal;
		canBePaused = false;
	}
	
	return par;
}