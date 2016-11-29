///scr_music(ind)
var mus = argument[0];

if (AudioController.enabled) {
    if (mus != AudioController.track || !AudioController.isPlaying) {
        //Stop old music
        audio_stop_sound(AudioController.track);
        
        //Start new music
        audio_play_sound(mus, 0, true);
        AudioController.isPlaying = true;
    }
}
else if (mus == noone) {
    //Stop music
    audio_stop_sound(AudioController.track);
    AudioController.isPlaying = false;
}

//Store new song
if (mus != noone) {
    AudioController.track = mus;
}
