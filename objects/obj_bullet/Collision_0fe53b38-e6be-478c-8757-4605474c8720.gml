/// @description Bullet collision with Asteroid

// score += 12;

audio_play_sound(snd_boom, 2, false);

instance_destroy();

destroy_asteroid(other);