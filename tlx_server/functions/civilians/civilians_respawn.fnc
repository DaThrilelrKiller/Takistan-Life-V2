private ["_towns","_vehTypes","_name","_unitType","_side","_unit","_town","_pos","_roads","_grp","_veh","_road","_return"];

if (!isServer) exitWith {};

_side = civilian;
_unitType = ["Functionary1","RU_SchoolTeacher","CIV_EuroMan02_EP1","Citizen1","Dr_Hladik_EP1","Villager2"];
_vehTypes = [ 	"MMT_Civ", 	"Old_moto_TK_Civ_EP1", 	"TT650_TK_CIV_EP1", 	"TT650_Civ", 	"TT650_Ins", 	"M1030", 	"ATV_CZ_EP1", 	"Skoda", 	"SkodaBlue", 	"SkodaRed", 	"SkodaGreen", 	"Volha_1_TK_CIV_EP1", 	"Volha_2_TK_CIV_EP1", 	"VolhaLimo_TK_CIV_EP1", 	"Lada1_TK_CIV_EP1", 	"Lada2_TK_CIV_EP1", 	"VWGolf", 	"car_hatchback", 	"Car_Sedan", 	"Lada1", 	"Lada2", 	"S1203_TK_CIV_EP1", 	"LandRover_TK_CIV_EP1", 	"LandRover_CZ_EP1", 	"hilux1_civil_1_open", 	"hilux1_civil_2_covered", 	"hilux1_civil_3_open_EP1", 	"hilux1_civil_3_open", 	"datsun1_civil_1_open", 	"datsun1_civil_2_covered", 	"datsun1_civil_3_open" 	];

_towns = nearestLocations [dtk_center, ["NameCity","NameCityCapital","NameVillage"], 9000];		
_town = _towns call BIS_selectRandom;
_pos = locationPosition _town;
_roads = _pos nearRoads 500;

["ALL",[],{systemchat "Responsing AI unit"},false,false]call network_MPExec;

if (count _roads > 0) then {

	_road = _roads call BIS_selectRandom;

	_grp = createGroup _side;

	_veh = createVehicle [_vehTypes call BIS_selectRandom, position _road, [], 0, "NONE"];
	_veh setVariable["DTK_OwnerUID","Server"];
	_veh lock true;
		
		
	if (random 1 < 0.5) then {
		_veh setDir getDir _road;
		} else {
		_veh setDir (getDir _road + 180) % 360;
	};
	
	_name = format["civ_%1_%2",round(random 500), round(time)];


	_unit = _grp createUnit [_unitType call BIS_selectRandom, [random 10,random 10,0], [], 0, "NONE"];
	_unit setVehicleInit format [
		"
			this setVehicleVarName ""%1"";
			%1 = this;
			this addaction ['','noscript.sqf',format['%1 call core_interact;',this],25,false,true,'LeanRight',format['player distance _target < 5 && {!([_target,''Interact (E)'',tag_default]call tag_show)}',this getVariable ['dtk_tag',tag_default]]];
		"
		, _name];
	processInitCommands;
	[_unit]call s_civilians_setLoadout;
	
	_unit addMPEventHandler ["MPKilled",{_this call killfeed_display;}];

	_unit moveInDriver _veh;

	_grp setBehaviour "SAFE";
	_grp setSpeedMode "FULL";
	_grp setCombatMode "BLUE";

	_veh forceSpeed 60;
	_veh setFuel 1;
	_return = [_veh,_unit];

};

_return
