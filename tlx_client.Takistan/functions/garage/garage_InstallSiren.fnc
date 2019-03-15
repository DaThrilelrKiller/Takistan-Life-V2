private ["_camera"];
/* _camera = call garage_cam; */

titleText [format ["Siren %1 had been installed",((_this select 0) call config_displayname)], "PLAIN"];


(_this select 1) setVariable ["dtk_siren",(_this select 0),true];
