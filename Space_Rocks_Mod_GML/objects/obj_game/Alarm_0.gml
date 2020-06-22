/// @description Generate New Asteroids

if(room != rm_game)
{
	exit;
}

// Old code used to spawn asteroids during the game, used before the spawning script was made.
/*
if(choose(0, 1) == 0)
{
	//go down the side
	var _xx = choose(0, room_width);
	var _yy = irandom_range(0, room_height);
} else
{
	//go top or bottom
	var _xx = irandom_range(0, room_width);
	var _yy = choose(0, room_height);
}

instance_create_layer(_xx, _yy, "Instances", obj_asteroid);
*/

spawn_off_camera(obj_asteroid, 1);
alarm[0] = (1*room_speed);