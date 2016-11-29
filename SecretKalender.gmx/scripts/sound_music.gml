///sound_music(ind)
var mus = argument[0];
if (AudioController.music) {
    audio_stop_sound(AudioController.playing);
    audio_play_sound(mus, 0, true);
    AudioController.playing = mus;
}
