
{
	if (player distance getMarkerPos _x < 70)then {
		dtk_border = dtk_border + 1;
	};
	if (dtk_border >= 120) then {
		dtk_border = 0;
		dtk_bank = dtk_bank + 20000;
		systemchat format["You've received %1 for manning a border checkpoint",[20000]call Main_FormatMoney];
	};
}forEAch dtk_control;