///@description Begin Step

#region Variables
speedMultFinal = global.speedMultGlobal * global.deltaTime;
localPause = global.pauseFinal;
canOffset = ((instance_exists(obj_KSW_UI_NotifBox)) or (instance_exists(obj_KSW_UI_CatchPopup)));
#endregion