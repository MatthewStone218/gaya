/// @description Insert description here
// You can write your code in this editor
image_alpha -= 0.06;
image_xscale += 0.03;
image_yscale = image_xscale;

image_angle += angle_spd;

y -= 2;

if(image_alpha <= 0)
{
   instance_destroy();
   exit;
}
