private ['_vehicle','_vcl'];

_vehicle = vehicle player;

if(_vehicle == player) exitwith  
{  
	private ['_vcl'];  
	_vcl = call vehicle_grab;
	if(locked _vcl)exitwith{};
	
	if(_vcl emptyPositions 'Driver' > 0)exitwith  { player action ['getInDriver', _vcl]};
	if(_vcl emptyPositions 'Gunner' > 0)exitwith   {player action ['getInGunner', _vcl]}; 
	if(_vcl emptyPositions 'Commander' > 0)exitwith{player action ['getInCommander', _vcl]}; 
	if(_vcl emptyPositions 'Cargo' > 0)exitwith    {player action ['getInDriver', _vcl];_vcl spawn {sleep 0.5;player moveincargo _this;};};
};  

if(_vehicle != player) exitwith  
{ 

	if (call garage_near)exitWith{};
	if(locked _vehicle)exitwith{systemChat  'The vehicle is locked.';}; 
	if(speed _vehicle > 30)exitwith{systemChat  'The vehicle is moving too fast';}; 
	player action ['getOut', _vehicle];  
};

