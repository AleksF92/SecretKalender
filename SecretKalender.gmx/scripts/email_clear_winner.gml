///email_clear_winner(dayNum)
var dayNum = argument[0];

var filePath = email_path();
var dayStr = "Luke " + string(dayNum);

//Show registered emals
ini_open(filePath);
ini_write_string(dayStr, "Vinner", "");

//Done
ini_close();
