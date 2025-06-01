function SC_CreateDoor(co) {
	var colDoor = collision_rectangle(co[0], co[1], co[0] + 32, co[1] + 32, O_Door, true, false);
	if (!(colDoor > 0)) {
		instance_create_layer(co[0], co[1], "Props", O_Door);
		if (!audio_is_playing(SO_Door)) {
			audio_play_sound(SO_Door, 1, false);
		}
	}
}