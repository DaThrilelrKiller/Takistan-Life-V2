_bail    = _this select 0;

if (!(_bail call string_isInteger)) exitWith {systemChat  localize "STRS_inv_no_valid_number"};

_bail    = _bail call string_toInt; 

if (_bail <= 0) exitWith {};

_copplayernumber = playersNumber west;

_copbail = round(_bail/_copplayernumber);

_geld    = [player,"geld"] call storage_amount;

if (_geld > _bail) exitwith 

{

[player,"geld",-_bail] call storage_add;
systemChat  format [localize "STRS_bail_self", (_bail call string_intToString)];
format ["if (dtk_cop) then {[player,'geld',%2] call storage_add; systemChat  format [localize ""STRS_bail_addbail"", %2, ""%3""];}; titletext [format[localize ""STRS_bail_payed"",%3, %1], ""plain""]; _boun = (%4 getvariable 'cdb_bounty'); _boun = _boun - %1; if(_boun < 0)then{_boun = 0};
	%4 setVariable ['cdb_bounty',_boun,true];", (_bail call string_intToString), (_copbail call string_intToString), AR_playerString, player] call network_broadcast;

};


if (dtk_bank > _bail) exitWith 

{

dtk_bank = dtk_bank - _bail;
systemChat  format [localize "STRS_bail_self", (_bail call string_intToString)];
format ["if (dtk_cop) then {[player,'geld',%2] call storage_add; systemChat  format [localize ""STRS_bail_addbail"", %2, ""%3""];}; titletext [format[localize ""STRS_bail_payed"",%3, %1], ""plain""]; _boun = (%4 getvariable 'cdb_bounty'); _boun = _boun - %1; if(_boun < 0)then{_boun = 0};
	%4 setVariable ['cdb_bounty',_boun,true];", (_bail call string_intToString), (_copbail call string_intToString), AR_playerString, player] call network_broadcast;

}; 

systemChat  localize "STRS_bail_cantpay";
