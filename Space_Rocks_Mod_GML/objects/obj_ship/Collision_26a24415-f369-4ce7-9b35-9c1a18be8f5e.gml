/// @description Define Collision w/ Asteroid

lives -= 1;
score += 10;

with(obj_game){
	alarm[1] = room_speed;
}

//Ship Destruction
instance_destroy();

repeat(10){
	instance_create_layer(x, y, "Instances", obj_debris);
	audio_play_sound(snd_die, 1, false);
}


//Asteroid Destruction
with(other){
	instance_destroy();
	
	if(sprite_index == spr_asteroid_large){
		repeat(2){
			var _new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			_new_asteroid.sprite_index = spr_asteroid_medium;
		}
	} else if(sprite_index == spr_asteroid_medium){
		repeat(2){
			var _new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			_new_asteroid.sprite_index = spr_asteroid_small;
		}
	}
	
	repeat(20){
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}