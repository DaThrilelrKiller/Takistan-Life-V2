if (dtk_server)exitWith {};

(findDisplay 46) displaySetEventHandler ["KeyDown", "_this call keypress_down"];
(findDisplay 46) displaySetEventHandler ["KeyUp", "_this call keypress_up"];

["New Interation Menu","kd",["F4",false,false,false],{if (dialog)exitWith {closeDialog 0}; createDialog "USBW_Interation";}]call keypress_add;