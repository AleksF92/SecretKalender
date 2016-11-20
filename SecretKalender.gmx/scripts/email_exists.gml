///load_emails(dayNum, emailStr)
var dayNum = argument[0];
var emailStr = argument[1];

var filePath = email_path();
var dayStr = "Luke " + string(dayNum);

//Search for email
var found = false;
ini_open(filePath);
var emailNum = ini_read_real(dayStr, "Antall", 0);
for (var i = 0; i < emailNum; i++) {
    var email = ini_read_string(dayStr, string(i + 1), "<email>");
    if (string_contains(emailStr, email)) {
        //Found email
        found = true;
        break;
    }
}

//Done
ini_close();

//Return status
if (found) {
    show_message("Du er allerede påmeldt denne konkurransen.#Lykke til!");
}
return found;
