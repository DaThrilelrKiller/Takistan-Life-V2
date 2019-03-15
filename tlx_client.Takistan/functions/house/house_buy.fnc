_house = _this select 0;
_price = _this select 1;

if (markerText _house != "")exitWith {
	systemchat format ["%1, someone already owns this house!",name player];
};

if ([player,"geld", -_price] call storage_add)then {
	systemchat format ["%1 you have bought this house",name player];
	["SERVER",[player,_house],"s_house_buy",false,false]call network_MPExec;
}else{
	systemchat format ["%1, you need %2$ to buy this house",name player,_price];
};