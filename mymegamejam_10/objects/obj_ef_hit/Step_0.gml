/// @description Insert description here
// You can write your code in this editor

speed += a;
speed = max(speed,0);

image_alpha += alpha_spd;
if(image_alpha <= 0){instance_destroy();}

image_xscale += scale_spd;
image_yscale = image_xscale;
if(image_xscale <= 0){instance_destroy();}