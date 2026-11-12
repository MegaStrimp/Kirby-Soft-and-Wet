///@description KSW - Event - Heat Wave - Setup

function scr_KSW_Event_HeatWave_Setup()
{
	instance_create_layer(0,0,"Collision",obj_KSW_Event_HeatWave_Background);
	
	with (obj_KSW_GameController)
	{
		catchInput_Mult = .5;
		coinMult = .5;
		
		failBarBack = spr_KSW_Event_HeatWave_FailBarBack;
		failBarTexture = spr_KSW_Event_HeatWave_FailBarTexture;
		
		if (global.shaders)
		{
			var heatHaze = fx_create("_filter_heathaze");
			fx_set_parameter(heatHaze,"g_Distort1Scale",[1,1.3]);
			fx_set_parameter(heatHaze,"g_Distort2Scale",[3,3.3]);
			fx_set_parameter(heatHaze,"g_Distort1Amount",1);
			fx_set_parameter(heatHaze,"g_Distort2Amount",1);
			fx_set_parameter(heatHaze,"g_ChromaSpreadAmount",0);
			layer_set_fx("Environments",heatHaze);
		}
	}
}