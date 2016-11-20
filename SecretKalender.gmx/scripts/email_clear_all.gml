///email_clear_all()
var filePath = email_path();

//Remove registered emals
ini_open(filePath);
for (var i = 1; i <= 24; i++) {
    var dayStr = "Luke " + string(i);
    ini_section_delete(dayStr);
}

//Done
ini_close();
show_message("Alle data for kalenderen ble slettet!");
