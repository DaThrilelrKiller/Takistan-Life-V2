private ["_art","_item","_anzahl","_closeVcl","_closest","_incarpark","_car"];

_art = _this select 0;

if (_art == "use") then 

{
if(lockpicking)exitwith{systemChat  "You Are Already Lock Picking A Vehicle!"};
_item   = _this select 1;
_anzahl = _this select 2;
_closeVcl   = dummyobj;
_closest    = -1;
_incarpark = false;

_closeVcl = (getPos player nearEntities [["LandVehicle", "Air", "ship"], 7] select 0);
if (isNil '_closeVcl')exitWith {systemChat localize "STRS_inventar_lockpick_zuweit";};

	if(_closeVcl isKindOf "Tank" || _closeVcl isKindOf "Air")exitwith{systemChat  "You cannot lockpick this vehicle!"};
	if ([player,_closeVcl]call keys_has) then 

		{	

		systemChat  localize "STRS_inventar_lockpick_already";

		} 
		else 
		{			
		if ([10]call Main_Random) then 

			{
			lockpicking = true;	
			_car  = (nearestobjects [getpos player, ["Ship", "LandVehicle"], 6] select 0);
			["ALL",[player," "],"network_SwitchMove",false,true]call network_MPExec;
			
			sleep 8;
			_VclVar = (_closeVcl getVariable "DTK_OwnerUID");
			_UID = (_VclVar select 0);
			_UID set[count _UID,(getPlayerUID player)];
			_VclVar set[0,_UID]; 
			_closeVcl setVariable ["DTK_OwnerUID",_VclVar, true];
			systemChat  localize "STRS_inventar_lockpick_success";																															
			["ALL",[player," "],"network_SwitchMove",false,true]call network_MPExec;
			lockpicking = false;
			} 
			else 
			{
			_car  = (nearestobjects [getpos player, ["Ship", "LandVehicle"], 6] select 0);
			["ALL",[player,"repairingkneel"],"network_SwitchMove",false,true]call network_MPExec;

			sleep 6;
				
			systemChat  localize "STRS_inventar_lockpick_noluck";
			["ALL",[player," "],"network_SwitchMove",false,true]call network_MPExec;
			};
			
			if ([7]call Main_Random)then {
			["ALL",[_closeVcl,"caralarm1",250],"network_say3d",false,true]call network_MPExec;

			};
								
		[player,_item,-1] call storage_add;	

	};		
};
