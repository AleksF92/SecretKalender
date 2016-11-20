///email_summary(dayNum)
var dayNum = argument[0];

var filePath = email_path();
var dayStr = "Luke " + string(dayNum);

//Show registered emals
ini_open(filePath);
var emailNum = ini_read_real(dayStr, "Antall", 0);
var winnerMail = ini_read_string(dayStr, "Vinner", "");
var winnerStr = "?";
if (winnerMail != "") { winnerStr = winnerMail; }
show_message(
    dayStr + "#"
    + "#Antall påmeldte: " + string(emailNum)
    + "#Vinner: " + winnerStr
);

//Done
ini_close();
