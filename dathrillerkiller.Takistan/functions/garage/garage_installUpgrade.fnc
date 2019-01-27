private ["_camera"];
_camera = call garage_cam;

titleText ["Collecting the Payment", "PLAIN"];
sleep 3;
titleText ["Inspecting Vehicle", "PLAIN"];
sleep 3;
titleText ["Installing Speed Upgrade 10%", "PLAIN"];
sleep 1;
titleText ["Installing Speed Upgrade 20%", "PLAIN"];
sleep 1;
titleText ["Installing Speed Upgrade 30%", "PLAIN"];
sleep 1;
titleText ["Installing Speed Upgrade 40%", "PLAIN"];
sleep 1;
titleText ["Installing Speed Upgrade 50%", "PLAIN"];
sleep 1;
titleText ["Installing Speed Upgrade 60%", "PLAIN"];
sleep 1;
titleText ["Installing Speed Upgrade 70%", "PLAIN"];
sleep 1;
titleText ["Installing Speed Upgrade 80%", "PLAIN"];
sleep 1;
titleText ["Installing Speed Upgrade 90%", "PLAIN"];
sleep 1;
titleText ["Installing Speed Upgrade 100%", "PLAIN"];
sleep 1;
titleText [format ["%1 has been installed",((_this select 0) call config_displayname)], "PLAIN"];


_upgrade = switch(_this select 0)do
{
	case "dtk_Speed1":{1.006};
	case "dtk_Speed2":{1.008};
	case "dtk_Speed3":{1.010};
	case "dtk_Speed4":{1.012};
	case "dtk_Speed5":{1.014};
	case "dtk_Speed6":{1.018};
};

(_this select 1) setvariable ["tuning",_upgrade, true];
	

camDestroy _camera;
_camera cameraEffect ["terminate","back"];