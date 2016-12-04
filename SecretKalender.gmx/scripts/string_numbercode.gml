///string_numbercode(str)
var str = string_upper(argument[0]);
var asciiStart = 65;
var code = "";

//Numbercode all letters
for (var i = 1; i <= string_length(str); i++) {
    var char = string_char_at(str, i);
    if (char == " ") {
        //Store normal space
        code += char;
    }
    else {
        //Store letter as code number
        var asciiNum = ord(char);
        var charNum = asciiNum - asciiStart + 1;
        if (char == "Æ") { charNum = 27; }
        else if (char == "Ø") { charNum = 28; }
        else if (char == "Å") { charNum = 29; }
        code += "[" + string(charNum) + "]";
    }
}

return code;
