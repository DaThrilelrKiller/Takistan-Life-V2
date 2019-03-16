private ["_name","_location","_classname","_data","_vehicle","_pos","_dir"];
_name = _this select 0;
_location = _this select 1;
if (isNil "_location")then {
	_location = call roads_near; 
};



_pos = call{
	if (typeName _location == "ARRAY")exitWith {_location};
	if (typeName _location == "OBJECT")exitWith {getPos _location};
	if (typeName _location == "STRING")exitWith {getPos (missionnamespace getVariable _location)};
};

_dir = call{
	if (typeName _location == "ARRAY")exitWith {getDir player};
	if (typeName _location == "OBJECT")exitWith {getDir _location};
	if (typeName _location == "STRING")exitWith {getDir (missionnamespace getVariable _location)};
};


_data = [[getPlayerUID (_this select 2)],_name,(_this select 3),name player];
_classname =  _name call config_class;


		_vehicle = _classname createVehicle [0,0,0];
		_vehicle setVehicleInit format [
		"
			this setVehicleVarName ""vehicle_%2_%1"";
			vehicle_%2_%1 = this; 
			clearWeaponCargo this; 
			clearMagazineCargo this;
			this lock true;
			[this]call mounted_add_actions;
		"
		, round(random 10), round(time)];
	
	_vehicle setPos  [_pos select 0,_pos select 1,0];
	_vehicle setDir _dir;
	_vehicle setVariable ["DTK_OwnerUID",_data, true];
	_vehicle setVariable ["dtk_storage",[[],[]], true];
	
	if !(_vehicle isKindOf "Tank")then {
		_vehicle setvariable ["tuning",1.002, true];
	};
	_vehicle addeventhandler ["HandleDamage",'_this call vehicle_handleDamage' ];

	
	_plate = _this select 4;
	if (isNil "_plate")then{
		[_vehicle] call plates_setplate;
	}else{
		[_vehicle,(_this select 4)] call plates_setplate;
	};
	
	
if (dtk_cop || {dtk_opf}) then {
	if !(_classname isKindOf "Air")then 
	{
	_vehicle setVariable ["dtk_sirens",["dtk_HighWail","dtk_Yelp","dtk_LowPhasser"],true];
	};
};	
if (_classname in ["MtvrRefuel_DES_EP1"])then {
	_vehicle setVariable["towing","",true];
};
				

[_name,_vehicle]call vehicle_texture;														

processInitCommands;
newvehicle = _vehicle;
_vehicle