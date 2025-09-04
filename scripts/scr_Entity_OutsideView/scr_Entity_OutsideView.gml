///@description Check If Object Is Outside The View

function scr_Entity_OutsideView(range)
{
	//Variables
	
	var outsideView = false;
	var x1 = camera_get_view_x(mainView) - range;
	var y1 = camera_get_view_y(mainView) - range;
	var x2 = camera_get_view_x(mainView) + camera_get_view_width(mainView) + range;
	var y2 = camera_get_view_y(mainView) + camera_get_view_height(mainView) + range;
	
	//Destroy
	
	if (!point_in_rectangle(x,y,x1,y1,x2,y2)) outsideView = true;
	
	return outsideView;
}