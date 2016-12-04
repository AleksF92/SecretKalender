///scr_sound(ind)
var snd = argument[0];
if (AudioController.enabled && !Game.DISABLE_SOUND) {
    audio_play_sound(snd, 0, false);
}
