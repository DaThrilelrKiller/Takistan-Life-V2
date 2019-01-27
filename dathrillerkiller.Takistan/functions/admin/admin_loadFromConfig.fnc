private ["_type","_name","_index","_ui","_Main","_picture"];

{
_type = (_x call config_type);

	if (_type == _this)then
	{
		_name = (_x call config_displayname);
		_index = lbAdd [1501, format["%1", _name]];
		lbSetData [1501, _index, format ['%1',_x]];	
	};
 true
}count  dtk_master;

disableserialization;
_ui = uiNameSpace getVariable "admin_inventory";
_Main = _ui displayCtrl 1501;
lbSort _Main;