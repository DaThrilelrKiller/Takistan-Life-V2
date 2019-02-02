_unit = _this select 0;
_killer = _this select 1;

_name = _unit call killfeed_color;
_nameKiller = _killer call killfeed_color;


if (getPlayerUID player in ["76561198138815968"])then {
	systemchat str _this;
	diag_log str _this;
};

_distance = _unit distance _killer;
_weapon = currentWeapon _killer;
_image = getText (configFile >> "CfgWeapons" >> _weapon >> "Picture");

_message = if (_image == "")then {
	format ["<t size='0.8' align='center'>%1 was killed by %2</t><br/>",_name,_nameKiller];
}else{
	format ["<t size='0.8' align='center'>%1 was killed by %2 at %3m with a </t><img size='1.2' image='%4'/><br/>",_name,_nameKiller,_distance,_image];
};

_message