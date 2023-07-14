// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function afterimage(spr=sprite_index,img=image_index,xscale=image_xscale,yscale=image_yscale,time=5){
	var ins = instance_create_depth(x,y,depth,obj_afterimage);
	with(ins)
	{
		sprite_index = spr;
		image_index = img;
		alarm[0] = time;
		time = time;
		image_xscale = xscale;
		image_yscale = yscale;
	}
	
	return ins;
}