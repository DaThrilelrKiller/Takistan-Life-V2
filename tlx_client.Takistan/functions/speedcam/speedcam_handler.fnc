
private ["_car","_speed","_type","_infos","_license","_demvar","_newdemerits","_i"];

for "_i" from 0 to 1 step 0 do 
{
	
_car    = vehicle player;

if ((_car  animationPhase "ani_lights") != 0.1)then
{
	{
	_speed  = speed _car;
	if ((player == driver _car) && {_car distance _x < 38} && {_speed >= 120} && {!(_car iskindof "Air")}) then 
		{ 

	/*["ALL",[_x,"speedcam",100],"network_say3d",false,true]call network_MPExec;*/		
		titleCut [" ","white in",1];
		player action ["lightOn", _x];
		sleep 0.5;
		player action ["LightOff", _x];

		[format ["Speedcam: Your Speed: %1 Limit: 90",round _speed],'data\images\tags\speedCam']call tag_notify;
		[_car,format ['Speeding: %1',round _speed],format ["Speedcam %1",(_forEachIndex + 1)]]call cdb_addNote;
		sleep 2;
		}; 

	} forEach speedcam_array;
};

sleep 0.5;

};
