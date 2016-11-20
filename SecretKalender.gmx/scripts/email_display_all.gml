///email_display_all(dayNum)
var dayNum = argument[0];

var filePath = email_path();
var dayStr = "Luke " + string(dayNum);

//Show summary
email_summary(dayNum);

//Show registered emals
ini_open(filePath);
var emailNum = ini_read_real(dayStr, "Antall", 0);
var emailsPerPage = 10;
var emailStr = dayStr + "#";
for (var i = 0; i < emailNum; i++) {
    emailStr += "#" + string(i + 1) + ": " + ini_read_string(dayStr, string(i + 1), "");
    if (i mod emailsPerPage == emailsPerPage - 1 || (i + 1) == emailNum) {
        show_message(emailStr);
        emailStr = dayStr;
    }
}

//Done
ini_close();
