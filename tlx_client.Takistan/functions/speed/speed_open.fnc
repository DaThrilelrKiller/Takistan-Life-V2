
dtk_speed = !dtk_speed;

if (dtk_speed)then {
	88 cutRsc ["radar_dialog","PLAIN"];
	speed_ui = uiNameSpace getVariable "radar_dialog";

	[]spawn speed_patrol;
	[]spawn speed_display;
}else{
	88 cutText ["", "PLAIN"];
};
