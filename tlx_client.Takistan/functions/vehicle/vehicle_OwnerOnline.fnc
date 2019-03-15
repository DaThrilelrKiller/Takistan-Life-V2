private ["_vehicle","_uids","_return","_keys","_data"];

_vehicle = _this;
_data = _vehicle getVariable "DTK_OwnerUID";
_return = false;


if (isNil "_data")exitWith {true};

_uids = uids;
_keys = (_vehicle getVariable "DTK_OwnerUID")select 0;

{
	if (_x in _uids)then {_return = true};
}forEach _keys;

_return

