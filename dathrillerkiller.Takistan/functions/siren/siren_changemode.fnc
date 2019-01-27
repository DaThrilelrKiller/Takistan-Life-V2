private ["_mode"];

_mode = call siren_mode;
if (_mode == "Automatic")then {
	(vehicle player) setVariable ["ar_siren_mode","Manual",true];
	titleText ["Siren Mode: Manual", "PLAIN DOWN"];
}else{
	(vehicle player) setVariable ["ar_siren_mode","Automatic",true];
	titleText ["Siren Mode: Automatic", "PLAIN DOWN"];
};


