///@description Clean Up

#region Destroy Lists
ds_map_destroy(global.UI_IconBindings);
ds_list_destroy(global.notifQueue);
#endregion

#region Destroy Debug View
if (global.debug) dbg_view_delete(debugView);
#endregion

#region Destroy Stage Entity Tracker
scr_StageEntityTracker_Destroy();
#endregion

#region Destroy Virtual Buttons
if (global.isMobile) input_virtual_destroy_all();
#endregion