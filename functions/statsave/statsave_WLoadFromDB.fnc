private ["_DBSection","_whitelistUID","_MainArray1","_Client","_WhitelisttempArray","_WhiteListToClienttemp","_c","_Array","_side","_Whitelist","_type","_loadArray","_array1","_varName","_varValue"];

_side = _this select 1;
_whitelistUID = getPlayerUID(_this select 0);
_Client = (_this select 0);

switch (_side) do
{
    case "CIV": 
	{
		_MainArray1 =
		[
	        ["Main", "adminlevel4"],
			["Main", "adminlevel3"],
			["Main", "adminlevel2"],
			["Main", "SwagDevs"],
			[_side, "PMC_id"],
			[_side, "PMCDivisions_id"],
			[_side, "PMCCommand_id"]
		];
    };

    case "PD": 
	{
		_MainArray1 =
		[
			["Main", "adminlevel4"],
			["Main", "adminlevel3"],
			["Main", "adminlevel2"],
			["Main", "SwagDevs"]
		];
	};
    
    case "UN": 
	{
		_MainArray1 =
		[
			["Main", "adminlevel4"],
			["Main", "adminlevel3"],
			["Main", "adminlevel2"],
			["Main", "SwagDevs"]
		];
	};
};

_WhitelisttempArray = [];
_WhiteListToClienttemp = [];

{
	_Array = _x;
	_DBSection = _Array select 0;
	_Whitelist = _Array select 1;
	_loadArray = ['Whitelist', _DBSection, _Whitelist,[]];
	_WhitelisttempArray set [count _WhitelisttempArray,[_Whitelist,_loadArray call S_statsave_read]];
	true
}count _MainArray1;

{
	_array1 = _x;
	_varName = _array1 select 0;
	_varValue = _array1 select 1;
	if (_whitelistUID in _varValue)then 
	{
		_WhiteListToClienttemp set [count _WhiteListToClienttemp,[_varName,'true']];
	}
	else 
	{
		_WhiteListToClienttemp set [count _WhiteListToClienttemp,[_varName,'false']];
	};
	true
}count _WhitelisttempArray;

[_Client,[_WhiteListToClienttemp,_whitelistUID],"statsave_loadwhitelist",false,false]call network_MPExec;
