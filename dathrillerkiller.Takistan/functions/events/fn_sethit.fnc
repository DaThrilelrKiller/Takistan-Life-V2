﻿if(!alive player)exitwith{};

private ["_vehicle","_selection","_damage","_shooter","_ammo"];
_vehicle	= _this select 0;
_selection	= _this select 1;
_damage		= _this select 2;
_shooter	= _this select 3;
_ammo		= _this select 4;

if(player == _vehicle && {_ammo in ["B_12Gauge_74Slug","F_40mm_White","B_9x19_SD","15Rnd_9x19_M9SD"]}) exitwith {["hit", _shooter, _selection, _damage] execVM "scripts\stun.sqf";};
player SetHit [_selection, _damage];
if(_selection == "" && {_damage >= 1} && {!isnull _shooter})then{player setdamage 1;};


false;