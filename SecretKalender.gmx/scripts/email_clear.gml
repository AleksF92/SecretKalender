///email_clear(dayNum)
var dayNum = argument[0];

var filePath = email_path();
var dayStr = "Luke " + string(dayNum);

//Remove registered emals
ini_open(filePath);
ini_section_delete(dayStr);

//Done
ini_close();
show_message("Alle data for " + dayStr + " ble slettet!");
