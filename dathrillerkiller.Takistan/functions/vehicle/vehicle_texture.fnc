_type = _this select 0;
_object = _this select 1;

_config =  (missionConfigFile >> "CfgVehicles" >> _type);
_init = "";
_textures = [];

if (isClass _config)then {
	_type = inheritsFrom _config; 
	_type = conFigName _type;
	_textures = getArray(_config >>  "hiddenSelectionsTextures");
};

{
	_init = format ["%1 this setObjectTexture [%2,'%3'];",_init,_forEachIndex,_x];
}forEach _textures;

if (_init != "")then {
	_object setVehicleInit _init;
};

_object