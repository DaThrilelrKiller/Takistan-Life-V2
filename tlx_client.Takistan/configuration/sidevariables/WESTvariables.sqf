dtk_cop = true;
dtk_civ = false;		
dtk_ins = false;
dtk_opf = false;
dtk_sidename = "Police Officer";

INV_apps = [
["app_civilian","data\images\ipad\players.PAA","[0,0,0,[""playerlist""]] execVM 'scripts\maindialogs.sqf';"],
["app_oil","data\images\ipad\OIL.PAA","[0,0,0,[""oilswag""]] execVM 'scripts\maindialogs.sqf'"],
["app_dmv","data\images\ipad\licences.PAA","[player]call licenses_check"],
["app_laws","data\images\ipad\laws.PAA","[0,0,0,[""lawswag""]] execVM 'scripts\maindialogs.sqf';"],
["app_gangs","data\images\ipad\gangs.PAA","[0,0,0,[""gangsswag""]] execVM 'scripts\maindialogs.sqf';"],
["app_stockmarket","data\images\ipad\stockmarket.PAA","[0,0,0,[""fundsswag""]] execVM ""scripts\maindialogs.sqf"";"],
["app_computer","data\images\ipad\Computer.PAA","if(vehicle player != player)then{call cdb_open}else {'You Must Be In A Vehicle To Access Your ECPD Computer!'call chat_system;};"],
["app_store","data\images\ipad\store.PAA"," [(BuildingCollapesLogic call shops_index)]call shops_open; "],
["app_settings","data\images\ipad\controls.PAA","call keypress_menu"],
["app_background","data\images\ipad\background.PAA","call ipad_background"],
["app_vote","data\images\ipad\vote.PAA","call goverment_vote"]
];

AppStoreArray = {
[
"app_phone",
"app_civilian",
"app_oil",
"app_dmv",
"app_laws",
"app_gangs",
"app_stockmarket",
"app_computer"
];
};

USBW_Interactions = [
["'Enable License Plate'",'!ar_plates','[]spawn plates_plate'],
["'Disable License Plate'",'ar_plates','[]spawn plates_plate'],
["'Enable Radar'",'!dtk_speed','[]spawn speed_open'],
["'Disable Radar'",'dtk_speed','[]spawn speed_open']
];

coppatrolarray = [
[6905.55,11515.4,0],
[9913.58,11352.3,0],
[5953.67,7481.23,0],
[9110.73,5984.78,0],
[6154.9,10494,0],
[4344,10828.9,0],
[5316.79,10287.9,0],
[6768.64,8844.59,0],
[6576.73,11364.1,0],
[3501.7,8362.48,0],
[6911.91,12269.9,0],
[12607.4,11073.7,0]
];