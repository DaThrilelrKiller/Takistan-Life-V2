
_action = _this select 0;

if (_action == "use")then {
	
	for "_i" from 1 to 100 step 1 do {
		if (animationState player != "ainvpknlmstpslaywrfldnon_medic")then {
			player playMove "ainvpknlmstpslaywrfldnon_medic";
		};
		[format['Planting Suitcase Bomb... %1%2',_i,"%"],'data\images\items\case',true]call tag_notify;
		uiSleep 0.1;
		if(!alive player)exitWith {};
	};
	if (!alive player)exitWith {};

	_object = "Suitcase" createVehicle getPos player;

	_item = dtk_bomb_cases call bis_selectRandom;
	_name = _item call config_displayname;
	_image = [_item]call config_image;
	_amount = round (random 15) + 1;

	_object call core_setVarName;	
	["ALL",[_object,['','noscript.sqf',format["['',%1]call bomb_Suitcase",_object],25,false,true,'LeanRight',format ['player distance _target < 5 && {!([_target,"Pick up (%3) %1 (E)","%2"]call tag_show)}',_name,_image,_amount]]],"network_addAction",false,true]call network_MPExec;
}else{
	if(primaryweapon player == "" and secondaryweapon player == "")then{player playmove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"}else{player playmove "AinvPknlMstpSlayWrflDnon"};
	sleep 1;
	createVehicle ["Bo_GBU12_LGB", (getPosATL (_this select 1)), [], 0, "NONE"];
	deleteVehicle (_this select 1);
};
