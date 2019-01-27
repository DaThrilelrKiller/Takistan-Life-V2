_this = _this select 3;
_art  = _this select 0;
_safe = _this select 1;
_safedoor = _this select 2;
_west = playersNumber west;

if (_west < 1) exitwith {systemChat  "There Must Be At Least 1 ECPD Officer Online To Rob The Bank!";};

if (_art == "ausrauben") then 

{	

call compile format["local_cash = robpool%1", _safe];

if(local_cash < 60000)exitwith{player sideChat "Make Sure There Is At Least 60k In The Bank Before Robbing It!"};

if(!robenable)exitwith{systemChat  "You Are Already Robbing The Bank!"};
if(!(call INV_isArmed))exitWith{systemChat  localize "STRS_bank_rob_noweapon";format ['systemChat "Someone Has Just Tryed To Rob The Bank Without A Weapon!";'] call network_broadcast;
};
robenable = false;
call compile format["robpool%1 = 0;publicvariable ""robpool%1"";", _safe];											
systemChat  format[localize "STRS_bank_rob_info", (robb_money call string_intToString)];
[] call Main_ResetSafeCode;

format['[0,1,2,["opfer", %1, %2]] execVM "scripts\bankrob.sqf";', _safe, local_cash] call network_broadcast;

if (_safedoor == "Safe1") then 
{
	Safe1 animate ["Safe_Door",1];
	sleep 65;
	Safe1 animate ["Safe_Door",0];
	Safecracked1 = FALSE;
};

if (alive player) then 

	{
	[player,"geld",local_cash] call storage_add;
	systemChat  format[localize "STRS_bank_rob_success"];
	[local_cash] spawn Bank_Rob_End_Script;
		
	};

stolencash = stolencash + local_cash;
('if((dtk_civ) and (player distance mainbank < 50)) then {local_useBankPossible = false;};') call network_broadcast;
robenable = true;
rblock = rblock + ((local_cash/50000)*60);
_rblock = rblock;

sleep 300;

if(_rblock != rblock)exitwith{};

for [{rblock}, {rblock > -1}, {rblock=rblock-1}] do {sleep 1;};												

('local_useBankPossible = true') call network_broadcast;
stolencash = 0;
rblock	   = 0;


};

if (_art == "robstart") then 
{ 
	titleText [localize "STRS_bank_rob_titlemsg", "plain"];
	mainbank say3D "Bank_alarm";
	copbase1 say3D "Bank_alarm";
	copsheriffbank say3D "Bank_alarm";
};

if (_art == "robwrongcode") then 
{ 
	mainbank say3D "Bank_alarm";
	copbase1 say3D "Bank_alarm";
	copsheriffbank say3D "Bank_alarm";
};

if (_art == "roberror") then 
{ 
	mainbank say3D "Bank_alarm";
	copbase1 say3D "Bank_alarm";
	copsheriffbank say3D "Bank_alarm";
};


if (_art == "opfer") then 
{

	_robpool = _this select 2;														
	sleep 8;
	systemChat format["The Thief Stole $%1!", _robpool];
	sleep 4;
	
	_percentlost = _robpool/2000000;
	if(_percentlost > Maxbankrobpercentlost)then{_percentlost == Maxbankrobpercentlost};

	_verlust = round(dtk_bank*_percentlost); 
			
	if ((dtk_bank <= _verlust) and (dtk_bank >= 1) and (([player,"bankversicherung"] call storage_amount == 0)) then 

	{
																				
	dtk_bank = 0;
	systemChat  localize "STRS_bank_rob_allmoneylost";

	};
					
	if ((dtk_bank >  _verlust) and (([player,"bankversicherung"] call storage_amount) == 0)) then 

	{ 
													
	dtk_bank = dtk_bank - _verlust;
	systemChat  format[localize "STRS_bank_rob_somemoneylost", (_verlust call string_intToString), (dtk_bank call string_intToString)];

	};
															
	if (([player,"bankversicherung"] call storage_amount) > 0) then 

	{		

	systemChat  localize "STRS_bank_rob_lostnomoney";
	[player,"bankversicherung",-1] call storage_add;

	};

};

