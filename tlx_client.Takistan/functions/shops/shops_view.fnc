{
	if ([_pos select 0,_pos select 1] distance (_x select 0) < 5)exitWith {
		[_ForEachIndex]call shops_open;
	};
}forEach INV_ItemShops;