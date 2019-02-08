

{
	missionNamespace setVariable [_x select 1,_this select _forEachIndex];
}forEach whitelist_data;

isAdmins = (isAdmin||isSnAdmin||isAdminDev||isDeveloper);
isStaff = (isAdminDev or isSnAdmin || isAdmin || isMod || isDeveloper);

isSup = (supporters1 || supporters2 || supporters3 || supporters4 || supportersVIP);
isVip = supportersVIP;
