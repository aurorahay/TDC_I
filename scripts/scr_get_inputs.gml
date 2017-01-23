//Get player input
//movement for keyboard and gamepad
key_right = keyboard_check(vk_right) || keyboard_check(ord("D")) || (gamepad_axis_value(0, gp_axislh) > 0);
key_left = -(keyboard_check(vk_left) || keyboard_check(ord("A")) || (gamepad_axis_value(0, gp_axislh) < 0));
key_down = -(keyboard_check(vk_down) || keyboard_check(ord("S")) || (gamepad_axis_value(0, gp_axislv) > 0));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W")) || (gamepad_axis_value(0, gp_axislv) < 0);

//dance prompt
dance_prompt = keyboard_check(vk_shift);
dance_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
dance_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
dance_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
dance_up = keyboard_check(vk_up) || keyboard_check(ord("W"));

//talking prompt
key_talk = keyboard_check_pressed(ord("E")) || keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_face1);

if (dance_prompt) {
    state = states.dance;
}

//dance prompt for gamepad (gp)
gp_dance_right = gamepad_button_check(0, gp_padr);
gp_dance_left = gamepad_button_check(0, gp_padl);
gp_dance_up = gamepad_button_check(0, gp_padu);
gp_dance_down = gamepad_button_check(0, gp_padd);

//release dance moves
gp_dance_right_release = gamepad_button_check_released(0, gp_padr);
gp_dance_left_release = gamepad_button_check_released(0, gp_padl);
gp_dance_up_release = gamepad_button_check_released(0, gp_padu);
gp_dance_down_release = gamepad_button_check_released(0, gp_padd);

dance_right_release = keyboard_check_released(vk_right) || keyboard_check_released(ord("D"));
dance_left_release = keyboard_check_released(vk_left) || keyboard_check_released(ord("A"));
dance_down_release = keyboard_check_released(vk_down) || keyboard_check_released(ord("S"));
dance_up_release = keyboard_check_released(vk_up) || keyboard_check_released(ord("W"));
