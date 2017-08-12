if (instance_exists(obj_player))
{
	move_towards_point(obj_player.x,obj_player.y,spd);
}

image_angle = direction;

if (hp <= 0)
{
	instance_destroy();
	audio_play_sound(snd_paw,0,false);
	audio_sound_pitch(snd_paw,random_range(0.8,1.2));
	with (obj_score) thescore = thescore + 5;
}
