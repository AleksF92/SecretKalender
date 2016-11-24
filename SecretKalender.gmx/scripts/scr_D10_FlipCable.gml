///scr_D10_FlipCable()
var tmp = right;
right = up;
up = left;
left = down;
down = tmp;

image_angle -= 90;
if (image_angle < 0) { image_angle += 360; }
