///scr_get_input
// Set gamepad deadzone
if (gamepad_is_connected(0)) {
    gamepad_set_axis_deadzone(0, 0.4);
}
 
// Get input
right_key = keyboard_check(vk_right) || keyboard_check(ord('D')) || (gamepad_axis_value(0, gp_axislh) > 0);
left_key = keyboard_check(vk_left) || keyboard_check(ord('A')) || (gamepad_axis_value(0, gp_axislh) < 0);
up_key = keyboard_check(vk_up) || keyboard_check(ord('W')) || (gamepad_axis_value(0, gp_axislv) < 0);
down_key = keyboard_check(vk_down) || keyboard_check(ord('S')) || (gamepad_axis_value(0, gp_axislv) > 0);
dash_key = keyboard_check_pressed(vk_shift) || (gamepad_button_check_pressed(0,gp_face1));
attack_key = keyboard_check(ord('F')) || (gamepad_button_check(0,gp_face3));

// Get the axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);
