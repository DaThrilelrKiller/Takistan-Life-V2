if (dtk_server)exitWith {};

["Speed Upgrade","kd",["w",true,false,false],vehicle_upgrade]call keypress_add;
["Set Cruise Control","kd",["c",true,false,false],vehicle_cruiseControl]call keypress_add;
["Open Trunk","kd",["t",false,false,false],vehicle_trunk]call keypress_add;
["Get in Vehicle","kd",["E",false,false,false],vehicle_getin]call keypress_add;