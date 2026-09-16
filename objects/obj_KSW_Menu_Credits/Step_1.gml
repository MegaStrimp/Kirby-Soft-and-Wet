///@description Begin Step

#region Variables
speedMultFinal = (global.speedMultGlobal * global.deltaTime) * (1 + (3 * ((mouse_check_button(mb_left)) or (input_check("A",playerNum)))));
#endregion