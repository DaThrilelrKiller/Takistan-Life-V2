
_boxs = [WarBoxA,WarBoxB];

{
	_weaponCargo = getWeaponCargo _x;
	_weapons = _weaponCargo select 0;
	_weaponAmount = _weaponCargo select 1;
	
	_maizinesCargo = getMagazineCargo _x;  
	_maizines = _maizinesCargo select 0;
	_maizinesAmount = _maizinesCargo select 1;
	
	_M4A1_AIM_CAMO = [];
	

}forEach _boxs;
