///scr_sound(ind)
var snd = argument[0];
if (AudioController.enabled) {
    audio_play_sound(snd, 0, false);
}
