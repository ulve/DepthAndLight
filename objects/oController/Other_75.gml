/// @description Insert description here
// You can write your code in this editor
switch(async_load[? "event_type"])             // Parse the async_load map to see which event has been triggered
{
case "gamepad discovered":                     // A game pad has been discovered
    global.pad = async_load[? "pad_index"];       // Get the pad index value from the async_load map
		
    gamepad_set_axis_deadzone(global.pad, 0.5);       // Set the "deadzone" for the axis
    gamepad_set_button_threshold(global.pad, 0.1);    // Set the "threshold" for the triggers
   
    break;
}


