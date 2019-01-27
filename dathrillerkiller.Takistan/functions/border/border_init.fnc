if (dtk_server)exitWith {};
_objects = (nearestobjects [dtk_center, ["Base_WarfareBBarrier10xTall"], (dtk_center select 0)]);

for "_i" from 0 to count _objects step 1 do 
{
	_object = (_objects select _i);
	_pos  = getPos _object;
	_dir =  (getDir _object)- 90;

	_marker = createMarkerLocal [("border_" + str _i), _pos];
	_marker setMarkerTypeLocal "EMPTY";
	_marker setMarkerShapeLocal "RECTANGLE";
	_marker setMarkerColorLocal "colorBlue";
	_marker setMarkerDirLocal _dir;
	_marker setMarkerSizeLocal [35,11];
	_marker setMarkerAlphaLocal 1;
};
	