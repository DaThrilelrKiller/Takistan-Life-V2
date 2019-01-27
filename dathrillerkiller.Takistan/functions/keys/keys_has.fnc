private ["_player","_vcl","_uid","_keychain","_return"];

_player = _this select 0;
_vcl = _this select 1;
_uid = getPlayerUID _player;
_keychain = (_vcl getVariable "DTK_OwnerUID") select 0;
if (isNil "_keychain")exitWith {false};

_return = if (_uid in _keychain)then {true}else{false};
_return