	private ["_amount","_cop","_unit","_copplayernumber","_copticket","_geld","_strafe1","_strafe2"];
	_amount = _this select 0;
	_amount = (_amount call string_toInt);
	_cop    = _this select 1;	
	_unit = _this select 2;
	
	if(dtk_server) exitwith {
		if (random 1 < 0.5) then {
			[_cop,format["%1 refused to pay the ticket of %2",name _unit,_amount],{systemchat _this},false,false]call network_MPExec;
		}else{
			if ([_unit,'geld', -(_amount)] call storage_add) then {
				[_cop,format["%1 payed the ticket of %2",name _unit,_amount],{systemchat _this},false,false]call network_MPExec;
			}else {
				[_cop,format["%1 does not have enought money to pay: %2",name _unit,_amount],{systemchat _this},false,false]call network_MPExec;
			};
		};
	};
	
	_copplayernumber = playersNumber west;
	_copticket = round(_amount/_copplayernumber);	
	_geld    = [player,"geld"] call storage_amount;
																	
	createDialog "ja_nein";
	ctrlSetText [1, format["%1 Gave You A Ticket Of $%2. Do You Want To Pay It?", _cop, (_amount call string_intToString)]];
	
	waitUntil{!isNil "dtk_answer"};																					

	if (dtk_answer) then
	{

		if ((_geld + dtk_bank) < _amount) exitwith 
		{
			(format ["systemChat format [localize ""STRS_civmenu_didnotpayticket"", name %2, %3];", _cop, player, (_amount call string_intToString), (_didnotpay call string_intToString)]) call network_broadcast;
		}; 
			
		systemChat  format [localize "STRS_civmenucheck_ticketself", (_amount call string_intToString)];
		(format ["systemChat format [localize ""STRS_civmenu_didpayticket"", name %2, %3];if (dtk_cop) then{systemChat  ""You got $%4 because the %2 paid the ticket."";[""geld"", %4] call INV_AddInvItem;};_boun = (%2 getvariable 'cdb_bounty'); _boun = _boun - %3; if(_boun < 0)then{_boun = 0};
		player setVariable ['cdb_bounty',_boun,true]; ", _cop, player, (_amount call string_intToString), (_copticket call string_intToString)]) call network_broadcast;


		if(_geld > _amount) exitwith {[player,'geld', -(_amount)] call storage_add;};	
		if (dtk_bank > _amount) exitwith {dtk_bank = dtk_bank - _amount;};
													
		if ((_geld + dtk_bank) > _amount) exitwith
		{
			_strafe1 = _geld;
			_strafe2 = _amount - _strafe1;
			[player,'geld', -(_strafe1)] call storage_add;
			dtk_bank = dtk_bank - _strafe2;
		};

	}else{
		(format ["systemChat format [localize ""STRS_civmenu_didpaynothing"", name %2];", _cop, player, (_amount call string_intToString)]) call network_broadcast;
		systemChat  localize "STRS_civmenu_youdidnotpay";	

	};