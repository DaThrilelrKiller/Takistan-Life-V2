if (dtk_client)then {
	{
		if (!isNil "_x")then {
			_x addaction ["","noscript.sqf","call quest_get;", 25, false, true, "LeanRight","v_questtime == 0 && {!([_target,'Get Quest(E)','data\images\misc\bank.paa']call tag_show)}"];
			[("quest_" + str _ForEachIndex),getPos _x,nil,nil,"ColorOrange","mil_box",nil,format ["Quest Retrieval %1",_ForEachIndex]]call core_createMarkerLocal;
		};
	}ForEach dtk_quest;
};