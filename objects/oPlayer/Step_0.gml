ysp += .1;
xsp = 0;

if keyboard_check(ord("D"))
{
		image_angle = 0;
		xsp=+1;
}

if keyboard_check(ord("A"))
{
	image_angle = 0
	xsp=-1;
}

if place_meeting(x,y+1, oGround)
{
	ysp = 0;
	if keyboard_check(vk_space)
	{
		image_angle = 0
		ysp=-6
	}
}

move_and_collide(xsp,ysp,oGround);


if canShoot
{
	if mouse_check_button(mb_right)
	{
	canShoot = false;
	image_angle = point_direction(x,y,mouse_x,mouse_y) + 90;
	alarm[0] = 30;
	instance_create_layer(x,y,"Instances",oInk);

	}
}