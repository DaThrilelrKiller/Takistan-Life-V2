private ["_text","_img","_display","_control","_h","_pos","_maxDist","_dist","_name","_target"];

disableSerialization;
_target = _this select 0;
_text = _this select 1;
_img = _this select 2;

_display = (uiNamespace getVariable 'tag');
_control = _display displayCtrl 54;

_box = boundingBox _target;
_p1 = _box select 0;
_p2 = _box select 1;
_h = abs ((_p2 select 2) - (_p1 select 2));
_h = if (_h > 2)then{2}else{_h};

_p = getPosATL _target;
_pos = worldToScreen [_p select 0, _p select 1,_h];
_maxDist = 10;
_dist = round (_target distance player);
        
if( _maxDist > _dist &&  {alive _target} && {count _pos > 0})then{

	if (_p select 2 > 2)then {
		_pos = [0.5,0.5];
	};
	
		_name = 
		if (_img != "")then 
		{
			_control ctrlSetStructuredText parseText format["<t size='%2' align='center' color='%4' shadowColor='#000000'><img size='3' image='%5.paa'/><br/>%1</t>",_text,2, '#dfd7a5','#DDDDDD',_img];
		}else{
			_control ctrlSetStructuredText parseText format["<t size='%2' align='center' color='%4' shadowColor='#000000'>%1</t>",_text,2, '#dfd7a5','#DDDDDD'];
		};
			
        _control ctrlShow true;
        _control ctrlSetStructuredText _name;
        _control ctrlSetPosition [(_pos select 0)-0.125,_pos select 1];
        _control ctrlCommit 0;
		
		if (isNil "t_tag_handler" || {scriptDone t_tag_handler})then {
		t_tag_handler = [_target,_control]spawn tag_handler;
		};
		
    };

if(!alive _target)then{_target removeAction (_target getVariable 'tag')};
false