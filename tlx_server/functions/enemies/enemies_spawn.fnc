private["_building","_position","_side","_sideEnemy","_sidePlayer","_grp","_unit","_position","_i"];

if (random 1 < 0.5) exitWith {};
if (!ScriptDone t_enemies_handler) exitWith {};


_building = (dtk_house_list call bis_selectRandom);
_position = (_building call core_buildingPostions)select 0;

_side = [_building]call border_side;

if (_side == "North") then {
	resistance setFriend [resistance,0];
	resistance setFriend [civilian,0];
	resistance setFriend [west,0];
	west setFriend [resistance,0];
	["ALL",["true","Mission Alert",format["Enemies have taken over a civilans home %1! response now!", _side]],"Main_Notification",false,false]call network_MPExec;
}else {
	resistance setFriend [resistance,0];
	resistance setFriend [civilian,0];
	resistance setFriend [east,0];
	east setFriend [resistance,0];
	["ALL",["true","Mission Alert",format["Enemies have taken over a civilans home %1! response now!", _side]],"Main_Notification",false,false]call network_MPExec;
};


_grp = createGroup resistance;

for "_i" from 1 to 10 do {
    _unit = _grp createUnit ["TK_INS_Soldier_EP1",_position,[],15,"FORM"];
    _unit setSkill 0.7;
    _unit setCombatMode "RED";
    _unit setBehaviour "COMBAT";
    _unit setSpeedMode "FULL";
    _unit allowFleeing 0;
	_unit addMPEventHandler ["MPKilled",{_this call killfeed_display;}];
	_unit addMPEventHandler ["MPKilled",{_this call enemies_killed;}];
	
};

_marker = createMarker [format["enemie_mission_%1",time],_position];
_marker setMarkerShape "ICON";								
_marker setMarkerType "Warning";										
_marker setMarkerColor "ColorRed";																														
_marker setMarkerText "Take out the rebels here!";	

t_enemies_handler = [_marker,_grp]spawn s_enemies_handler;


