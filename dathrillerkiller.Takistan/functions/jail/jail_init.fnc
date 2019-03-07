if (dtk_server)exitWith {};

mine_1 addaction ["","noscript.sqf","call {}", 25, false, true, "LeanRight","player distance _target < 5 && {!([_target,'Pick-axe (E)','data\images\items\pickaxe']call tag_show)}"];
mine_2 addaction ["","noscript.sqf","call {}", 25, false, true, "LeanRight","player distance _target < 5 && {!([_target,'Pick-axe (E)','data\images\items\pickaxe']call tag_show)}"];
mine_3 addaction ["","noscript.sqf","call {}", 25, false, true, "LeanRight","player distance _target < 5 && {!([_target,'Pick-axe (E)','data\images\items\pickaxe']call tag_show)}"];

axe_1 addaction ["","noscript.sqf","call {}", 25, false, true, "LeanRight","player distance _target < 5 && {!([_target,'Use Axe (E)','data\images\items\axe']call tag_show)}"];
axe_2 addaction ["","noscript.sqf","call {}", 25, false, true, "LeanRight","player distance _target < 5 && {!([_target,'Use Axe (E)','data\images\items\axe']call tag_show)}"];
axe_3 addaction ["","noscript.sqf","call {}", 25, false, true, "LeanRight","player distance _target < 5 && {!([_target,'Use Axe (E)','data\images\items\axe']call tag_show)}"];
