﻿private ["_hud","_playhud","_vcl","_vclClass","_storweight","_maxweight","_stor","_health"];

_hud = uiNameSpace getVariable "ar_hud";
_playhud = _hud displayCtrl 154;

_hunger = round(dtk_hunger);
_invmoney = [[player,"geld"] call storage_amount] call Main_FormatMoney;
_bankmoney = [(dtk_bank)] call Main_FormatMoney;


_health = damage player;
_health = toArray str _health;
_health set[count _health, 48];
_health set[count _health, 48];
_health = parseNumber toString[_health select 2,_health select 3];
_health = (100 - _health);	

_war = ["WAR ACTIVE","CEASEFIRE"]select peacecomps;
_color = ["#ff0000","#ffff00"]select peacecomps;

_playhud ctrlSetStructuredText parseText format[ "<t align='center'>Hunger: %1 | Health: %2 | Cash: %3 | Bank: %4 | FPS: %5 | <t color='%6'>%7</t></t>" ,_hunger ,_health ,_invmoney ,_bankmoney,round diag_fps,_color,_war];
_playhud ctrlCommit 0;