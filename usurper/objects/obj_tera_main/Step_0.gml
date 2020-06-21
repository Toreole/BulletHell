if instance_exists(obj_cannon_bomber) || instance_exists(obj_cannon_scatter) || instance_exists(obj_cannon_l) || instance_exists(obj_cannon_trilaser) || instance_exists(obj_cannon_aimed_laser)
{
	speed = 0;
}

else
{
	move_towards_point(x,1500,speed);
}

if (y < 1550)
{
	instance_destroy();
}