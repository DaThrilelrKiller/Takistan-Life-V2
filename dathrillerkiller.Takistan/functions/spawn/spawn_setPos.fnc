private ["_array"];
_array = call compile lbData [1401, (lbCurSel 1401)];
disableSerialization;

if (isNil '_array') exitWith 
{
	ctrlSetText [1601, 'Spawn not Valid'];
	[]spawn
	{
		sleep 3;
		ctrlSetText [1601, 'Spawn'];
	};
};

player setPos _array; 

player setUnconscious false;
player allowDamage true;
['ALL',[player,' '],'network_SwitchMove',false,true]call network_MPExec;
['ALL',player,{_this allowDamage true;},false,true]call network_MPExec;
closeDialog 0;

if (isNil "dtk_loaded")then {
	65 cutRsc ["dtk_logo", "PLAIN"];

	dtk_cam camSetPos [(spawn_grid select 0),((spawn_grid select 1)+10),(spawn_grid select 2)+300];
	dtk_cam camSetTarget spawn_grid;
	enableCamShake true;
	addCamShake [5, 5, 25];
	_distance = dtk_cam distance  spawn_grid;
	_time = _distance*0.002;
	dtk_cam camCommit _time;
	preloadCamera spawn_grid;

	waitUntil {camCommitted  dtk_cam};
	dtk_cam camSetPos [(spawn_grid select 0),((spawn_grid select 1)+10),(spawn_grid select 2)+50];
	dtk_cam camSetTarget spawn_grid;
	dtk_cam camCommit 1;

	waitUntil {camCommitted  dtk_cam};

	
	_ui = uiNameSpace getVariable "dtk_logo";
	_control = _ui displayCtrl 1;
	_control ctrlSetScale 0.175;
	_control ctrlSetPosition [safeZoneX+safeZoneW*0.01, safeZoneY+safeZoneH-0.16];
	"dynamicBlur" ppEffectAdjust [0]; 
	"dynamicBlur" ppEffectCommit 3;
	_control ctrlCommit 3;
	dtk_loaded = true;
	deleteMarker ("medical_" + name _unit);
};

call medical_terminate;
dtk_cam cameraEffect ["terminate","back"];
dtk_spawned = true;