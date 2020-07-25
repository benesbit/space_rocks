/// @description Asteroid starting traits.

sprite_index = choose(
	choose(spr_asteroid_small_01, spr_asteroid_small_02),
	spr_asteroid_medium_01,
	spr_asteroid_huge
);

direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);
rotateSpeed = random_range(-0.8, 0.8);

switch(sprite_index){
	case spr_asteroid_small_01:
	case spr_asteroid_small_02:
		speed = random_range(1.40, 1.85);
		break;
	case spr_asteroid_medium_01:
		speed = random_range(0.90, 1.15);
		break;
	case spr_asteroid_huge:
		speed = random_range(0.50, 0.75);
		break;
}