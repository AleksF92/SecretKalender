///dialog_show_custom(text, [delay])
var text = argument[0];
var delay = 1;
if (argument_count > 1) { delay = argument[1]; }

//Show dialog, -1 (alarm increases)
Dialog.active = true;
Dialog.text = "";
Dialog.targetText = text;
Dialog.alarm[1] = Dialog.textDelay;
Dialog.inputLock = true;
