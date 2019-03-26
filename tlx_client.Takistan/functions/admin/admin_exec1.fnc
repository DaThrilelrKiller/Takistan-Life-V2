private ["_text"];
_text = lbText [1500, (lbCurSel 1500)];
switch (_text) do
{
	case "Delete": 
	{
		closeDialog 0;
		_object = cursorTarget;
		if (_object in INV_ServerBuildingArray)exitWith {"that object cannot be deleted"call chat_system;};
		deleteVehicle _object;
		format ["%1 deleted",_object]call chat_system;
	};
	case "Teleport": 
	{
		closeDialog 0;
		call admin_teleport;
	};
	case "Console": 
	{
		closeDialog 0;
		call admin_console;
	};
	case "Move": 
	{
		closeDialog 0;
		call admin_Move;
	};
	case "Inventory": 
	{
		closeDialog 0;
		call admin_inventory;
	};
	case "Licenses": 
	{
		closeDialog 0;
		call admin_licenses;
	};
	case "Vehicles": 
	{
		closeDialog 0;
		call admin_vehicles;
	};
	case "Logs": 
	{
		closeDialog 0;
		call admin_logs;
	};
	case "Spectate": 
	{
		_currentcam = cameraView;
		_player = (call compile lbData [2100, lbCurSel 2100]select 1);
		_player switchCamera "EXTERNAL";
				
		[_currentcam]spawn 
		{
			waitUntil {speed player > 0.1};
			(vehicle player) switchCamera (_this select 0);
		};
		closeDialog 0;
	};
	case "Camera": 
	{
		closeDialog 0;
		[]call admin_camera;
	};
	case "Revive": 
	{
		call admin_Revive;
		closeDialog 0;
	};
	case "Clothing": 
	{
		closeDialog 0;
		[]call admin_clothes;
	};
	case "Live Code Update":
	{
		closeDialog 0;
		call admin_updater;
	};
};