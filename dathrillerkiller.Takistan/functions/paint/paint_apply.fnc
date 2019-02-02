if ([player,"geld", -5000] call storage_add)then {
	paint_unit setVehicleInit  format ["this setObjectTexture [%1,'%2'];",paint_selection,paint_color];
	processInitCommands;
	systemchat "Paint Applied for $5,00";
}else{
	systemchat "You do not have enough money to paint your vehicle";
};