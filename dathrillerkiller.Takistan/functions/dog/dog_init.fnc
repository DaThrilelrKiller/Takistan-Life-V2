if (dtk_server)exitWith {};
[player,[format ["Buy K9 ($%1)", dog_cost],"noscript.sqf", 'call dog_buy',1,false,true,"",'player distance dogspawn <= 5 and (K9_id)']]call action_add;
[player,["Dog Control","noscript.sqf", 'ar_doggy = true', 1, false, true, "", "!ar_doggy and alive (player getVariable 'CLAY_DogUnit')"]]call action_add;
[player,["Exit Dog Control","noscript.sqf", 'ar_doggy = false', 1, false, true, "", "ar_doggy"]]call action_add;
[player,["Follow","noscript.sqf", '[1] execVM "\CLAY_Dogs\handler\dogMove.sqf"', 1, false, true, "", "ar_doggy"]]call action_add;
[player,["Wait","noscript.sqf", '[2] execVM "\CLAY_Dogs\handler\dogMove.sqf"', 1, false, true, "", "ar_doggy"]]call action_add;
[player,["Move To Pos","noscript.sqf", '[3] execVM "\CLAY_Dogs\handler\dogMove.sqf"', 1, false, true, "", "ar_doggy"]]call action_add;
[player,[" ","noscript.sqf", '', 1, false, true, "", "ar_doggy"]]call action_add;
[player,["Attack Target","noscript.sqf", '[cursorTarget]spawn dog_attack', 1, false, true, "", "ar_doggy"]]call action_add;
[player,["Drug Search","noscript.sqf", '[cursorTarget]spawn dog_search', 1, false, true, "", "ar_doggy"]]call action_add;
[player,["Board Car","noscript.sqf", '[cursorTarget]spawn dog_board', 1, false, true, "", "ar_doggy"]]call action_add;
[player,["Dismount","noscript.sqf", '[]spawn dog_dismount', 1, false, true, "", "ar_doggy"]]call action_add;


