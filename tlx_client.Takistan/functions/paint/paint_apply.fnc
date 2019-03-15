private ["_cost"];

if ([paint_unit,["Man"]]call core_isKindOf)then {
	_cost = ((lbData[150,lbCurSel 150]) call config_buycost);
	if ([player,"geld",-_cost] call storage_add)then {
		[paint_type] call clothing_switch;
		player setVariable ["textures",dtk_paint];
		player call clothing_texture;
		closeDialog 0;
	}else{
		systemchat format["You need %1 to buy a this skin",[_cost] call Main_FormatMoney];
	};
}else{
	if ([player,"geld", -5000] call storage_add)then {
		paint_unit setVariable ["textures",dtk_paint];
		[typeOf paint_unit,paint_unit]call vehicle_texture;
		closeDialog 0;
	}else{
		systemchat "You do not have enough money to paint your vehicle";
	};
};
processInitCommands;