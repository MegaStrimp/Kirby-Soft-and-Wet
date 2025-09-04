///@description Stage Entity Tracker - Init

function scr_StageEntityTracker_Init()
{
	if (global.hasStageEntityTracker)
	{
		if (ds_exists(global.stageEntityTracker,ds_type_list)) ds_list_destroy(global.stageEntityTracker);
		global.stageEntityTracker = ds_list_create();
	}
}