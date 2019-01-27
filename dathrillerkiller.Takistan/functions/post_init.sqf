call setup_init;

if (dtk_client)then {
["ALL",[player,dtk_side,getPlayerUID player],"setup_jip",false,true]call network_MPExec;
}else{
call compile preprocessFile "\MPMissions\functions\post_init.sqf";
};

