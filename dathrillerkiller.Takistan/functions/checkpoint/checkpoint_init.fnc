if (dtk_server)exitWith {};

["checkpoint_alpha",[5945.03,7423.8,0],nil,nil,nil,"mil_join",[1,1],"Checkpoint Alpha"]call core_createMarkerLocal;
["checkpoint_bravo",[3458.56,8318.08,0],nil,nil,nil,"mil_join",[1,1],"Checkpoint Bravo"]call core_createMarkerLocal;
["checkpoint_delta",[9056.21,5927.26,0],nil,nil,nil,"mil_join",[1,1],"Checkpoint Delta"]call core_createMarkerLocal;


if !(dtk_civ)then {
	["Checkpoint Builder","ku",["9",false,false,false],checkpoint_open]call keypress_add;
};
