

gps_info = 
{
	_pos = _this;
	_return =
	{
		if (_x distance _pos < 10)exitWith {_x};
	}forEach shopusearray;
	_text = (_return call {["",""]}) select 1;
	_img = _text select 0;
	_name = _text select 1;
	hint parseText format["
	<t align='center' color='#e5b348' size='2.5'><t shadow='1'shadowColor='#000000'>%2</t></t> 
	<img color='#ffffff' image='data\images\DaThrillerKiller\img_line_ca.paa' align='left' size='0.20' /><br />
	<t align='center' size='5'><t shadow='1'shadowColor='#000000'><img image='data\images\tags\%1.paa'/></t></t> 

	",_img,_name];
};

onMapSingleClick "
_pos call gps_info;
";