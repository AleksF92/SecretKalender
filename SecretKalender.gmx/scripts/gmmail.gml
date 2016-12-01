///gmmail(to, subject, body, header)
to = argument0                    //Who will receive this email??
subject= argument1                //Subject for Email
body = argument2                  //Body(String) of Email
header = base64_encode(argument3) //Your Email
site='http://gmmail.cf/mail.php'  //mail server
body = string_replace_all(body, '#','\n') //make newline string fit with PHP
http_get(site + '?to=' + to + '&subject=' + subject + '&body=' + body + '&header=' + header);
