
y += ysp;
ysp += .2
if place_meeting(x,y+4, oGround)
{
	effect_create_layer("Instances",ef_firework,x,y,1,c_black);
	instance_destroy();
}


