[]spawn core_loop;

if (dtk_client)then {
	[300,core_paycheck]call core_AddLoop;
	/* [0.5,core_commandingMenu]call core_AddLoop; */
	["Surrender","ku",["3",false,false,false],core_surender]call keypress_add;
	["Stun Player","kd",["F",true,false,false],core_hit]call keypress_add;
	player disableConversation true
};

{
	if (isNil _x)then {
		call compile format ["%1 = objNull",_x];
	};
}foreach call core_units;
