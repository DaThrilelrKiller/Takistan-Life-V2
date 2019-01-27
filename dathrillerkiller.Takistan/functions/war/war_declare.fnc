createDialog "ja_nein";
ctrlSetText [1, "Do you really wish to declare war?"];

waitUntil {!isNil "dtk_answer"};

if (dtk_answer)then {
	["SERVER",[player],"s_war_declare",true,false]call network_MPExec;
};