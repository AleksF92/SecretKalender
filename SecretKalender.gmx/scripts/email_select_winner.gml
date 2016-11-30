///email_select_winner(dayNum)
var dayNum = argument[0];

var filePath = email_path();
var dayStr = "Luke " + string(dayNum);

//Show registered emals
ini_open(filePath);
var emailNum = ini_read_real(dayStr, "Antall", 0);
var winnerMail = ini_read_string(dayStr, "Vinner", "");

if (winnerMail != "") {
    if (show_question("Denne luken har allerede en vinner!#Vil du trekke en ny?")) {
        winnerMail = "";
    }
}

if (emailNum > 0 && winnerMail == "") {
    //Winner not selected
    var randId = random_int(1, emailNum);
    var randEmail = ini_read_string(dayStr, string(randId), "");
    if (randEmail != "") {
        ini_write_string(dayStr, "Vinner", randEmail);
    }
}

//Done
ini_close();
