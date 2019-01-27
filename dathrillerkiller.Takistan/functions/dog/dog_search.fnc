_target = _this select 0;
_dog = player getVariable "CLAY_DogUnit";

If (_dog distance _target <= 4) then
	{
	_dog doMove getPos _target;		
	systemChat  format ["Checking %1 For Illegal Contraband!", _target];
	drugsvalue = 0;	
	(format ["if (player == %1) then {[""drugs"", %2] execVM ""scripts\civmenu.sqf"";};", _target, player]) call network_broadcast;								

}
else 
{ 
	_dog doMove getPos _target;
	systemChat  "Your Dog Is Not Close Enough To Suspect!";
};