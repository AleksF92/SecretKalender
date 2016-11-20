///scr_D7_SpawnDoodleBatch()
//Select random box
var boxId = random_int(0, instance_number(D7_DoodleArea));
var box = instance_find(D7_DoodleArea, boxId);

//Choose random batch pos
var baseX = box.x + (box.sprite_width / 2);
var baseY = box.y + (box.sprite_height / 2);

//Spawn batch
var num = random_int(2, 6);
for (var j = 0; j < num; j++) {
    //Choose random offset
    var dist = 64;
    var randX = random_int(-dist, dist);
    var randY = random_int(-dist, dist);
    
    instance_create(baseX + randX, baseY + randY, D7_Doodle);
}

return num;
