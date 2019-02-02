private["_checkTeam", "_zone"];
_zonestOwn = _this select 0;
_chkTeamOwn = _this select 1;
_zonePole = _this select 2;
_zoneFlag = _this select 3;

_data = call {
	if (_chkTeamOwn == civilian)exitWith {
		["ColorYellow","\ca\ca_e\data\flag_white_co.paa","Empty"]
	};
	if (_chkTeamOwn == resistance)exitWith {
		["ColorBlack","\ca\ca_e\data\flag_tkm_co.paa","Faction_TKM_EP1"]
	};
	if (_chkTeamOwn == east)exitWith {
		["ColorRed","\ca\data\Flag_chdkz_co.paa","Faction_INS"]
	};
	if (_chkTeamOwn == west)exitWith {
		["ColorBlue","\ca\ca_e\data\flag_nato_co.paa","Faction_NATO_EP1"]
	};
};

_zonestOwn setMarkerColor (_data select 0);
_zoneFlag setMarkerType (_data select 2);
["SERVER",[_zonePole,(_data select 1)],"core_setFlag",false,false]call network_MPExec;