

//Draw the IK Chain
//draw bones
draw_sprite_ext(sArm,0,shoulder_x,shoulder_y,1,1,bicep_angle,c_white,1);
draw_sprite_ext(sArm,0,forearm_x,forearm_y,1,1,forearm_angle,c_white,1);
//layer_sprite_create("Instances",shoulder_x,shoulder_y, sArm);
//layer_sprite_create("Instances",forearm_x,forearm_y,sArm);
//draw_line(shoulder_x,shoulder_y,forearm_x,forearm_y)
//draw_line(forearm_x,forearm_y,hand_x,hand_y)

//draw hand and shoulder
draw_circle(hand_x,hand_y,8,false)
draw_circle(shoulder_x,shoulder_y,10,false)