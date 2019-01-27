private["_item"];
_item = _this select 1;

switch (_item) do 
{
	case "GymMem1" :
	{
		dtk_player_storage = 70;
		systemChat  format["You now can lift up to %1 pounds, but upon death you loose your strength", dtk_player_storage];
		[player,_item,-1] call storage_add;
	};
	case "GymMem2" :
	{
		dtk_player_storage = 80;
		[player,_item,-1] call storage_add;
		systemChat  format["You now can lift up to %1 pounds, but upon death you loose your strength", dtk_player_storage];
		
	};
	case "GymMem3" :
	{
		dtk_player_storage = 90;
		[player,_item,-1] call storage_add;
		systemChat  format["You now can lift up to %1 pounds, but upon death you loose your strength", dtk_player_storage];
	};

	case "GymMem4" :
	{
		dtk_player_storage = 100;
		[player,_item,-1] call storage_add;
		systemChat  format["You now can lift up to %1 pounds, but upon death you loose your strength", dtk_player_storage];
		_num = round random 100;
		sleep 5;	
		if (_num < 20) exitwith
		{
		systemChat  "You have a sudden rush to your heart from an overdose and are now dying";
		player setdamage .5;
		sleep 10;
		player setdamage .7;
		sleep 5;
		player setdamage 1;
		};
	};
};