if(keyboard_check(vk_shift))
{
	if (keyboard_check(vk_right)) x = x + 2.4;
	if (keyboard_check(vk_left)) x = x - 2.4;
	if (keyboard_check(vk_up)) y = y - 2.4;
	if (keyboard_check(vk_down)) y = y + 2.4;
	
	if(keyboard_check(ord("X"))) && (cooldown < 1)
{
	instance_create_layer(x-16,y,"inst_pc_proj",obj_bullet_focus)
	instance_create_layer(x,y,"inst_pc_proj",obj_bullet_focus)
	instance_create_layer(x+16,y,"inst_pc_proj",obj_bullet_focus)
	audio_play_sound(sfx_pshot,1,0);
	cooldown = 4.2;
}

}

else
{
	if (keyboard_check(vk_right)) x = x + 6;
	if (keyboard_check(vk_left)) x = x - 6;
	if (keyboard_check(vk_up)) y = y - 6;
	if (keyboard_check(vk_down)) y = y + 6;

}

if(keyboard_check(ord("X"))) && (cooldown < 1)
{
	instance_create_layer(x-30,y,"inst_pc_proj",obj_bullet_pc)
	instance_create_layer(x-11,y,"inst_pc_proj",obj_bullet_pc)
	instance_create_layer(x+11,y,"inst_pc_proj",obj_bullet_pc)
	instance_create_layer(x+30,y,"inst_pc_proj",obj_bullet_pc)
	cooldown = 12;
}
cooldown = cooldown - 1;


if (x < 1810)
{
    x = 1810;
}

if (x > room_width - 1540)
{
    x = room_width - 1540;
}

if (y < 1638)
{
    y = 1638;
}

if (y > room_height - 20)
{
    y = room_height - 20;
}

if(global.plife < 1)
{
	room_goto(0)
}