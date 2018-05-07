

vsp = vsp + grv;

//horizontal collision
if (place_meeting(x + hsp, y , Obj_wall1))
{
	while (!place_meeting(x + sign(hsp),y , Obj_wall1))
	{
		x = x + sign (hsp);
	}
	hsp = -hsp;
}
x = x + hsp;

//vertical position
if (place_meeting(x , y + vsp, Obj_wall1))
{
	while (!place_meeting(x ,y + sign(vsp), Obj_wall1))
	{
		y = y + sign (vsp);
	}
	vsp = 0;
}
y = y + vsp;

//animation
if (!place_meeting (x, y + 1,Obj_wall1))
{
	sprite_index = Spr_eye_jump;
	image_speed = 0; 
	if ( sign(vsp) > 0) {image_index = 1;}
	else {image_index = 0;}
}
else
{
	image_speed = 1
	if (hsp ==0)
	{
		sprite_index = Spr_eye;
	}
	else
	{
		sprite_index = Spr_eye	
	}
}
if (hsp !=0) image_xscale = sign(hsp);


