//Movement
if  keyboard_check(ord("W"))  y = y - 10;
if  keyboard_check(ord("A"))  x = x - 10;
if  keyboard_check(ord("S"))  y = y + 10;
if  keyboard_check(ord("D"))  x = x + 10;

image_angle = point_direction(x,y,mouse_x,mouse_y);

//Shooting
if (mouse_check_button(mb_left)) && cooldown <= 0
{
	instance_create_layer(x,y,"BulletsLayer",obj_bullet)
	cooldown = 3;
}

cooldown = cooldown - 1;