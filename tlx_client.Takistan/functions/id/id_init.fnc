if (dtk_server)exitWith {};

if (!isNil { profileNamespace getVariable "tickleme"})then {
	call id_generate;
};

player setVariable ["PlayerSettings", [profileNamespace getVariable "tickleme",dtk_side], true];
player setVariable ["dtk_side",dtk_side,true];