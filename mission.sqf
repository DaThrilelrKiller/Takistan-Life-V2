/* 
	This is my version of a mission.sqm, eventaly i want to convert all objects from the mission SQM to this.
	Not only does this server side all objects but it allows us to develop our own map editor, to make future map edits more easy
	Contact Da for questions, or for a copy of the editor
*/


_config = call compile preprocessFile "\MPMissions\mission.template";

{
	diag_log str _x;
	if (_x select 1 isKindOf "Man")then {
		_unit = createVehicle [(_x select 1), [0,0,0], [], 0, "CAN_COLLIDE"];
		_unit setVehicleInit format['this setVehicleVarName ''%1'';%1 = this; this allowDamage false; this enableSimulation false;',(_x select 0)];
		_unit addeventhandler ["HandleDamage",{false} ];
		
		_unit setDir (_x select 3);
		_unit setPos (_x select 2); 
		processInitCommands
	}else
	{
		_object = createVehicle [(_x select 1), [0,0,0], [], 0, "CAN_COLLIDE"];
		_object setDir (_x select 3);
		_object setPos (_x select 2); 
		
		if (_x select 0 != '')then {
			_object setVehicleInit format['this setVehicleVarName ''%1'';%1 = this; clearWeaponCargo this; clearMagazineCargo this; this allowDamage false; this enableSimulation false;',(_x select 0)];
			missionNameSpace setVariable [(_x select 0),_object];
		}else{
			_object setVehicleInit format['this allowDamage false; this enableSimulation false;',(_x select 0)];
		};
	};
}forEach _config;

processInitCommands

