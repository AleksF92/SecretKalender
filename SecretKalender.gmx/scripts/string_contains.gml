///string_contains(text, targetText)
var text = argument[0];
var targetText = argument[1];

//Return result
var contains = (string_index(text, targetText) > -1);
return contains;
