private ["_return"];

_return = _this getVariable "dtk_side";

_return = if (isNil "_return")then {
	if ((side _this) == civilian)exitWith {"CIV"};
	if ((side _this) == resistance)exitWith {"GUER"};
	if ((side _this) == east)exitWith {"EAST"};
	if ((side _this) == west)exitWith {"WEST"};
	if (faction _this in (core_factions select 0))exitWith {"WEST"};
	if (faction _this in (core_factions select 1))exitWith {"EAST"};
	if (faction _this in (core_factions select 2))exitWith {"GUER"};
	if (faction _this in (core_factions select 3))exitWith {"CIV"};
	"Unknown"
}else{
	_return
};

_return