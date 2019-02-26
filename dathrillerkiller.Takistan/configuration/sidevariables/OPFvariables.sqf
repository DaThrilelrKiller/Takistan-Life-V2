dtk_civ = false;						
dtk_cop = false;	
dtk_ins = false;	
dtk_opf = true;
dtk_sidename = "TKA Officer";

USBW_Interactions = [
["'Enable License Plate'",'!ar_plates','[]spawn plates_plate'],
["'Disable License Plate'",'ar_plates','[]spawn plates_plate']
];


INV_apps = [
["app_warrants","data\images\ipad\warrants.PAA","[0,1,2,[""coplog""]] execVM 'scripts\maindialogs.sqf';"],
["app_civilian","data\images\ipad\players.PAA","[0,0,0,[""playerlist""]] execVM 'scripts\maindialogs.sqf';"],
["app_oil","data\images\ipad\OIL.PAA","[0,0,0,[""oilswag""]] execVM 'scripts\maindialogs.sqf'"],
["app_dmv","data\images\ipad\licences.PAA","[player]call licenses_check"],
["app_laws","data\images\ipad\LAWS.PAA","[0,0,0,[""lawswag""]] execVM 'scripts\maindialogs.sqf';"],
["app_gangs","data\images\ipad\gangs.PAA","closeDialog 0;call gang_open"],
["app_stockmarket","data\images\ipad\stockmarket.PAA","[0,0,0,[""fundsswag""]] execVM ""scripts\maindialogs.sqf"";"],
["app_store","data\images\ipad\store.PAA","[(BuildingCollapesLogic call shops_index)]call shops_open; "],
["app_settings","data\images\ipad\controls.PAA","call keypress_menu"],
["app_background","data\images\ipad\background.PAA","call ipad_background"],
["app_vote","data\images\ipad\vote.PAA","call goverment_vote"]
];

AppStoreArray = {
[
"app_phone",
"app_warrants",
"app_civilian",
"app_oil",
"app_dmv",
"app_laws",
"app_gangs",
"app_stockmarket"
];
};

coppatrolarray  = [
	[5394.94,6294,0.0014801],
	[3406.2,5533.4,0.00143433],
	[3534.72,4199.31,0.00157166],
	[4102.24,2872.25,0.000854492],
	[4408.47,817.271,0.00143433],
	[6091.92,1162.97,0.00152588],
	[7295.16,307.928,0.00146484],
	[7478.05,1822.4,0.00137329],
	[8446.03,2449.56,0.0015564],
	[9719.19,2371.32,0.00146484],
	[11671.4,2540.81,0.00119019],
	[8721.11,5122.8,0.00149536]
];