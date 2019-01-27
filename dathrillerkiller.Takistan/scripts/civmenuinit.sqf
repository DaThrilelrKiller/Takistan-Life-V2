_civmenuciv  = civmenuciv;
_civmenu_civ = civmenu_civ; 
_art         = _this select 0;

if ((player distance _civmenuciv >= 25) or (!(alive _civmenuciv))) exitWith 
{
	systemChat  format[localize "STRS_civmenu_distance"];
};

/*check player licenses */
if (_art == 5) exitWith 
{
	[_civmenuciv]call licenses_check
};

/* seach players storage,licenses,weapons... */
if (_art == 6) exitWith 

{
	if(!(_civmenuciv call ISSE_IsVictim))exitwith{hint localize "STRS_inventory_checknohands"};		
	[_civmenuciv] call storage_seach;
};

/* civilain menu basicly used to rob people and drop all their items */
if (_art == 20) exitWith 
{
	if(!(_civmenuciv call ISSE_IsVictim))exitwith{hint localize "STRS_inventory_checknohands"};
	[_civmenuciv]call storage_trunk;
};

/* Seach for controban and remove it */
if (_art == 1) exitWith 
{
	drugsvalue = 0;
	_remove = [_civmenuciv,"drug"]call storage_RemoveKind;
	
	if ((_remove select 0) > 0)then
	{
		drugsvalue = (_remove select 1);
		["ALL",[_civmenuciv,drugsvalue],{titletext [format[localize "STRS_civmenucheck_haddrugs", (_this select 0), (_this select 1)], "plain"];},false,false]call network_MPExec;
		systemChat  format[localize "STRS_civmenu_hasdrugs", _civmenuciv,  ceil(drugsvalue/25000), (drugsvalue/2)];
		[_civmenuciv,"Trafficking Drugs",drugsvalue]call cdb_addWarrant;
	}
	else
	{
	systemchat localize "STRS_civmenu_hasnodrugs";
	};
};

if (_art == 2) exitWith 

{

if(!(_civmenuciv call ISSE_IsVictim))exitwith{hint localize "STRS_inventory_checknohands"};

(format ["if (player == %1) then {[""disarm""] execVM ""scripts\civmenu.sqf"";};", _civmenuciv]) call network_broadcast;

systemChat  format [localize "STRS_civmenu_disarm", _civmenu_civ];

};

if (_art == 3) exitWith 

{

_dauer = round(_this select 1);
format ["if (player == %1) then {[""arrest"", %2, %3] execVM ""scripts\civmenu.sqf"";};", _civmenu_civ, _dauer, player] call network_broadcast;

systemChat  format[localize "STRS_civmenu_arrested", _civmenu_civ];

};

if (_art == 4) exitWith 

{	

_strafe = _this select 1;
if (!(_strafe call string_isInteger)) exitWith {systemChat  localize "STRS_inv_no_valid_number";};
_strafe = _strafe call string_toInt;  if (_strafe <= 0) exitWith {};
(format ["if (player == %1) then {[""ticket"", %2, %3] execVM ""scripts\civmenu.sqf"";}; systemChat format[localize ""STRS_civmenu_ticket_globalchat"", name %1, %2, name %3];", _civmenuciv, (_strafe call string_intToString), player]) call network_broadcast;

};
if ((_art == 7) and (player distance maxFlag <= 40)) exitWith 

{

_dauer = round(_this select 1);
format ["if (player == %1) then {[""arrestMax"", %2, %3] execVM ""scripts\civmenu.sqf"";};", _civmenu_civ, _dauer, player] call network_broadcast;

systemChat  format[localize "STRS_civmenu_arrested", _civmenu_civ];

};


