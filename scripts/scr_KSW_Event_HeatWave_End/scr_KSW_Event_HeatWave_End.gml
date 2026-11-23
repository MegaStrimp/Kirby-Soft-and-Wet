///@description KSW - Event - Heat Wave - End

function scr_KSW_Event_HeatWave_End()
{
	with (obj_KSW_Event_HeatWave_Background)
	{
		alphaTarget = 0;
	}
	
	with (obj_KSW_GameController)
	{
		catchInput_Mult = 1;
		coinMult = 1;
		
		failBarBack = failBarBackDefault;
		failBarTexture = failBarTextureDefault;
		
		if (global.shaders)
		{
			layer_clear_fx("Environments");
		}
	}
}