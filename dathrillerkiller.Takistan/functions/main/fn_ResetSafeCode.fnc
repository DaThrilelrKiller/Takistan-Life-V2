private ["_randomCodes","_randomCodeSelected"];

safeCodeSet = 0;
_randomCodeGen		= floor(random 100);
safeCodeSet = str _randomCodeGen;
publicVariable "safeCodeSet";