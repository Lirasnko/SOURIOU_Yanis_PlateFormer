if (room != R_Game) {
	if (!audio_is_playing(SO_Musique_Pause__Evening_Telecast)) {
		audio_stop_all();
		audio_play_sound(SO_Musique_Pause__Evening_Telecast, 1, true);
	}
}
else {
	if (audio_is_playing(SO_Musique_Pause__Evening_Telecast)) {
		audio_stop_all();
	}
	if (!audio_is_playing(SO_Musique1_360_No_Scope__The_Soundlings) && !audio_is_playing(SO_Musique2_Rate_The_Rizz__The_Soundlings) && !audio_is_playing(SO_Musique3_Day_Sparkles__Geographer)) {
		if (musicTrack == 2) {
			musicTrack = 0;
		}
		else {
			musicTrack++;
		}
		switch (musicTrack) {
			case 0 :
				audio_play_sound(SO_Musique1_360_No_Scope__The_Soundlings, 1, false);
				break;
			case 1 :
				audio_play_sound(SO_Musique2_Rate_The_Rizz__The_Soundlings, 1, false);
				break;
			case 2 :
				audio_play_sound(SO_Musique3_Day_Sparkles__Geographer, 1, false);
				break;
		}
	}
}