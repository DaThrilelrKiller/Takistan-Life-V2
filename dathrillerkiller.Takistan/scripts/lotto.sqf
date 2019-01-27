_lotto     = (_this  select 0) call Other_GetLottoArray;
_lottocost = (_lotto select 2);
_lottowin  = (_lotto select 3);
_winner    = random 5;
_geld      = [player,"geld"] call storage_amount;
_player = player;

if (playing_lotto == 1 ) exitWith {systemChat  "You still need to scratch the one you have before buying another!";};
if (_geld < _lottocost) exitWith {systemChat  "You need more money to play!";};
[player,'geld',-_lottocost] call storage_add;

systemChat  "Scratching your card...";
playsound "scratch";
playing_lotto = 1; 
sleep 10; 

if (_winner > 1) exitWith {systemChat  format ["You lost on the ticket - (%1)",_lotto select 1];playing_lotto = 0;};

	
["ALL",[_player,"slotwin",7],"network_say3d",false,true]call network_MPExec;
[player,'geld',_lottowin] call storage_add;

systemChat  format ["You won: $%1 on the (%2)!", _lottowin, _lotto select 1];
playing_lotto = 0;

