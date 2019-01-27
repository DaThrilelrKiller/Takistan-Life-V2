if (dtk_server || !dtk_civ)exitWith {};
southGov addaction ["Declare War","noscript.sqf","[]spawn war_declare", 1, false, true,"","('South Goverment' call gang_rank) == 'Leader'"];
