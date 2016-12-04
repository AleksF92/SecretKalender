///dialog_show(part, [delay])
var part = argument[0];
var delay = 1;
if (argument_count > 1) { delay = argument[1]; }

//Show dialog, -1 (alarm increases)
Dialog.active = true;
Dialog.currentId = Dialog.parts[? part] - 1;
Dialog.alarm[0] = delay;
Dialog.inputLock = false;
