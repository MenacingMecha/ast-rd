// Get user input
key_vol = 0
key_vol -= keyboard_check_pressed(ord("1"));
key_vol += keyboard_check_pressed(ord("2"));

// Adjust volume if necersarry
if(key_vol > 0) && (global.volume_master < 1)
{
    global.volume_master += 0.1;
    audio_master_gain(global.volume_master);
}
else if(key_vol < 0) && (global.volume_master > 0)
{
    global.volume_master -= 0.1;
    audio_master_gain(global.volume_master);
}
