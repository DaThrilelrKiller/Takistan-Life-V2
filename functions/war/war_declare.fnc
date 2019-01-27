_unit = _this select 0;

if (!isNil "dtk_war_time")exitWith {
	[_unit,["true","You cannot start a war at this time because there is already a war active",2],"network_chat",false,false]call network_MPExec; 
};

dtk_war_time =  time+1200;
["ALL",[],"war_prep",true,false]call network_MPExec; 


warBoxA = "LocalBasicAmmunitionBox" createVehicle [0,0,0];
warBoxB = "LocalBasicAmmunitionBox" createVehicle [0,0,0];

_boxInit = "clearWeaponCargo this; clearMagazineCargo this; this allowDamage false;
			this addWeaponCargo ['M4A1_AIM_CAMO',50]; this addWeaponCargo ['SCAR_H_CQC_CCO',50]; this addWeaponCargo ['SCAR_H_LNG_Sniper',3];
			this addMagazineCargo ['30Rnd_556x45_Stanag',6000]; this addMagazineCargo ['20Rnd_762x51_B_SCAR',6000]; 
			this addMagazineCargo ['HandGrenade',50]; this addMagazineCargo ['Mine',50];";
			
warBoxA setVehicleInit _boxInit;
warBoxB setVehicleInit _boxInit;
processInitCommands;  
warBoxA setPos [5725.42,9957.93,0];
warBoxB setPos [2606.02,5112.34,0];

waitUntil {time > dtk_war_time};
["ALL",[],"war_start",false,false]call network_MPExec; 
