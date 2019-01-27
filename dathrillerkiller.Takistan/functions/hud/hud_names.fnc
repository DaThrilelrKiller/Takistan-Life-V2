private ["_objects","_object","_text"];

if ([player,2] call statsave_nearSave)then {
		_text = ["Retrive Vehicle (E)","Save Vehicle (E)"]select (vehicle player != player);
		titleRsc["Rtags", "PLAIN"];
		_control = (uiNamespace getVariable 'TAGS_HUD') displayCtrl 64438;
		_control ctrlSetText _text;
};

if (vehicle player != player)exitwith{

	if (driver(vehicle player) == player)then {
		if (call garage_near)then {
			titleRsc["Rtags", "PLAIN"];
			_control = (uiNamespace getVariable 'TAGS_HUD') displayCtrl 64438;
			_control ctrlSetText "Open Garage (E)";
		};
	};
};

_objects = ["RUSpecialWeaponsBox","LandVehicle", "Air", "ship", "LocalBasicWeaponsBox","MAP_notebook"];
_object = nearestObjects [getPos player,_objects,2];
_object = _object - [player];
_object = _object select 0;

if (isNil "_object")exitwith{};


if ([_object,["Air", "Ship", "LandVehicle"]]call core_isKindOf && {alive _object} && {!locked _object})exitwith {
	titleRsc["Rtags", "PLAIN"];
	_control = (uiNamespace getVariable 'TAGS_HUD') displayCtrl 64438;
	_control ctrlSetText "ENTER VEHIClE (E)";
};

if (typeOf _object == "LocalBasicWeaponsBox")exitwith {
	titleRsc["Rtags", "PLAIN"];
	_control = (uiNamespace getVariable 'TAGS_HUD') displayCtrl 64438;
	_control ctrlSetText "OPEN STORAGE (T)";
};

if (_object isKindOf "MAP_notebook")exitwith {
	titleRsc["Rtags", "PLAIN"];
	_control = (uiNamespace getVariable 'TAGS_HUD') displayCtrl 64438;
	_control ctrlSetText "OPEN CCTV (E)";
};
