﻿if (isNil "dtk_seasion" or isNil "dtk_side" or isNil "dtk_sidename")exitWith {systemChat "[SAVE ABORTED]Your stats have not loaded yet"};
private ["_save"];
_save = 
[player,
	[
		["Main", "Bank", dtk_bank], 
		["Main", "NAME", name player],
		["Main", "Hunger", dtk_hunger], 	
		[dtk_side, "Inventory", player getVariable "dtk_storage"], 
		[dtk_side, "Licenses", (player getvariable "cdb_license")], 	
		[dtk_side, "Vehicles", INVVehiclesLand],
		[dtk_side, "Pistol", (player getVariable ["Pistol",""])], 	
		[dtk_side, "Rifle", (player getVariable ["Rifle",""])], 
		[dtk_side, "x26", (player getVariable ["x26",""])], 
		[dtk_side, "Weapons", weapons player], 
		[dtk_side, "Magazines", magazines player],
		[dtk_side, "Warrants",(player getvariable "cdb_warrants")],
		[dtk_side, "Notes",(player getvariable "cdb_notes")],
		[dtk_side, "Bounty",(player getvariable "cdb_bounty")],
		[dtk_side, "Storage",[]],
		[dtk_side, "Apps",INVAppsInstalled],
		["Main", "lifestate", (lifeState player)],
		[dtk_side, "seasion", [s_seasion,time,getPos player,dtk_side]],
		["Main", "Side", [dtk_side,s_seasion]],
		[dtk_side, "Clothing",player getVariable ["type",typeOf player]],
		[dtk_side, "Texture",player getVariable ["textures",[]]],
		[dtk_side, "Kills",player getVariable ["dtk_kills",[0,0,0,0,0]]],
		
		[dtk_side, "House_storage", BuildingCollapesLogic getVariable "dtk_storage"], 
		[dtk_side, "House_gear", BuildingCollapesLogic getVariable ['Gear',[[[],[]],[[],[]]]]]
	]
];

["SERVER",_save,"S_statsave_save",false,false]call network_MPExec;

if (isnull (findDisplay 49)) then {
['Saving data to database...','data\images\tags\save']call tag_notify
};