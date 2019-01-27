
waitUntil {dtk_war_stared};

while {dtk_civ and dtk_war_stared} do {
	_object = if (dtk_nation == "North")then {southGov}else{NorthGov};
	_nation = if (dtk_nation == "North")then {NorthGov}else{southGov};

	/* This captures the enimie base */
	if (player distance _object < 60 && {lifeState player != "UNCONSCIOUS"})then {
		["SERVER",[_object,10,player],"s_war_capture",false,false]call network_MPExec;
		titleText ["Capturing Base...", "PLAIN DOWN", 0.8];
	};
	
	/* This recaptures their own base */
	if (player distance _nation < 60 && {lifeState player != "UNCONSCIOUS"})then {
		["SERVER",[_nation,-10,player],"s_war_capture",false,false]call network_MPExec;
	};
	
	sleep 10;
};