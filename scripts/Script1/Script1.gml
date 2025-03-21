function Script1(){
//Inverse Kinematics//

var b = 38, f = b; //b = the length of the arm bones.

//The anchored position, eg shoulder, hip
shoulder_x = x
shoulder_y = y

dist = min(round(point_distance(shoulder_x,shoulder_y,mouse_x,mouse_y))+(b/12), b*2); //Set the distance for the arm, limiting it to the max_dist. change the number in /12 to choose how far the arm can collapse
angle = round(point_direction(shoulder_x,shoulder_y,mouse_x,mouse_y)); //Set the angle
hand_x = x+lengthdir_x(dist,angle)
hand_y = y+lengthdir_y(dist,angle)

//The complicated maths bit
d = round(point_distance(shoulder_x, shoulder_y, hand_x, hand_y));
phi = arccos((d*d-b*b-f*f)/(-2*b*f));
theta = pi-phi;
omega = arcsin(f*sin(phi)/d);

//Setting up the draw varibles
bicep_x = shoulder_x;
bicep_y = shoulder_y;
bicep_angle = point_direction(shoulder_x, shoulder_y, hand_x, hand_y)-radtodeg(omega);
forearm_x = shoulder_x+lengthdir_x(b, bicep_angle);
forearm_y = shoulder_y+lengthdir_y(b, bicep_angle);
forearm_angle = bicep_angle+radtodeg(theta); 

//Draw the IK Chain
//draw bones
draw_line(shoulder_x,shoulder_y,forearm_x,forearm_y)
draw_line(forearm_x,forearm_y,hand_x,hand_y)

//draw hand and shoulder
draw_circle(hand_x,hand_y,8,false)
draw_circle(shoulder_x,shoulder_y,10,false)
}