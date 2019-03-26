private ["_Deadplayer"];

if (count _this == 1)then {
	_Deadplayer = _this select 0;
	['ALL',_Deadplayer,{_this allowDamage true;},false,true]call network_MPExec;
	['ALL',_Deadplayer,{_this setUnconscious false;},false,true]call network_MPExec;
	_Deadplayer setUnconscious false;
	_Deadplayer allowDamage true;

	player attachTo [_Deadplayer, [-0.666, 0.222, 0]];
	player setDir 90;

	player playMoveNow "AinvPknlMstpSnonWrflDnon_medic";
	sleep 5;
	player playMove format ["AinvPknlMstpSnonWrflDnon_medic%1", floor random 6];
	sleep 5;
	player playMove format ["AinvPknlMstpSnonWrflDnon_medic%1", floor random 6];
	sleep 5;
	player playMoveNow "AinvPknlMstpSnonWrflDnon_medicEnd";

	detach _Deadplayer;
	detach player;

	["ALL",[_Deadplayer,"amovppnemsprslowwrfldf"],"network_SwitchMove",false,true]call network_MPExec;
	["ALL",[_Deadplayer,player],"medical_remove",false,false]call network_MPExec;
	[_Deadplayer,[_Deadplayer,player],"medical_revive",false,false]call network_MPExec;
	deleteMarker ("medical_" + name _Deadplayer);
}else{
	[]call core_close;
	call medical_terminate;
	format ["%1 you where revived by %2",name player,name (_this select 1)]call chat_system;
	player setUnconscious false;

};