///sound_effect(ind)
var snd = argument[0];
if (AudioController.music) {
    audio_play_sound(snd, 0, false);
}
