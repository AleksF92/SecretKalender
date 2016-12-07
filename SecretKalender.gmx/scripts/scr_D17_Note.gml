///scr_D17_Note(lane, xPos, dur);
var lane = argument[0];
var xPos = argument[1];
var dur = argument[2];

spawnX += xPos;
var type = noteType[| lane - 1];
var laneY = lanes[| lane - 1];
var note = instance_create(spawnX, laneY, type);
note.col = laneCol[| lane - 1];
note.dur = dur;
