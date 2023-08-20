var _left_way = keyboard_check(vk_left);
var _right_way = keyboard_check(vk_right);
var _up_way = keyboard_check(vk_up);

var _move = (_right_way-_left_way)*walk_speed;
vsp = vsp + grv;

if(_up_way==1&&place_meeting(x,y+1,Object2)){
	vsp = -jump;
}

if(place_meeting(x,y+vsp,Object2)){
	while(!place_meeting(x,y+sign(vsp),Object2)){
		y = y + sign(vsp);
	}
	vsp=0;
}

if(place_meeting(x+_move,y,Object2)){
	while(!place_meeting(x+sign(_move),y,Object2)){
		x = x + sign(_move);
	}
	_move=0;
}

if(_move!=0)
	image_xscale = sign(_move)*10;

x = x + _move;
y = y + vsp;