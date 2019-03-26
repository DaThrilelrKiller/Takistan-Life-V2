if (dtk_server)exitWith {};
if !(dtk_civ)exitWith {};

{
	_x addaction ["","noscript.sqf",format["[%1]spawn bank_rob;",_x], 25, false, true, "LeanRight","player distance _target < 5 && {isNil{_target getVariable 'cracking'}} && {isNil{_target getVariable 'cracked'}} && {bank_progress == -1} && {!([_target,'Rob Safe (E)','data\images\items\lockpick.paa']call tag_show)}"];
	_x addaction ["","noscript.sqf",format["[%1]spawn bank_take;",_x], 25, false, true, "LeanRight","player distance _target < 5 && {!isNil{_target getVariable 'cracked'}} && {bank_progress == -1} && {!([_target,'Take Money (E)','data\images\items\money.paa']call tag_show)}"];
}ForEach bank_safes;