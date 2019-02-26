private ["_return"];

_return = _this getVariable "dtk_side";

_return = if (isNil "_return")then {
	if ((side _this) == civilian)exitWith {"CIV"};
	if ((side _this) == resistance)exitWith {"INS"};
	if ((side _this) == east)exitWith {"OPF"};
	if ((side _this) == west)exitWith {"PD"};
	if (faction _this in (core_factions select 0))exitWith {"PD"};
	if (faction _this in (core_factions select 1))exitWith {"OPF"};
	if (faction _this in (core_factions select 2))exitWith {"INS"};
	if (faction _this in (core_factions select 3))exitWith {"CIV"};
	"Unknown"
}else{
	_return
};

_return