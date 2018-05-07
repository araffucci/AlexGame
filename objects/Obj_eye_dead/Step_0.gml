if (done == 0)
	{
		vsp = vsp +grv;
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
			if ( vsp > 0 ) 
			{
					done = 1;
					image_speed = 4
					
			}
		while (!place_meeting(x ,y + sign(vsp), Obj_wall))
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