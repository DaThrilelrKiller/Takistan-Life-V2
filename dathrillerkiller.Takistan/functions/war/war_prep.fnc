hintSilent "War will start in 20 minutes! Head to your government complex to participate or follow UN instructions.";
_north = ["US_Soldier_EP1","US_Soldier_EP1","US_Soldier_Medic_AllWeaponSlots_EP1"];
_south = ["TK_Soldier_EP1","TK_Soldier_EP1","TK_Soldier_Medic_EP1"];

_clothing = [_south,_north]select (dtk_nation == "North");
_clothing = _clothing call bis_selectRandom;

if (dtk_civ && {!((player call gang_name) == "South Goverment")})then {
	createDialog "ja_nein";
	ctrlSetText [1,"The South declared war against the North! 20 minutes prepartion time is given. If you wish to defend your support, move to your gov complex for equipment. DO YOU WISH TO SUPPORT YOUR COUNTRY?"];
	waitUntil {!isNil "dtk_answer"};
	
	if (dtk_answer)then {
		[_clothing] call clothing_switch;
		[]spawn war_capture;
	}else{
		hintSilent "You decided to stay out of the war. You may seek UNs protection you go your own way (on your own risk)";
	};
};

if (dtk_civ && {((player call gang_name) == "South Goverment")})then {
	[_clothing] call clothing_switch;
	[]spawn war_capture;
};