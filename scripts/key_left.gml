#define key_left
return -(keyboard_check(vk_left) || keyboard_check(ord("A")) || (gamepad_button_check(0,gp_padl)) || (gamepad_axis_value(0,gp_axislh) < 0));

#define key_right
return keyboard_check(vk_right) || keyboard_check(ord("D")) || (gamepad_button_check(0,gp_padr)) || (gamepad_axis_value(0,gp_axislh) > 0);

#define key_up
return keyboard_check(vk_up) || keyboard_check(ord("W")) || (gamepad_button_check(0,gp_padu)) || (gamepad_axis_value(0,gp_axislv) < 0);

#define key_down

#define key_fire
return keyboard_check(ord("Z")) || (gamepad_button_check_pressed(0,gp_face1));

#define key_pause
return keyboard_check(vk_escape) || keyboard_check(ord("P")) || (gamepad_button_check_pressed(0,gp_start));
