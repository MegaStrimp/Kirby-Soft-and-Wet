// Feather disable all

//This script contains the default profiles, and hence the default bindings and verbs, for your game
//
//  Please edit this macro to meet the needs of your game!
//
//The struct return by this script contains the names of each default profile.
//Default profiles then contain the names of verbs. Each verb should be given a binding that is
//appropriate for the profile. You can create bindings by calling one of the input_binding_*()
//functions, such as input_binding_key() for keyboard keys and input_binding_mouse() for
//mouse buttons

function __input_config_verbs()
{
	return {
        keyboard_and_mouse:
        {
            up:		input_binding_key(vk_up),
	        down:	input_binding_key(vk_down),
	        left:	input_binding_key(vk_left),
	        right:	input_binding_key(vk_right),
			
	        A:		input_binding_key("Z"),
	        B:		input_binding_key("X"),
	        X:		input_binding_key("A"),
	        Y:		input_binding_key("S"),
			
	        L:		input_binding_key("C"),
	        R:		input_binding_key(vk_space),
	        LT:		input_binding_key(vk_control),
	        RT:		input_binding_key(vk_shift),
			
	        start:	input_binding_key(vk_enter),
	        select: input_binding_key(vk_backspace),
        },
        
        gamepad:
        {
            up:		[input_binding_gamepad_axis(gp_axislv, true),  input_binding_gamepad_button(gp_padu)],
            down:	[input_binding_gamepad_axis(gp_axislv, false), input_binding_gamepad_button(gp_padd)],
            left:	[input_binding_gamepad_axis(gp_axislh, true),  input_binding_gamepad_button(gp_padl)],
            right:	[input_binding_gamepad_axis(gp_axislh, false), input_binding_gamepad_button(gp_padr)],
            
            A:		input_binding_gamepad_button(gp_face1),
            B:		input_binding_gamepad_button(gp_face2),
            X:		input_binding_gamepad_button(gp_face3),
            Y:		input_binding_gamepad_button(gp_face4),
			
	        L:		input_binding_gamepad_button(gp_shoulderl),
	        R:		input_binding_gamepad_button(gp_shoulderr),
	        LT:		input_binding_gamepad_button(gp_shoulderlb),
	        RT:		input_binding_gamepad_button(gp_shoulderrb),
			
	        start:	input_binding_gamepad_button(gp_start),
	        select: input_binding_gamepad_button(gp_select),
        },
        
        touch:
        {
            up:    input_binding_virtual_button(),
            down:  input_binding_virtual_button(),
            left:  input_binding_virtual_button(),
            right: input_binding_virtual_button(),
            
            accept:  input_binding_virtual_button(),
            cancel:  input_binding_virtual_button(),
            action:  input_binding_virtual_button(),
            special: input_binding_virtual_button(),
            
            pause: input_binding_virtual_button(),
        }
    };
}