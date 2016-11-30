///email_load_day(day)
var dayNum = argument[0];

if (dayNum >= 1 && dayNum <= 24) {
    var filePath = email_path();
    var dayStr = "Luke " + string(dayNum);
    
    //Get registered emails
    ds_list_clear(secretList);
    ini_open(filePath);
    var emailNum = ini_read_real(dayStr, "Antall", 0);
    for (var i = 0; i < emailNum; i++) {
        var email = ini_read_string(dayStr, string(i + 1), "");
        ds_list_add(secretList, email);
    }
    
    //Get registered winner
    secretWinner = ini_read_string(dayStr, "Vinner", "<Ikke valgt>");
    secretDay = dayNum;
    secretId = 0;
}
