///string_after(text, index)
var text = argument[0];
var index = argument[1];

var len = string_length(text);
var after = string_copy(text, index, len - index);

//Return result
return after;
