
gate1 addaction ["","noscript.sqf","[gate1,gate2,gate3]call gates_open", 25, false, true, "LeanRight","dtk_cop && {player distance _target < 5} && {!([_target,'Open Gate (E)','data\images\tags\gate']call tag_show)}"];
gate5 addaction ["","noscript.sqf","[gate4,gate5,gate6]call gates_open", 25, false, true, "LeanRight","dtk_cop && {player distance _target < 5} && {!([_target,'Open Gate (E)','data\images\tags\gate']call tag_show)}"];
