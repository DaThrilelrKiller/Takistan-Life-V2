﻿[]spawn core_loop;

if (dtk_client)then {
	[300,core_paycheck]call core_AddLoop;
	if (dtk_cop or dtk_opf)then {
		[0.5,core_control]call core_AddLoop;
	};

	["Surrender","ku",["3",false,false,false],core_surender]call keypress_add;
	["Stun Player","kd",["F",true,false,false],core_hit]call keypress_add;
	["Ear Plugs","kd",["6",false,false,false],core_earplugs]call keypress_add;
	
	["South_gov_building",getPos South_gov_building,nil,nil,"ColorBlack","mil_box",nil,"Sothern Goverment Complex"]call core_createMarkerLocal;
	["North_gov",getPos North_gov,nil,nil,"ColorBlack","mil_box",nil,"Northern Goverment Complex"]call core_createMarkerLocal;
	
	player disableConversation true
};

{
	if (isNil _x)then {
		call compile format ["%1 = objNull",_x];
	};
}foreach call core_units;
