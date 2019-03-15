
_time = (shipment_item call shipment_getTime);

shipment_defend_time = time + _time;
["true","Weapon Shipment",format["Defend The Shipment For %1 Seconds!",_time]]call Main_Notification;

_side = [Shipment_destination]call border_side;

if (_side == "North")then {
	['ALL',["dtk_cop","Take down a weapon Shipment","The weapon shipment has been marked on the map, find and take them down!"],'Main_Notification',false,false]call network_MPExec;
}else{
	['ALL',["dtk_opf","Take down a weapon Shipment","The weapon shipment has been marked on the map, find and take them down!"],'Main_Notification',false,false]call network_MPExec;
};

_marker = createMarker [format["%1_shipment",player],[0,0]];																																																	
_marker setMarkerShape "ICON";								
_marker setMarkerType "Warning";										
_marker setMarkerColor "ColorRed";																														
_marker setMarkerText "Weapon Shipment Here!";	
_marker setMarkerPos getMarkerPos Shipment_destination;


while {true} do {

	if !(alive player)exitWith{
		["true","Weapon Shipment","You Failed The Mission!"]call Main_Notification;
		[shipment_vehicle,shipment_item,-1]call storage_add;
	};

	if (shipment_vehicle distance getMarkerPos Shipment_destination > 20)exitWith {
		["true","Weapon Shipment","Mission Failed, You Drove To Far Away!"]call Main_Notification;
		[shipment_vehicle,shipment_item,-1]call storage_add;
	};
	
	if (time > shipment_defend_time)exitWith
	{
		["true","Weapon Shipment","Your Shipment Was Successfully Delivered!"]call Main_Notification;
		call shipment_payout;
	};
};

deleteMarker format["%1_shipment",player];