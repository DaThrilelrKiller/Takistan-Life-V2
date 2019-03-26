﻿
/*GOV*/
rathaus addAction["Crime Log","scripts\maindialogs.sqf",["coplog"],1,false,true,"","player distance _target <= 3"];
bailflag addAction[format ["Pay Bail", slave_cost],"scripts\maindialogs.sqf", ["bail"],1,false,true,"","player distance _target <= 3"];

/*ITEM PROSCESSING*/
diamond_1 addAction["Process Diamond","scripts\itemprocess.sqf",["diamond rock", "diamond",5],1,false,true,"","player distance _target <= 5"];
methlab addAction["Process Meth","scripts\itemprocess1.sqf",["pharm", "meth", 2],1,false,true,"","player distance _target <= 5"];
South_oil addAction["Process Oil","scripts\itemprocess.sqf",["Oil", "OilBarrel", 2],1,false,true,"","player distance _target <= 5"];
North_oil addAction["Process Oil","scripts\itemprocess.sqf",["Oil", "OilBarrel", 2],1,false,true,"","player distance _target <= 5"];
bakery addAction["Process Wheat","scripts\itemprocess.sqf",["getreide", "Bread", 2],1,false,true,"","player distance _target <= 5"];
bakery addAction["Process Strawberries","scripts\itemprocess.sqf",["straw", "Frozens", 3],1,false,true,"","player distance _target <= 5"];
gangarea1 addAction["Process LSD","scripts\itemprocess.sqf",["Unprocessed_LSD", "lsd", 5],1,false,true,"","player distance _target <= 5"];
gangarea1 addAction["Process Cocaine","scripts\itemprocess.sqf",["Unprocessed_Cocaine", "cocaine", 5],1,false,true,"","player distance _target <= 5"];
gangarea2 addAction["Process LSD","scripts\itemprocess.sqf",["Unprocessed_LSD", "lsd", 5],1,false,true,"","player distance _target <= 5"];
gangarea2 addAction["Process Heroin","scripts\itemprocess.sqf",["Unprocessed_Heroin", "heroin", 5],1,false,true,"","player distance _target <= 5"];
gangarea3 addAction["Process Heroin","scripts\itemprocess.sqf",["Unprocessed_Heroin", "heroin", 5],1,false,true,"","player distance _target <= 5"];
gangarea3 addAction["Process Marijuana","scripts\itemprocess.sqf",["Unprocessed_Marijuana", "marijuana", 5],1,false,true,"","player distance _target <= 5"];

[player,["Food And Candy","noscript.sqf",'[ (bailflag call shops_index)]call shops_openshop; ',1,false,true,"",'player distance (nearestobjects [getpos player, ["ibr_van_BNK"],  10] select 0) < 3']]call action_add;

/*VEHICLE*/
[player,["Role Vehicle Over","noscript.sqf",'[]spawn vehicle_unflip;',1,false,true,"",'_vcl = cursorTarget;player distance _vcl < 5 and [player,_vcl]call keys_has']]call action_add;
[player,["Pull Player Out","noscript.sqf",'cursorTarget spawn Other_pullout;',1,true,true,"",'_vcl =cursorTarget; [_vcl,["Air", "Ship", "LandVehicle"]]call core_isKindOf and player distance _vcl < 5 and count (crew _vcl) > 0 and (call INV_isArmed)']]call action_add;
[player,["Impound Vehicle","noscript.sqf",'[cursorTarget]call impound_add;',1,true,true,"",'_vcl =cursorTarget; [_vcl,["Air", "Ship", "LandVehicle"]]call core_isKindOf and player distance _vcl < 10 and player distance newimpoundlot < 15 ']]call action_add;

/*OTHER*/
[player,["Take Boar Meat","noscript.sqf",'_no = ceil(random 7); if ([player,"boar",_no] call storage_add)then {cursorTarget setvariable ["inuse", 1, true]; player playmove "AinvPknlMstpSlayWrflDnon_medic";sleep 4;waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"}; deletevehicle cursorTarget; systemChat  format["you got %1 boar meat", _no];}',1,true,true,"",'(typeOf cursorTarget == "wildboar") && {player distance cursorTarget < 4} && {isNil {cursorTarget getVariable "inuse"}} && {!alive cursorTarget}']]call action_add;
[player,["Take Cow Meat","noscript.sqf",'_no = ceil(random 2); if ([player,"rawcow",_no] call storage_add)then {cursorTarget setvariable ["inuse", 1, true]; player playmove "AinvPknlMstpSlayWrflDnon_medic";sleep 4;waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"}; deletevehicle cursorTarget; systemChat  format["you got %1 cow meat", _no];}',1,true,true,"",'(typeOf cursorTarget == "cow01") && {player distance cursorTarget < 4} && {isNil {cursorTarget getVariable "inuse"}} && {!alive cursorTarget}']]call action_add;

[player,["Get A Taxi Job","scripts\taxi.sqf", ["getajob_taxi"],1,false,true,"","player distance taxishop <= 5"]]call action_add;
[player,["Finish My Taxi Mission","scripts\taxi.sqf", ["canceljob_taxi"],1,false,true,"","(player distance taxishop <= 5) and workplacejob_taxi_active"]]call action_add;	
[player,["Sign-up For A Debit Card","scripts\debitcardsignup.sqf",["mainbank"],1,false,true,"","player distance mainbank <= 15 and (!SigningUpForDebitCard)"]]call action_add;
[player,["Get Assassination Job","scripts\assassination.sqf",["getajob_assassin"],1,false,true,"","player distance atm12 <= 3"]]call action_add;
[player,["Switch To Assassin Clothes","noscript.sqf",'["TK_INS_Soldier_EP1"] call clothing_switch;',1,true,true,"",'player distance atm12 < 10 and ("assassinlic" call licenses_has)']]call action_add;
[player,["Take Hostage Mission","scripts\hostage.sqf",["getajob_hostage"],1,false,true,"","player distance hostage <= 3"]]call action_add;
[player,["Take Hostage", "noscript.sqf", "[hostage1] join (group player); systemChat  ""Keep the hostage close or you will fail!"";",1,false,true,"","player distance hostage1 < 5"]]call action_add;
[player,[format [localize "STRS_lotto_action"], "noscript.sqf", "createDialog 'lotto';",1,false,true,"","cursorTarget in LottoLocations and player distance cursorTarget <= 2"]]call action_add;
[player,["Remove Blindfold","FUNCTIONS\ITEMS\blindfold.sqf",[],1,false,true,"","isPlayer cursorTarget and cursorTarget getVariable 'blindfolded'"]]call action_add;

[player,["Tow Vehicle","noscript.sqf",'_vcl = (nearestobjects [getpos player, ["MtvrRefuel_DES_EP1"], 10] select 0);["TOW",_vcl] call Other_Towing;',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["MtvrRefuel_DES_EP1"], 10] select 0); player distance _vcl < 10 and _vcl getVariable "towing" == "" and [player,_vcl]call keys_has']]call action_add;
[player,["Release Vehicle","noscript.sqf",'_vcl = (nearestobjects [getpos player, ["MtvrRefuel_DES_EP1"], 10] select 0);["RELEASE",_vcl] call Other_Towing;',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["MtvrRefuel_DES_EP1"], 10] select 0); player distance _vcl < 10 and _vcl getVariable "towing" != "" and [player,_vcl]call keys_has']]call action_add;