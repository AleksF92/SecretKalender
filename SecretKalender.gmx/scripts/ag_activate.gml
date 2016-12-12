///ag_activate(groupId)
var groupId = argument[0];

if (groupId == noone) {
    //Stop anything playing
    audio_group_stop_all(ag_week1);
    audio_group_stop_all(ag_week2);
    audio_group_stop_all(ag_week3);
    audio_group_stop_all(ag_week4);
    
    //Unload all groups
    audio_group_unload(ag_week1);
    audio_group_unload(ag_week2);
    audio_group_unload(ag_week3);
    audio_group_unload(ag_week4);
}
else {
    audio_group_load(groupId);
}
