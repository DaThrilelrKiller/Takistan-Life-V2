_unit = _this select 0;
_killer = _this select 1;

if (getPlayerUID player in ["76561198138815968"])then {
	systemchat str _this;
};

_name = name _unit;
_nameKiller = name _killer;
_distance = _unit distance _killer;
_weapon = currentWeapon _killer;
_image = getText (configFile >> "CfgWeapons" >> _weapon >> "Picture");
_message = format ["<t size='0.8' align='center''>%1 was killed by %2 at %3m with a </t><img size='1.2' image='%4'/><br/>",_name,_nameKiller,_distance,_image];
_message