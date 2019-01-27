_gang = call gang_getMembers;

if ("South Goverment" in (gangs getVariable ["Names",[]]))exitWith {
	systemchat "Southern Goverment alraedy exsist, sorry";
};

if (count _gang > 4)then {
	if !([player,"geld",-100000] call storage_add)exitWith {
		systemChat  "You need 100,000$ to start a goverment";
	};
	dtk_notAllowed = [];
	["South Goverment"]call gang_rename;
	dtk_notAllowed = [ "South Goverment", "North Goverment" ];
	
}else{
	systemchat "You need to be in a gang with 5 or more people to start a goverment";
};