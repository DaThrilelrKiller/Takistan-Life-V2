private ["_action","_tower","_towertype","_ObjectsInRange","_Object","_message","_Otype","_OLength","_ObjectName","_TowerName"];

_action = _this select 0;
_tower = _this select 1;
_towertype = typeOf _tower;
_ObjectsInRange =_tower nearEntities [["Motorcycle","car","Truck", "Ship", "LandVehicle"], 15];

switch (_action) do 
{
    case "TOW": 
	{
		{
			if (_x != _tower)exitWith {Object = _x;};
		}count _ObjectsInRange;
		
		_Object = Object;
		
		if (!(_Object getVariable "towing" == "")) exitWith 
		{
		_message = format["The Vehicle (%1) you are trying to towing is already towing another Vehicle",vehicleVarName _Object];
		["true","Towing System",_message]call Main_Notification;
		};
		
		if (!(_Object getVariable "towed" == "")) exitWith 
		{
		_message = format["The Vehicle (%1) you are trying to tow is already towed by another Vehicle",vehicleVarName _Object];
		["true","Towing System",_message]call Main_Notification;
		}; 
		
		if (!(alive _tower) || !(alive _Object)) exitWith 
		{
		_message = format["Either the Vehicle (%1) or the Vehicle you are towing with is to damaged ",vehicleVarName _Object];
		["true","Towing System",_message]call Main_Notification;
		}; 
		
		if (count _ObjectsInRange < 2) exitWith 
		{
		["true","Towing System","There are no vehciles in range that can be towed"]call Main_Notification;
		}; 
	
		_Otype = typeOf _Object;
		_OLength = (round((sizeOf _Otype)*10)/10);
		_ObjectName = getText (configFile >> "CfgVehicles" >> (_Otype) >> "displayName");
		_TowerName = getText (configFile >> "CfgVehicles" >> (_towertype) >> "displayName");
	
	
		
		if (true) exitWith 
		{
			_message = format["Loading %1 onto %2",vehicleVarName _Object,vehicleVarName _tower];
			["true","Towing System",_message]call Main_Notification;
			_tower setPos [getPos _tower select 0, getPos _tower select 1, (getPos _tower select 2) +1];
			_tower setVectorup [0,0,0];
			_tower enableSimulation false;
			_Object setPos [getPos _Object select 0, getPos _Object select 1, (getPos _Object select 2) +1];
			_Object setVectorup [0,0,0];
			_Object enableSimulation false;
			sleep 3;
			
			if (_tower isKindOf "MtvrRefuel_DES_EP1") then 
			{
				_Object attachTo [_tower,[0,-1.5,1]];
			};
			
			
			_tower enableSimulation true;
			_tower setVariable ["towing", format ["%1",vehicleVarName _Object], true];
			_Object setVariable ["towed", format ["%1",vehicleVarName _tower], true];
		};
	};
	
    case "RELEASE": 
	{
		{
			if (_x getVariable "towed" == vehicleVarName _tower) exitWith
			{

				sleep 3;
				_x attachTo [_tower,[0,-8,0.6]];
				_x setPos (_x modelToWorld [0,-1.5,-0.6]);
				sleep 0.1;
				deTach _x;
				
				_x setVariable ["towed", nil, true];
				_tower setVariable ["towing", "", true];
				_x enableSimulation true;
				_message = format["Released %1 from %2",vehicleVarName _x,vehicleVarName _tower];
				["true","Towing System",_message]call Main_Notification;
			};
		}count _ObjectsInRange;
	};	
};