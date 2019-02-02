

_return = 0;

{

_side = _x call core_side; 
if (_side == (_this select 0))then {
_return = _return + 1;
};

}count playableUnits;

_return