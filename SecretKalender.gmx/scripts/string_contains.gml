///string_contains(text, targetText)
var text = argument[0];
var targetText = argument[1];

//Search through text for targetText
var contains = false;
for (var i = 0; i < string_length(text); i++) {
    for (var j = 0; j < string_length(targetText); j++) {
        if (string_char_at(text, i + j) != string_char_at(targetText, j)) {
            //Letter don't match
            break;
        }
        if (j == string_length(targetText) - 1) {
            contains = true;
            break;
        }
    }
    
    if (contains) { break; }
}

//Return result
return contains;
