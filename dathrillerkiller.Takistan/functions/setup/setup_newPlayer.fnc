_player = player;
waitUntil {_player != player};

player addEventHandler ["killed", { _this spawn setup_killed;}];
player addEventHandler ["handleDamage", { _this spawn setup_handleDamage;}];
player addEventHandler ["fired", { _this spawn setup_fired;}];

[]spawn setup_newPlayer;