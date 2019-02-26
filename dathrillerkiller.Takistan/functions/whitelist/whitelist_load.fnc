private ["_value"];

{
	_value = _this select _forEachIndex;
	if (_value)then {
		player setVariable["dtk_tag",format["data\images\tags\%1",_x select 0],true];
	};
	missionNamespace setVariable [_x select 1,_value];
}forEach whitelist_data;

isAdmins = (isAdmin||isSnAdmin||isAdminDev||isDeveloper);
isStaff = (isAdminDev or isSnAdmin || isAdmin || isMod || isDeveloper);

isSup = (supporters1 || supporters2 || supporters3 || supporters4 || supportersVIP);
isVip = supportersVIP;
AR_Whitelistloaded = true;