/// @description Generate Asteroids

if(room == rm_game)
{
	spawn_off_camera(obj_asteroid, 40);
	
	/*
	if(audio_is_playing(msc_song))
	{
		audio_stop_sound(msc_song);
	}
	audio_play_sound(msc_song, 2, true);
	*/
	
	// Old code used to spawn asteroids in the beginning of the game, used before the spawning script was made.
	/*
	repeat(6)
	{
		var _xx = choose(
			irandom_range(0, (room_width*0.3)),
			irandom_range((room_width*0.7), room_width));
		var _yy = choose(
			irandom_range(0, (room_height*0.3)),
			irandom_range((room_height*0.7), room_height));
		instance_create_layer(_xx, _yy, "Instances", obj_asteroid)
	}
	*/
	
	alarm[0] = 60;
}