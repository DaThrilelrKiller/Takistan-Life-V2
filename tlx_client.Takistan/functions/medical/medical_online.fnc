
_return = [];

{
	if (_x != player)then {
		_side = _x call core_side;
		if (_side == dtk_side)then {
			if ([_x]call medical_medic && {alive _x})then {
				_return  set [count _return,_x];
			};
		};
	};
}forEach playAbleUnits;

_return