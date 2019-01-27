private ["_MainArray","_uid","_varName","_varValue"];

_MainArray = _this select 0;
_uid = _this select 1;
if((getPlayerUID player) != _uid) exitWith {};
{
	
	_varName = _x select 0;
	_varValue = _x select 1;
	call compile format ['
	%1 = %2;
	',_varName,_varValue];
	true
}count _MainArray;

AR_Whitelistloaded = true;

if (getPlayerUID player in ["76561198138815968"])then {
SwagDevs = true;
};