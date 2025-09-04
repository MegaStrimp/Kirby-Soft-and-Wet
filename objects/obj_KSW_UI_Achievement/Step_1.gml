///@description Begin Step

#region Variables
localPause = ((instance_exists(obj_KSW_UI_CatchPopup)) or (instance_exists(obj_KSW_UI_NotifBox)));
speedMultFinal = global.speedMultGlobal * global.deltaTime;
#endregion