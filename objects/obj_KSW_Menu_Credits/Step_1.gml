///@description Begin Step

#region Variables
global.speedMultGlobal = (1 + (3 * ((mouse_check_button(mb_left)) or (input_check("A",playerNum)))));

speedMultFinal = (global.speedMultGlobal * global.deltaTime);
#endregion