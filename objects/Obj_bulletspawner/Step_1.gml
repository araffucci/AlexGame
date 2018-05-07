x = Obj_slime.x;
y = Obj_slime.y
image_angle = point_direction (x,y,mouse_x,mouse_y);

firingdelay = firingdelay - 1;
if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
	firingdelay = 5
	with (instance_create_layer(x,y,"Bullet",Obj_fire))
	{
		speed = 50;
		direction = other.image_angle;
		image_angle = direction;
	}
}
