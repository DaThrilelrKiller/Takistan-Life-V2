if (!(isNil "admin_cam")) exitWith {
	admin_cam cameraeffect ["terminate","back"];
	camdestroy admin_cam;
	admin_cam = nil;
};

admin_cam = "camconstruct" camcreate [position player select 0,position player select 1,15];
admin_cam cameraeffect ["internal","back"];
admin_cam camPrepareFOV 0.900;
admin_cam campreparefocus [-1,-1];
admin_cam camCommitPrepared 0;
cameraEffectEnableHUD true;
admin_cam setdir direction player;
admin_cam camConstuctionSetParams [getPos player,(dtk_center select 0) * 2,500];