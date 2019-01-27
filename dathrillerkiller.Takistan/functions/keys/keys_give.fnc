private ["_Veh","_play","_VclVar","_UID"];
_veh = call compile lbData [1, (lbCurSel 1)];

_play = call compile INV_InventarGiveReceiver;

if (_play == player)exitWith {systemchat "You Cannot Give Keys To Yourself!"};
if (_play distance player > 20)exitWith {systemchat format ["%1 is to far away to give keys",name _x];};

_VclVar = (_Veh getVariable "DTK_OwnerUID");
_UID = (_VclVar select 0);
_UID set[count _UID,(getPlayerUID _play)];
_VclVar set[0,_UID]; 
_Veh setVariable ["DTK_OwnerUID",_VclVar, true];



[_play,["true",format ["you received a key from %2 %1", name player, player],3],"network_chat",false,false]call network_MPExec;
