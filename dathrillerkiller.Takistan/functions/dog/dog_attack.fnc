private ["_target","_dog","_sound"];

_target = _this select 0;
_dog = player getVariable "CLAY_DogUnit";
player setVariable ["CLAY_DogStatus", "Attacking"];

_sound = createSoundSource ["Sound_BadDog", getpos _dog, [], 0];
_sound attachTo [_dog, [0,0,0]];

while {alive _dog && alive _target && player getVariable "CLAY_DogStatus" == "Attacking"} do
{
	_dog doMove getPos _target;
	If (_dog distance _target < 3 && vehicle _target == _target) Then
	{
		_dog doTarget _target;
		_dog lookAt _target;

		_dog switchMove "CLAY_DogAttack";
		_dog setVelocity [0, 0, 5];
		
		_target setHit ["legs", 1];
		_target setHit ["hands", 1];
		_target setDammage 0.8;
		systemChat  "The dog has bitten his target";
		["ALL",[_target,"adthpercmstpslowwrfldnon_4"],"network_SwitchMove",false,true]call network_MPExec;
		player setVariable ["CLAY_DogStatus", ""];
		sleep 12;
		["ALL",[_target,"amovppnemstpsnonwnondnon"],"network_SwitchMove",false,true]call network_MPExec;
		
	};
	sleep 1;
};
deleteVehicle _sound;

