///email_save(dayNum, emailStr)
var dayNum = argument[0];
var emailStr = argument[1];

if (!email_exists(dayNum, emailStr)) {
    var filePath = email_path();
    ini_open(filePath);
    var dayStr = "Luke " + string(dayNum);
    
    //Add email to file
    var emailNum = ini_read_real(dayStr, "Antall", 0) + 1;
    ini_write_string(dayStr, "Antall", string(emailNum));
    ini_write_string(dayStr, string(emailNum), emailStr);
    
    //Done
    ini_close();
    show_message("Du er nå med i konkurransen!#Du vil bli kontaktet dersom du blir trukket ut.");
}
