_machine = _this select 0;
_winner = floor(random 500);

if(_machine == "slotmachine" && {[player,"geld",-2000] call storage_add}) exitWith {

	if ((_winner >= 465) && !(_winner <= 7)) then {
		hintSilent "Congratulations you have won the jackpot of $10000";
		[player,'geld', 10000] call storage_add;
	};
	if  ((_winner < 465) && (_winner > 7)) then {
		hintSilent "Unlucky you have not won this time please try again";
	};
	if ((_winner <= 7) && (_winner > 2)) then {
		hintSilent "Congratulations you have won the Super Jackpot of $50000";
		[player,'geld', 50000] call storage_add;
	};
	if (_winner <= 2) then {
		hintSilent "Congratulations you have won the Mega Jackpot of $100000";
		["ALL",name player,{server globalchat format["%1 has won the Mega Jackpot of $100000!!",_this];},false,true]call network_MPExec;
		[player,'geld', 100000] call storage_add;
	};
};

if(_machine == "slotmachineb" && {[player,"geld",-100] call storage_add}) exitWith {

	if ((_winner >= 465) && !(_winner <= 7)) then {
		hintSilent "Congratulations you have won the jackpot of $750";
		[player,'geld', 750] call storage_add;
	};
	if  ((_winner < 465) && (_winner > 7)) then {
		hintSilent "Unlucky you have not won this time please try again";
	};
	if ((_winner <= 7) && (_winner > 2)) then {
		hintSilent "Congratulations you have won the Super Jackpot of $5000";
		[player,'geld',5000] call storage_add;
	};
	if (_winner <= 2) then {
		hintSilent "Congratulations you have won the Mega Jackpot of $10000";
		["ALL",name player,{server globalchat format["%1 has won the Mega Jackpot of $10000!!",_this];},false,true]call network_MPExec;
		[player,'geld', 10000] call storage_add;
	};
};
