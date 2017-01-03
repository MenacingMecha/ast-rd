// Choose menu based on argument passed when script is called
switch (argument0)
{
    // Main menu and title screen both use the same functionality for case 0, so they'll both use the "main" case
    case "main":
    {
        switch (menu_position)
        {
            // Start
            case 0:
            {
                audio_play_sound(snd_menu_select,0,0);
                room_goto_next();
                break;
            }
            
            // Options
            case 1:
            {
                audio_play_sound(snd_menu_select,0,0);
                room_goto(rm_options);
                break;
            }
            
            // Exit
            case 2:
            {
                audio_play_sound(snd_menu_select,0,0);
                game_end();
                break;
            }
            
            default: break;
        }
        
        break;
    }
    
    // Options menu
    case "options":
    // TODO: Grey out options that aren't selected or unavailible
    {
        switch (menu_position)
        {
            // Toggle scaling value
            // TODO: Give the user the option to loop through scaling values up to 4x
            case 0:
            {
                if(window_get_height() == global.window_scalev[2])
                {
                    // Set window size to 1x
                    window_set_size(global.window_scaleh[1], global.window_scalev[1]);
                }
                else
                {
                    // Set window size to 2x
                    window_set_size(global.window_scaleh[2], global.window_scalev[2]);
                }
                
                audio_play_sound(snd_menu_select,0,0);
                break;
            }
            
            // Toggle between smooth/sharp scaling
            case 1:
            {
                global.smooth_scaling = !global.smooth_scaling;
                
                if(global.smooth_scaling)
                {
                    texture_set_interpolation(true);
                }
                else
                {
                    texture_set_interpolation(false);
                }
                
                audio_play_sound(snd_menu_select,0,0);
                break;
            }
            
            // Fullscreen
            case 2:
            {
                audio_play_sound(snd_menu_select,0,0);
                
                // if set to fullscreen (true), window_set_size() won't have any effect
                scr_fullscreen_toggle();
                
                break;
            }
            
            // Back
            case 3:
            {
                audio_play_sound(snd_menu_select,0,0);
                room_goto(rm_menu);
                break;
            }
                
                default: break;
        }
        
        break;
    }
}
