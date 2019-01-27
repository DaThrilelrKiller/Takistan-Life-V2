player addEventHandler ["handleDamage", {_this call events_sethit;}];

/*On ESC*/
[]spawn events_OnPause;
