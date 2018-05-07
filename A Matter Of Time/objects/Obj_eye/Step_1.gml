if (hp <=0 )
{
with (instance_create_layer(x,y,layer,Obj_eye_dead))
{
	direction = other.hitfrom;
	hsp = lengthdir_x(6,direction);
	vsp = lengthdir_x(6,direction)-3;
	if (sign(hsp) != 0) image_xscale = sign(hsp);
}

instance_destroy();

}