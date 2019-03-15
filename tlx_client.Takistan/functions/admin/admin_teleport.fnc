createDialog "admin_teleport";
admin_selected = 1;
[2100, true] call dtk_PlayerListToControl;
call admin_load;

[]spawn {
	onMapSingleClick "(vehicle(call compile lbData [2100, lbCurSel 2100]select 1)) setpos [_pos select 0, _pos select 1, 0];";
	waitUntil {!ctrlVisible 1};
	onMapSingleClick "";
};