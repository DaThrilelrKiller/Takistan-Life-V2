private["_data", "_type","_default"];
_data = _this select 0;
_default = _this select 1;
	
switch (typename(_default)) do 
{
	case "ARRAY": 
	{
		if(_data == "") then 
		{
			_data = _default;
		} else 
		{
			_data = call compile _data;
		};
	};
	
	case "SCALAR": 
	{
		if(_data == "") then 
		{
			_data = _default;
		}
		else 
		{
			_data = parseNumber _data;
		};
	};

	case "BOOL": 
	{
		if(_data == "") then 
		{
			_data = _default;
		} else 
		{
			_data = call compile _data;
		};
	};
	
	default 
	{
		if(_data == "") then
		{
		_data = _default;
		} else 
		{
		_data = format["%1", _data];
		};
	};
};
_data;