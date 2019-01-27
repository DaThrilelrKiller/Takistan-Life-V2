if (dtk_server)exitWith {};
player addMPEventHandler ["MPKilled",{_this call killfeed_display;}];