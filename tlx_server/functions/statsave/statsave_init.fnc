[]spawn S_statsave_loop;

s_seasion = ["server", "settings", "seasion",0]call S_statsave_read;
s_seasion = s_seasion + 1;
publicVariable "s_seasion";
["server",[["settings","seasion",s_seasion]]]call S_statsave_save;