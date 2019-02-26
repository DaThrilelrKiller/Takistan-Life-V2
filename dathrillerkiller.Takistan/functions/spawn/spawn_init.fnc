if (dtk_server)exitWith {};

call music_intro;
"dynamicBlur" ppEffectEnable true; 
"dynamicBlur" ppEffectAdjust [4]; 
"dynamicBlur" ppEffectCommit 0;

showCinemaBorder false;
dtk_cam = "camera" camcreate dtk_center;
dtk_cam cameraEffect ["internal", "back"];
dtk_cam camSetFOV 0.700;
dtk_cam camCommit 0;

dtk_nation = ["North","South"]call bis_SelectRandom;

[]spawn spawn_openMenu;
