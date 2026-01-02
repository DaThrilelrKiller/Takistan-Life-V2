if (dtk_server)exitWith {
		[300,tag_motd]call core_AddLoop;
};

10 cutRsc ["tag", "PLAIN"];

{
	if (player != _x && {simulationEnabled _x})then { 
	
		
		
		(driver (vehicle _x)) addaction ["","noscript.sqf",format['%1 call core_interact;',_x],25,false,true,"LeanRight",format["player distance _target < 5 && {!([_target,'Interact (E)','%1']call tag_show)}",player getVariable ["dtk_tag",tag_default]]];
	};
}Foreach allMissionObjects "Man";