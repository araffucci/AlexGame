//Get player input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check (ord("D"));
key_jump = keyboard_check_pressed(vk_space);

//calculate movement

var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x, y + 1, Obj_wall)) && (key_jump)
{
	vsp = -7;
}

//horizontal collision
if (place_meeting(x + hsp, y , Obj_wall))
{
	while (!place_meeting(x + sign(hsp),y , Obj_wall))
	{
		x = x + sign (hsp);
	}
	hsp = 0;
}
x = x + hsp;

//vertical position
if (place_meeting(x , y + vsp, Obj_wall))
{
	while (!place_meeting(x ,y + sign(vsp), Obj_wall))
	{
		y = y + sign (vsp);
	}
	vsp = 0;
}
y = y + vsp;

//animation
if (!place_meeting (x, y + 1,Obj_wall))
{
	sprite_index = Spr_slime_jump;
	image_speed = 0; 
	if ( sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1
	if (hsp ==0)
	{
		sprite_index = Spr_slime;
	}
	else
	{
		sprite_index = Spr_slime	
	}
}
if (hsp !=0) image_xscale = sign(hsp);