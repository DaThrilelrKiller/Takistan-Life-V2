private ["_VclVar","_UID","_index"];
createDialog "schluessel";
{
	_VclVar = (_x getVariable "DTK_OwnerUID");
	if !(isNil "_VclVar")then
	{
		_UID = (_VclVar select 0);
		  if (getPlayerUID player in _UID) then 
		 { 
			_index = lbAdd [1, format ["%1 (%2)", typeOf _x, _x]];
			lbSetData [1, _index, format ["%1", _x]];
		};
	};

} count (allMissionObjects "AllVehicles");

buttonSetAction [5,"call keys_give;"];
