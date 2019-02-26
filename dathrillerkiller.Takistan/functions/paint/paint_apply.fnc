if ([player,"geld", -5000] call storage_add)then {
	systemchat "Paint Applied for $5,00";
	if ([paint_unit,["Man"]]call core_isKindOf)then {
		[paint_type] call clothing_switch;
		player setVariable ["textures",dtk_paint];
		player call clothing_texture;
	}else{
		paint_unit setVariable ["textures",dtk_paint];
		[typeOf paint_unit,paint_unit]call vehicle_texture;
	};
	processInitCommands;
	
}else{
	systemchat "You do not have enough money to paint your vehicle";
};