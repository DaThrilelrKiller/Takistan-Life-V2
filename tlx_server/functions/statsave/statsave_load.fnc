private ["_kills","_side","_uid","_player","_apps","_bank","_hunger","_inventoy","_licenses","_vehicles","_weapons","_magazines","_pistol","_rifle","_x26","_warrants","_notes","_bounty","_apps1","_lifestate","_distance","_seasion","_clothing"];
_side = _this select 1;
_uid = getPlayerUID(_this select 0);
_player = (_this select 0);
_apps = switch(_side)do{ 
	case "CIV":{["app_store","app_store","app_settings","app_dmv","app_laws","app_civilian","app_background","app_vote"]}; 
	case "GUER": {["app_store","app_store","app_settings","app_dmv","app_laws","app_civilian","app_background","app_vote"]}; 
	case "WEST":{["app_store","app_store","app_settings","app_dmv","app_laws","app_civilian","app_computer","app_background","app_vote"]}; 
	case "EAST":{["app_store","app_store","_wish","app_settings","app_dmv","app_laws","app_civilian","app_computer","app_background","app_vote"]}; 
};

_bank = [_uid,"Main", "Bank",1000000]call s_statsave_read;
_hunger =	[_uid,_side, "Hunger",25]call s_statsave_read;
_inventoy = [_uid,_side, "Inventory",[["schluesselbund","idcard"],[1,1]]]call s_statsave_read;
_licenses = [_uid,_side, "Licenses", []]call s_statsave_read;
_vehicles = [_uid,_side, "Vehicles",[]]call s_statsave_read;
_weapons = [_uid,_side, "Weapons",[]]call s_statsave_read;
_magazines = [_uid,_side, "Magazines",[]]call s_statsave_read;
_pistol = [_uid,_side, "Pistol",""]call s_statsave_read;
_rifle = [_uid,_side, "Rifle",""]call s_statsave_read;
_x26 = [_uid,_side, "x26",""]call s_statsave_read;
_warrants = [_uid,_side, "Warrants",[]]call s_statsave_read;
_notes = [_uid,_side, "Notes",[]]call s_statsave_read;
_bounty = [_uid,_side, "Bounty",0]call s_statsave_read;
_apps1 = [_uid,_side, "Apps",_apps]call s_statsave_read;
_lifestate = [_uid,"Main", "lifestate",""]call s_statsave_read;
_distance = [_uid,"Main", "distance",800]call s_statsave_read;
_detail = [_uid,"Main", "detail",25]call s_statsave_read;
_seasion = [_uid,_side, "seasion",[]]call s_statsave_read;
_side1 = [_uid,"Main", "Side",[_side,0]]call s_statsave_read;
_name = [_uid,"Main", "NAME",""]call s_statsave_read;
_clothing = [_uid,_side, "Clothing",""]call s_statsave_read;
_kills = [_uid,_side, "Kills",[0,0,0,0,0]]call s_statsave_read;
_house_storage = [_uid,_side, "House_storage",[[],[]]]call s_statsave_read;
_house_gear = [_uid,_side, "House_gear",[[[],[]],[[],[]]]]call s_statsave_read;
_texutre = [_uid,_side, "Texture",[]]call s_statsave_read;
_wish =  [_uid,_side, "wish",0]call s_statsave_read;

_data = [_uid,(owner _player),[_bank,_hunger,_inventoy,_licenses,_vehicles,_weapons,_magazines,_pistol,_rifle,_x26,_warrants,_notes,_bounty,_apps1,_lifestate,_distance,_detail,_seasion,_side1,_name,_clothing,_kills,_house_storage,_house_gear,_texutre,_wish]];

[_player,_data,"statsave_load",false,false]call network_MPExec;
_player setVariable ["id",(owner _player),true];