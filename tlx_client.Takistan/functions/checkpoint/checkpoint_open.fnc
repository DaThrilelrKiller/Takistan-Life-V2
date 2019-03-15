if(AM_temp_carrying)exitWith{[] call Checkpoint_Drop;};
	
createDialog "AM_CheckpointBuilder";
	
private ["_config","_cost","_name"];
{
	_config = _x select 0;
	_cost   = _x select 1;
	_name = _config call config_displayname;

	if(isNil "_config")exitWith {hint "Invalid selection given"};
	lbAdd[1500,format["Buy %1($%2)",_name,_cost]];
	true
}count AM_classnames_total;

true