///@description Main

#region Playtime Achievement Timer
if (playtimeAchievementTimer != -1)
{
	playtimeAchievementTimer = max(playtimeAchievementTimer - speedMultFinal,0);
	if (playtimeAchievementTimer == 0)
	{
		var achievementID = global.KSW_AchievementIDs[? "playtime1"];
		if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
		
		var achievementID = global.KSW_AchievementIDs[? "playtime5"];
		if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
		
		var achievementID = global.KSW_AchievementIDs[? "playtime20"];
		if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
		
		playtimeAchievementTimer = playtimeAchievementTimerMax;
	}
}
#endregion

#region Mobile Debug
if ((keyboard_check(vk_control)) and (keyboard_check(vk_shift)) and (keyboard_check_pressed(ord("M"))))
{
	global.mobileDebug = !global.mobileDebug;
	global.isMobile = global.mobileDebug;
	scr_PlaySfx(snd_KSW_Score);
}
#endregion

#region Tap Feedback
if (global.isMobile)
{
if (device_mouse_check_button_pressed(0,mb_left))
{
	var _tx = device_mouse_x_to_gui(0);
	var _ty = device_mouse_y_to_gui(0);
	
	for (var _i = 0; _i < 3; _i++)
	{
		var _star = {
			x: _tx,
			y: _ty,
			dir: (-90 + (_i * 120)),
			phase: irandom(3),
			life: 0,
			maxLife: 40,
			size: 1
		};
		
		array_push(global.tapFeedbackStars,_star);
	}
	
	global.tapDragLastX = _tx;
	global.tapDragLastY = _ty;
}

if (device_mouse_check_button(0,mb_left))
{
	var _cx = device_mouse_x_to_gui(0);
	var _cy = device_mouse_y_to_gui(0);
	var _moved = point_distance(global.tapDragLastX,global.tapDragLastY,_cx,_cy);
	
	if (_moved >= 3)
	{
		var _spawns = 2 + (_moved >= 6);
		
		for (var _i = 0; _i < _spawns; _i++)
		{
			var _star = {
				x: _cx,
				y: _cy,
				dir: irandom(360),
				phase: irandom(3),
				life: 0,
				maxLife: 20,
				size: 0.6
			};
			
			array_push(global.tapFeedbackStars,_star);
		}
		
		global.tapDragLastX = _cx;
		global.tapDragLastY = _cy;
	}
}

for (var _j = array_length(global.tapFeedbackStars) - 1; _j >= 0; _j--)
{
	global.tapFeedbackStars[_j].life += 1;
	if (global.tapFeedbackStars[_j].life >= global.tapFeedbackStars[_j].maxLife)
	{
		array_delete(global.tapFeedbackStars,_j,1);
	}
}
}
#endregion