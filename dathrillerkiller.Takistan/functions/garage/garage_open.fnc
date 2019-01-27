if (call garage_near && {(vehicle player != player)})exitWith
{
	[ (dtkgarage call shops_index)]call shops_openshop;
	true
};