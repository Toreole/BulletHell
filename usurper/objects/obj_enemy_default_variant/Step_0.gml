if (hp <= 0) 
{
	with(obj_pc_info) global.points = global.points + 50;
	instance_destroy();
}

if (y > 2170 || x > 2330)
{
	instance_destroy();
}