private["_art","_item","_zunah","_rolepos","_roledir","_pos"];
_art = _this select 0;
 
if (_art == "use") then 

{
													
_item   = _this select 1;														
systemChat  format[localize "STRS_inventar_bought_hideout", rolestring];																			
 
_rolepos    = position player;			
_roledir    = getdir player;							
_pos        = [(_rolepos select 0) + ((sin _roledir) * 10), (_rolepos select 1) + ((cos _roledir) * 10),(_rolepos select 2)];	

call compile format ['

hideoutfire%1%2 = "Land_Campfire_burning" createVehicle %3;
hideoutfire%1%2 setVehicleInit "this setVehicleVarName ""hideoutfire%1%2""; 
hideoutfire%1%2 = this;";																		

hideout%1%2 = "Land_tent_east" CreateVehicle %3; 															
hideout%1%2 setVehicleInit "this setVehicleVarName ""hideout%1%2""; hideout%1%2 = this; this setDir %4"; 												

hideoutbox%1%2 = "TKOrdnanceBox_EP1" createVehicle (hideout%1%2 buildingPos 2);												
hideoutbox%1%2 setVehicleInit "this setVehicleVarName ""hideoutbox%1%2""; 
hideoutbox%1%2 = this; this setDir %4; this setpos (hideout%1%2 buildingPos 2);

HideoutLocationArray = HideoutLocationArray + [hideout%1%2];

ClearMagazineCargo this; 
ClearWeaponCargo this;";
processInitCommands; 

%1remove = player addaction ["Remove your hideout", "noscript.sqf", 
"
if(!isnull hideoutfire%1%2)then{deletevehicle hideoutfire%1%2};
if(!isnull hideout%1%2)then{deletevehicle hideout%1%2};
if(!isnull hideoutbox%1%2)then{deletevehicle hideoutbox%1%2};
deletemarker %1%2localhideoutmarker;
HideoutLocationArray = HideoutLocationArray - [hideout%1%2];																										
[player,""hideout"",1] call storage_add;
",1,false,true,"","player distance hideout%1%2 <= 7"];

%1%2localhideoutmarker = (([hideout%1%2, (localize "STRS_hideout_marker"), "Camp", "ColorWhite", "ICON", [1, 1], "%1%2HideoutMarker"] call ISSE_CreateMarkerArray) select 1);																																	
',rolestring, round(time), _pos, _roledir];																																			
																			
[player,_item,-1] call storage_add;

publicvariable "HideoutLocationArray";

};
