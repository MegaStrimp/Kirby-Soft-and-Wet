///@description Stage Entity Tracker - Destroy

function scr_StageEntityTracker_Destroy()
{
	if (global.hasStageEntityTracker)
	{
		if (ds_exists(global.stageEntityTracker,ds_type_list)) ds_list_destroy(global.stageEntityTracker);
	}
}