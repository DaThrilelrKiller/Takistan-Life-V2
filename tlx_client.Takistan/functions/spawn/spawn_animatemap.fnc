disableSerialization; 

spawn_grid = call compile lbData [1401, (lbCurSel 1401)];
if (!isNil "spawn_grid")then
{
	_ctrl = (findDisplay 1600) displayCtrl 10023;
	
	_ctrl ctrlMapAnimAdd [1,4,spawn_grid];
	ctrlMapAnimCommit _ctrl;
	
	_ctrl ctrlMapAnimAdd [1,0.01,spawn_grid];
	ctrlMapAnimCommit _ctrl;
	
};