﻿
[player,["Remove Stop Sign","noscript.sqf",'if ([player,"glt_roadsign_octagon",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "glt_roadsign_octagon") && {player distance cursorTarget < 4}']]call action_add;
[player,["Remove Concrete Barrier Short","noscript.sqf",'if ([player,"il_barrier",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "il_barrier") && {player distance cursorTarget < 4}']]call action_add;
[player,["Remove Searchlight","noscript.sqf",'if ([player,"SearchLight_UN_EP1",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "SearchLight_UN_EP1") && {player distance cursorTarget < 4}']]call action_add;
[player,["Remove Roadblock","noscript.sqf",'if ([player,"roadblock",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "Land_CncBlock_Stripes") && {player distance cursorTarget < 4}']]call action_add;
[player,["Remove Bar Gate","noscript.sqf",'if ([player,"Bargate",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "ZavoraAnim") && {player distance cursorTarget < 4}']]call action_add;
[player,["Remove Road Cone","noscript.sqf",'if ([player,"roadcone",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "Land_coneLight") && {player distance cursorTarget < 4}']]call action_add;
[player,["Remove Bunker (Small)","noscript.sqf",'if ([player,"bunkersmall",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "Land_fortified_nest_small") && {player distance cursorTarget < 4}']]call action_add;
[player,["Remove Danger Sign","noscript.sqf",'if ([player,"danger",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "Sign_Danger") && {player distance cursorTarget < 4}']]call action_add;
[player,["Remove Ladder","noscript.sqf",'if ([player,"land_ladder_half",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "land_ladder_half") && {player distance cursorTarget < 4}']]call action_add;
[player,["Remove Road Barrier","noscript.sqf",'if ([player,"Roadbarrier_long",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "RoadBarrier_long") && {player distance cursorTarget < 4}']]call action_add;
[player,["Remove Road Barrier","noscript.sqf",'if ([player,"RoadBarrier_light",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "RoadBarrier_light") && {player distance cursorTarget < 4}']]call action_add;
[player,["Remove Caution Tape","noscript.sqf",'if ([player,"10mTape",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "10mTape") && {player distance cursorTarget < 4}']]call action_add;
[player,["Remove Body Bag","noscript.sqf",'[player,"geld",1000] call storage_add; deletevehicle cursorTarget',1,true,true,"",'(typeOf cursorTarget == "body") && {player distance cursorTarget < 4}']]call action_add;
[player,["Open/Close Gate","noscript.sqf",'_gate = (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0); if(_gate animationPhase "bargate" == 1)then{_gate animate ["bargate", 0]}else{_gate animate ["bargate", 1]};',1,true,true,"",'player distance (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0) < 7 ']]call action_add;


[player,["Role Vehicle Over","noscript.sqf",'[]spawn vehicle_unflip;',1,false,true,"",'_vcl = cursorTarget;player distance _vcl < 5 and [player,_vcl]call keys_has']]call action_add;
[player,["Repair Vehicle","noscript.sqf",'[cursorTarget]call Other_repairvehicle;',1,true,true,"",'_vcl = cursorTarget; [_vcl,["Air", "Ship", "LandVehicle"]]call core_isKindOf && {player distance _vcl < 10}']]call action_add;
[player,["Impound Vehicle","noscript.sqf",'[cursorTarget]call impound_add;',1,true,true,"",'_vcl = cursorTarget; _var = _vcl getVariable "DTK_OwnerUID";[_vcl,["Air", "Ship", "LandVehicle"]]call core_isKindOf and player distance _vcl < 5 and (!isNil "_var")']]call action_add;
[player,["Extract Victim","noscript.sqf",'cursorTarget spawn Other_pullout;',1,true,true,"",'_vcl = cursorTarget;[_vcl,["Air", "Ship", "LandVehicle"]]call core_isKindOf and player distance _vcl < 5 and count (crew _vcl) > 0']]call action_add;
[player,["Impound Lot","noscript.sqf",'[]call impound_open;',1,false,true,"","player distance newimpoundlot <= 5"]]call action_add;
[player,["Sign-Up For Debit Card","scripts\debitcardsignup.sqf",["mainbank"],1,false,true,"","player distance mainbank <= 15 and (!SigningUpForDebitCard)"]]call action_add;
[player,["Crime Log","scripts\maindialogs.sqf",["coplog"],1,false,true,"","player distance rathaus <= 3"]]call action_add;
[player,[format ["Pay Bail", slave_cost],"scripts\maindialogs.sqf", ["bail"],1,false,true,"","player distance bailflag <= 3"]]call action_add;
[player,["Remove Blindfold","FUNCTIONS\ITEMS\blindfold.sqf",[],1,false,true,"","isPlayer cursorTarget and cursorTarget getVariable 'blindfolded'"]]call action_add;

[player,["Get Patrol Mission","scripts\coppatrol.sqf",["start"],1,false,true,"","player distance atm5 <= 4 and !pmissionactive and !patrolwaittime"]]call action_add;
[player,["Cancel My Patrol Mission","scripts\coppatrol.sqf",["end"],1,false,true,"","pmissionactive and player distance atm5 <= 4"]]call action_add;
