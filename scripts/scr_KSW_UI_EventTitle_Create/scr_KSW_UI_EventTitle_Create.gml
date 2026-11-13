///@description KSW - UI - Event Title - Create

function scr_KSW_UI_EventTitle_Create(targetTitle,targetDescription,targetDepth = depth)
{
	with (obj_KSW_UI_EventTitle) instance_destroy();
	
	var eventTitle = instance_create_depth(0,0,targetDepth,obj_KSW_UI_EventTitle);
	with (eventTitle)
	{
		title = targetTitle;
		description = targetDescription;
	}
	
	return eventTitle;
}