private ["_array"];
_array = call compile lbData [1401, (lbCurSel 1401)];

if (isNil '_array') exitWith 
{
	ctrlSetText [1601, 'Spawn not Valid'];
	[]spawn
	{
		sleep 3;
		ctrlSetText [1601, 'Spawn'];
	};
};

player setUnconscious false;
player allowDamage true;
['ALL',[player,' '],'network_SwitchMove',false,true]call network_MPExec;
['ALL',player,{_this allowDamage true;},false,true]call network_MPExec;
closeDialog 0;

waitUntil {camCommitted  dtk_cam};
player setPos _array; 

dtk_cam cameraEffect ["terminate","back"];
168 cutText ["", "PLAIN"];
dtk_spawned = true;