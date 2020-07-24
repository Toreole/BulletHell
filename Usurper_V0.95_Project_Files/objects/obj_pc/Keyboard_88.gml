if (global.bombs > 0) && (bomb == false)
{ 
	global.bombs = global.bombs - 1;
	instance_create_layer(obj_pc.x,obj_pc.y,"inst_bomb",obj_realbomb)
	invincible = true;
	bomb = true;
	alarm[1] = 300;
	alarm[2] = 300;
}