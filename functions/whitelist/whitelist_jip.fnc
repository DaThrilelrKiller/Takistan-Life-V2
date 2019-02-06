
_unit = _this select 0;
_side = _this select 1;
_uid = getPlayerUid _unit;
_name = name _unit;


_helper = [format["%1 - %2",_name,_uid],"Whitelist","Helper"]call s_statsave_read;
_moderator = [format["%1 - %2",_name,_uid],"Whitelist","Moderator"]call s_statsave_read;
_admin = [format["%1 - %2",_name,_uid],"Whitelist","Administrator"]call s_statsave_read;
_developer = [format["%1 - %2",_name,_uid],"Whitelist","Developer"]call s_statsave_read;

[_unit,[[_helper,"Helper"],[_moderator,"Moderator"],[_admin,"Administrator"],[_developer,"Developer"]],"whitelist_load",false,false]call network_MPExec;