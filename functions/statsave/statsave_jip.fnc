
_this call s_statsave_load;
_this call s_statsave_wloadfromdb;

/* temp place for remote functions */
_owner = owner(_this select 0);
_functionsa = PG_SSF;

{
	_owner publicVariableClient _x;
}forEach _functionsa;