/// @description Asteroid starting traits.

sprite_index = choose(
	choose(spr_asteroid_small_01, spr_asteroid_small_02),
	spr_asteroid_medium,
	spr_asteroid_huge
);

direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);
rotateSpeed = random_range(-0.8, 0.8);

speed = 1;

