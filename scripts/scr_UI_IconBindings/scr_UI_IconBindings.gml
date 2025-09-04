///@description UI - Icon Bindings

function scr_UI_IconBindings()
{
	global.UI_IconBindings = ds_map_create();
	
	#region Gamepad
	ds_map_add(global.UI_IconBindings,"gamepad unknown",spr_UI_Button_Gamepad_Dpad1_Up);
	ds_map_add(global.UI_IconBindings,"gamepad dpad up",spr_UI_Button_Gamepad_Dpad1_Up);
	ds_map_add(global.UI_IconBindings,"gamepad dpad down",spr_UI_Button_Gamepad_Dpad1_Down);
	ds_map_add(global.UI_IconBindings,"gamepad dpad left",spr_UI_Button_Gamepad_Dpad1_Left);
	ds_map_add(global.UI_IconBindings,"gamepad dpad right",spr_UI_Button_Gamepad_Dpad1_Right);
	ds_map_add(global.UI_IconBindings,"gamepad unknown 1",spr_UI_Button_Gamepad_Dpad1_Up);
	ds_map_add(global.UI_IconBindings,"gamepad dpad up 1",spr_UI_Button_Gamepad_Dpad1_Up);
	ds_map_add(global.UI_IconBindings,"gamepad dpad down 1",spr_UI_Button_Gamepad_Dpad1_Down);
	ds_map_add(global.UI_IconBindings,"gamepad dpad left 1",spr_UI_Button_Gamepad_Dpad1_Left);
	ds_map_add(global.UI_IconBindings,"gamepad dpad right 1",spr_UI_Button_Gamepad_Dpad1_Right);
	ds_map_add(global.UI_IconBindings,"gamepad unknown 2",spr_UI_Button_Gamepad_Dpad2_Up);
	ds_map_add(global.UI_IconBindings,"gamepad dpad up 2",spr_UI_Button_Gamepad_Dpad2_Up);
	ds_map_add(global.UI_IconBindings,"gamepad dpad down 2",spr_UI_Button_Gamepad_Dpad2_Down);
	ds_map_add(global.UI_IconBindings,"gamepad dpad left 2",spr_UI_Button_Gamepad_Dpad2_Left);
	ds_map_add(global.UI_IconBindings,"gamepad dpad right 2",spr_UI_Button_Gamepad_Dpad2_Right);
	ds_map_add(global.UI_IconBindings,"gamepad unknown 3",spr_UI_Button_Gamepad_Dpad3_Up);
	ds_map_add(global.UI_IconBindings,"gamepad dpad up 3",spr_UI_Button_Gamepad_Dpad3_Up);
	ds_map_add(global.UI_IconBindings,"gamepad dpad down 3",spr_UI_Button_Gamepad_Dpad3_Down);
	ds_map_add(global.UI_IconBindings,"gamepad dpad left 3",spr_UI_Button_Gamepad_Dpad3_Left);
	ds_map_add(global.UI_IconBindings,"gamepad dpad right 3",spr_UI_Button_Gamepad_Dpad3_Right);
	ds_map_add(global.UI_IconBindings,"gamepad thumbstick l up",spr_UI_Button_Gamepad_Joystick_L_Up);
	ds_map_add(global.UI_IconBindings,"gamepad thumbstick l down",spr_UI_Button_Gamepad_Joystick_L_Down);
	ds_map_add(global.UI_IconBindings,"gamepad thumbstick l left",spr_UI_Button_Gamepad_Joystick_L_Left);
	ds_map_add(global.UI_IconBindings,"gamepad thumbstick l right",spr_UI_Button_Gamepad_Joystick_L_Right);
	ds_map_add(global.UI_IconBindings,"gamepad thumbstick l click",spr_UI_Button_Gamepad_Joystick_L_Press);
	ds_map_add(global.UI_IconBindings,"gamepad thumbstick r up",spr_UI_Button_Gamepad_Joystick_R_Up);
	ds_map_add(global.UI_IconBindings,"gamepad thumbstick r down",spr_UI_Button_Gamepad_Joystick_R_Down);
	ds_map_add(global.UI_IconBindings,"gamepad thumbstick r left",spr_UI_Button_Gamepad_Joystick_R_Left);
	ds_map_add(global.UI_IconBindings,"gamepad thumbstick r right",spr_UI_Button_Gamepad_Joystick_R_Right);
	ds_map_add(global.UI_IconBindings,"gamepad thumbstick r click",spr_UI_Button_Gamepad_Joystick_R_Press);
	ds_map_add(global.UI_IconBindings,"gamepad face south",spr_UI_Button_Gamepad_A);
	ds_map_add(global.UI_IconBindings,"gamepad face east",spr_UI_Button_Gamepad_B);
	ds_map_add(global.UI_IconBindings,"gamepad face west",spr_UI_Button_Gamepad_X);
	ds_map_add(global.UI_IconBindings,"gamepad face north",spr_UI_Button_Gamepad_Y);
	ds_map_add(global.UI_IconBindings,"gamepad face south a",spr_UI_Button_Gamepad_A);
	ds_map_add(global.UI_IconBindings,"gamepad face east b",spr_UI_Button_Gamepad_B);
	ds_map_add(global.UI_IconBindings,"gamepad face west x",spr_UI_Button_Gamepad_X);
	ds_map_add(global.UI_IconBindings,"gamepad face north y",spr_UI_Button_Gamepad_Y);
	ds_map_add(global.UI_IconBindings,"gamepad face south a colored",spr_UI_Button_Gamepad_A_Colored);
	ds_map_add(global.UI_IconBindings,"gamepad face east b colored",spr_UI_Button_Gamepad_B_Colored);
	ds_map_add(global.UI_IconBindings,"gamepad face west x colored",spr_UI_Button_Gamepad_X_Colored);
	ds_map_add(global.UI_IconBindings,"gamepad face north y colored",spr_UI_Button_Gamepad_Y_Colored);
	ds_map_add(global.UI_IconBindings,"gamepad face south cross",spr_UI_Button_Gamepad_Cross);
	ds_map_add(global.UI_IconBindings,"gamepad face east circle",spr_UI_Button_Gamepad_Circle);
	ds_map_add(global.UI_IconBindings,"gamepad face west square",spr_UI_Button_Gamepad_Square);
	ds_map_add(global.UI_IconBindings,"gamepad face north triangle",spr_UI_Button_Gamepad_Triangle);
	ds_map_add(global.UI_IconBindings,"gamepad face south cross colored",spr_UI_Button_Gamepad_Cross_Colored);
	ds_map_add(global.UI_IconBindings,"gamepad face east circle colored",spr_UI_Button_Gamepad_Circle_Colored);
	ds_map_add(global.UI_IconBindings,"gamepad face west square colored",spr_UI_Button_Gamepad_Square_Colored);
	ds_map_add(global.UI_IconBindings,"gamepad face north triangle colored",spr_UI_Button_Gamepad_Triangle_Colored);
	ds_map_add(global.UI_IconBindings,"gamepad shoulder l",spr_UI_Button_Gamepad_L);
	ds_map_add(global.UI_IconBindings,"gamepad shoulder r",spr_UI_Button_Gamepad_R);
	ds_map_add(global.UI_IconBindings,"gamepad trigger l",spr_UI_Button_Gamepad_LT);
	ds_map_add(global.UI_IconBindings,"gamepad trigger r",spr_UI_Button_Gamepad_RT);
	ds_map_add(global.UI_IconBindings,"gamepad start",spr_UI_Button_Gamepad_Start);
	ds_map_add(global.UI_IconBindings,"gamepad select",spr_UI_Button_Gamepad_Select);
	ds_map_add(global.UI_IconBindings,"gamepad start plus",spr_UI_Button_Gamepad_Plus);
	ds_map_add(global.UI_IconBindings,"gamepad select minus",spr_UI_Button_Gamepad_Minus);
	ds_map_add(global.UI_IconBindings,"gamepad guide",spr_UI_Button_Gamepad_Share);
	#endregion
	
	#region Keyboard
	ds_map_add(global.UI_IconBindings,"A",spr_UI_Button_Keyboard_A);
	ds_map_add(global.UI_IconBindings,"B",spr_UI_Button_Keyboard_B);
	ds_map_add(global.UI_IconBindings,"C",spr_UI_Button_Keyboard_C);
	ds_map_add(global.UI_IconBindings,"D",spr_UI_Button_Keyboard_D);
	ds_map_add(global.UI_IconBindings,"E",spr_UI_Button_Keyboard_E);
	ds_map_add(global.UI_IconBindings,"F",spr_UI_Button_Keyboard_F);
	ds_map_add(global.UI_IconBindings,"G",spr_UI_Button_Keyboard_G);
	ds_map_add(global.UI_IconBindings,"H",spr_UI_Button_Keyboard_H);
	ds_map_add(global.UI_IconBindings,"I",spr_UI_Button_Keyboard_I);
	ds_map_add(global.UI_IconBindings,"J",spr_UI_Button_Keyboard_J);
	ds_map_add(global.UI_IconBindings,"K",spr_UI_Button_Keyboard_K);
	ds_map_add(global.UI_IconBindings,"L",spr_UI_Button_Keyboard_L);
	ds_map_add(global.UI_IconBindings,"M",spr_UI_Button_Keyboard_M);
	ds_map_add(global.UI_IconBindings,"N",spr_UI_Button_Keyboard_N);
	ds_map_add(global.UI_IconBindings,"O",spr_UI_Button_Keyboard_O);
	ds_map_add(global.UI_IconBindings,"P",spr_UI_Button_Keyboard_P);
	ds_map_add(global.UI_IconBindings,"Q",spr_UI_Button_Keyboard_Q);
	ds_map_add(global.UI_IconBindings,"R",spr_UI_Button_Keyboard_R);
	ds_map_add(global.UI_IconBindings,"S",spr_UI_Button_Keyboard_S);
	ds_map_add(global.UI_IconBindings,"T",spr_UI_Button_Keyboard_T);
	ds_map_add(global.UI_IconBindings,"U",spr_UI_Button_Keyboard_U);
	ds_map_add(global.UI_IconBindings,"V",spr_UI_Button_Keyboard_V);
	ds_map_add(global.UI_IconBindings,"W",spr_UI_Button_Keyboard_W);
	ds_map_add(global.UI_IconBindings,"X",spr_UI_Button_Keyboard_X);
	ds_map_add(global.UI_IconBindings,"Y",spr_UI_Button_Keyboard_Y);
	ds_map_add(global.UI_IconBindings,"Z",spr_UI_Button_Keyboard_Z);
	ds_map_add(global.UI_IconBindings,"0",spr_UI_Button_Keyboard_0);
	ds_map_add(global.UI_IconBindings,"1",spr_UI_Button_Keyboard_1);
	ds_map_add(global.UI_IconBindings,"2",spr_UI_Button_Keyboard_2);
	ds_map_add(global.UI_IconBindings,"3",spr_UI_Button_Keyboard_3);
	ds_map_add(global.UI_IconBindings,"4",spr_UI_Button_Keyboard_4);
	ds_map_add(global.UI_IconBindings,"5",spr_UI_Button_Keyboard_5);
	ds_map_add(global.UI_IconBindings,"6",spr_UI_Button_Keyboard_6);
	ds_map_add(global.UI_IconBindings,"7",spr_UI_Button_Keyboard_7);
	ds_map_add(global.UI_IconBindings,"8",spr_UI_Button_Keyboard_8);
	ds_map_add(global.UI_IconBindings,"9",spr_UI_Button_Keyboard_9);
	ds_map_add(global.UI_IconBindings,"space",spr_UI_Button_Keyboard_Space);
	ds_map_add(global.UI_IconBindings,"backspace",spr_UI_Button_Keyboard_Backspace);
	ds_map_add(global.UI_IconBindings,"enter",spr_UI_Button_Keyboard_Enter);
	ds_map_add(global.UI_IconBindings,"shift",spr_UI_Button_Keyboard_Shift);
	ds_map_add(global.UI_IconBindings,"ctrl",spr_UI_Button_Keyboard_Control);
	ds_map_add(global.UI_IconBindings,"arrow up",spr_UI_Button_Keyboard_Up);
	ds_map_add(global.UI_IconBindings,"arrow down",spr_UI_Button_Keyboard_Down);
	ds_map_add(global.UI_IconBindings,"arrow left",spr_UI_Button_Keyboard_Left);
	ds_map_add(global.UI_IconBindings,"arrow right",spr_UI_Button_Keyboard_Right);
	#endregion
	
	#region Mouse
	ds_map_add(global.UI_IconBindings,"mouse button unknown",spr_UI_Button_Mouse);
	ds_map_add(global.UI_IconBindings,"mouse button left",spr_UI_Button_Mouse_Left);
	ds_map_add(global.UI_IconBindings,"mouse button middle",spr_UI_Button_Mouse_Middle);
	ds_map_add(global.UI_IconBindings,"mouse button right",spr_UI_Button_Mouse_Right);
	ds_map_add(global.UI_IconBindings,"mouse button forward",spr_UI_Button_Mouse_Macro1);
	ds_map_add(global.UI_IconBindings,"mouse button back",spr_UI_Button_Mouse_Macro2);
	#endregion
}