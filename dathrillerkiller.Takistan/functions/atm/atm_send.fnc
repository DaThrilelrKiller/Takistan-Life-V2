﻿_action = _this select 0;

switch(_action)do
{
	case "recive":
	{
		_from = _this select 1;
		_amount = _this select 2;
		
		if (player != _from)then
		{
			dtk_bank = dtk_bank + _amount;
			systemchat format ["You recived %1 from %2",_amount,name _from];
		}else{
			dtk_bank = dtk_bank - _amount;
		};
	};
	default 
	{
		_amount = ctrlText 1400;
		if !(_amount call storage_isNumber)exitWith {systemchat format ["%1 is not a valid number",_amount];};
		_amount = parseNumber _amount;
	
	
		if (_amount <= dtk_bank)then 
		{
			_to = call compile lbData [2100, lbCurSel 2100];
			_to = _to select 1;
			if (_to == player)exitWith {systemchat "you can not send money to yourself sorry"};
			[_to,['recive',player,_amount],'atm_send',false,true]call network_MPExec;
			closeDialog 0;
		}else{
			systemchat format ["You do not have %1$ in your bank acount",_amount];
		};
	};
};