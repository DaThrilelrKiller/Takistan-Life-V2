
_object = _this select 0;
_nation = if (_object == NorthGov)then {"Southern Goverment"}else{"Northern Goverment"};

["true","War Ended",format ["%1 has one the war, better luck next time",_nation]]call Main_Notification;
dtk_war_stared = false;

[dtk_clothing]call clothing_switch;