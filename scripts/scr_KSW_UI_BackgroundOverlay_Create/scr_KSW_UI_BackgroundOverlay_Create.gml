///@description KSW - UI - Background Overlay - Create

function scr_KSW_UI_BackgroundOverlay_Create(targetDestroyTimer,targetDepth = layer_get_depth("Collision"),targetCanBePaused = true,targetColorList = [c_black],targetColorTimer = -1,targetCanFadeOut = false)
{
	with (obj_KSW_UI_BackgroundOverlay) instance_destroy();
	
	var overlay = instance_create_depth(0,0,targetDepth,obj_KSW_UI_BackgroundOverlay);
	with (overlay)
	{
		canBePaused = targetCanBePaused;
		
		colorList = targetColorList;
		
		colorTimerMax = targetColorTimer;
		colorTimer = colorTimerMax;
		
		destroyTimer = targetDestroyTimer;
		
		canFadeOut = targetCanFadeOut;
	}
	
	return overlay;
}