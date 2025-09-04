///@description KSW - Default Keybindings

function scr_KSW_DefaultKeybindings()
{
	input_binding_set("up",input_binding_key(vk_up),0);
	input_binding_set("down",input_binding_key(vk_down),0);
	input_binding_set("left",input_binding_key(vk_left),0);
	input_binding_set("right",input_binding_key(vk_right),0);
	
	input_binding_set("A",input_binding_key("Z"),0);
	input_binding_set("B",input_binding_key("X"),0);
	input_binding_set("X",input_binding_key("A"),0);
	input_binding_set("Y",input_binding_key("S"),0);
	
	input_binding_set("L",input_binding_key("Q"),0);
	input_binding_set("R",input_binding_key("W"),0);
	input_binding_set("LT",input_binding_key(vk_control),0);
	input_binding_set("RT",input_binding_key(vk_shift),0);
	
	input_binding_set("start",input_binding_key(vk_enter),0);
	input_binding_set("select",input_binding_key(vk_backspace),0);
}