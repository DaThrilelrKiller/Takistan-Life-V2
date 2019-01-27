if (dtk_server)exitWith {
		[300,tag_motd]call core_AddLoop;
};

10 cutRsc ["tag", "PLAIN"];

{
	if (player != _x)then { 
		_x addaction ["","noscript.sqf",format['%1 call core_interact;',_x],25,false,true,"LeanRight","player distance _target < 5 && {!([_target,'Interact (E)','']call tag_show)}"];
	};
}Foreach playableunits;