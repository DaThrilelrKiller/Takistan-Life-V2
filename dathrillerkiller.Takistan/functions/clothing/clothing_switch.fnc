private ["_old","_oldweapons","_oldmags","_skin","_pos","_skinsold","_camera"];


_skin = (_this select 0);
dtk_clothing = player getVariable ["type",typeOf player];

_old = player;
_oldweapons = weapons _old;
_oldmags    = magazines _old;
	
_pos = getposATL player;
_skinsold = player getVariable ["type",typeOf player];
_storage = player getVariable ['dtk_storage',[["schluesselbund","idcard"],[1,1]]];
_warrants = player getVariable ['cdb_warrants',[]];
_license = player getVariable ['cdb_license',[]];
_notes = player getVariable ['cdb_notes',[]];
_bounty = player getVariable ['cdb_bounty',0];
_camera = cameraView;

if (_skinsold == _skin) exitWith {
	false
};

_unit = [_skin]call clothing_create;
addSwitchableUnit _unit;
	
titleCut["", "BLACK in",2];
	
selectPlayer _unit;
_unit switchCamera _camera;
deleteVehicle _old;
removeAllWeapons _unit;
player addEventHandler ["handleDamage", {_this call events_sethit}];
player addEventHandler ["respawn", {_this call setup_respawn; _this}]; 
player addMPEventHandler ["MPKilled",{_this call killfeed_display;}];
player setPosATL _pos;
player setVariable ['dtk_storage',_storage,true];
player setVariable ["cdb_warrants",_warrants,true];
player setVariable ["cdb_license",_license,true];
player setVariable ["cdb_notes",_notes,true];
player setVariable ["cdb_bounty",_bounty,true]; 
player setVariable ["id",dtk_id,true];
execVM format ['actions\%1actions.sqf',dtk_side];
{player addWeapon _x}count _oldweapons;
{player addMagazine _x} count _oldmags;

_PlayerSettings = profileNamespace getVariable "tickleme";
player setVariable ["PlayerSettings", [_PlayerSettings,dtk_side], true];
_face = (_PlayerSettings select 0);
player setVehicleInit format["this setFace '%1';", _face];
processInitCommands;
["ALL",player,{_this addaction ["","noscript.sqf",format['%1 call core_interact;',_this],25,false,true,"LeanRight","player distance _target < 5 && {!([_target,'Interact (E)','']call tag_show)}"];},false,false]call network_MPExec;
	
call gps_diary;
if ([player]call medical_medic)then {
titleText ["You are now a medic", "PLAIN DOWN"];
};
	
true