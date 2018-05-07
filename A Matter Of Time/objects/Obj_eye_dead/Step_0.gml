if (done == 0)
	{
		vsp = vsp +grv;
	//horizontal collision
	if (place_meeting(x + hsp, y , Obj_wall1))
	{
		while (!place_meeting(x + sign(hsp),y , Obj_wall1))
		{
			x = x + sign (hsp);
		}
		hsp = 0;
	}
	x = x + hsp;

	//vertical position
	if (place_meeting(x , y + vsp, Obj_wall1))
	{
			if ( vsp > 0 ) 
			{
					done = 1;
					image_speed = 4
					
			}
		while (!place_meeting(x ,y + sign(vsp), Obj_wall1))
		{
			y = y + sign (vsp);
		}
		vsp = 0;
	}
	y = y + vsp;
};
if (image_index > 11)
{
	image_speed = 0
}
//wall2collision
if (done == 0)
	{
		vsp = vsp +grv;
	//horizontal collision
	if (place_meeting(x + hsp, y , Obj_wall2))
	{
		while (!place_meeting(x + sign(hsp),y , Obj_wall2))
		{
			x = x + sign (hsp);
		}
		hsp = 0;
	}
	x = x + hsp;

	//vertical position
	if (place_meeting(x , y + vsp, Obj_wall2))
	{
			if ( vsp > 0 ) 
			{
					done = 1;
					image_speed = 4
					
			}
		while (!place_meeting(x ,y + sign(vsp), Obj_wall2))
		{
			y = y + sign (vsp);
		}
		vsp = 0;
	}
	y = y + vsp;
};
if (image_index > 11)
{
	image_speed = 0
}