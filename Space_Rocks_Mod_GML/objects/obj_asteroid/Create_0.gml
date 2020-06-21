/// @description Defines Asteroid Type & Positioning
sprite_index = choose(spr_asteroid_small,spr_asteroid_medium,spr_asteroid_large);
direction = irandom_range(0, 359); //Direction in which it moves
image_angle = irandom_range(0, 359); //Angle in which the object is created
speed = 1