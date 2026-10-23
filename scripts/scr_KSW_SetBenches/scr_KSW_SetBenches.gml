///@description KSW - Set Benches

function scr_KSW_SetBenches()
{
	#region Setup
	global.KSW_BenchCount = 0;
	
	global.KSW_BenchList = [];
	global.KSW_BenchIDs = ds_map_create();
	#endregion
	
	#region Add Benches Here
	scr_KSW_AddBench("default","Default",spr_KSW_Bench_Default);
	scr_KSW_AddBench("gold","Gold",spr_KSW_Bench_Gold);
	scr_KSW_AddBench("legend","Legend",spr_KSW_Bench_Legend);
	#endregion
}