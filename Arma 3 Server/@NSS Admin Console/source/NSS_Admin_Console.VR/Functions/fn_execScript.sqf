hint "Script executed";

[] execVM "\@NSS_Admin_Console\script.sqf";

_script = preprocessFileLineNumbers "\@NSS_Admin_Console\script.sqf";

[[_script, name player, "script:"],"NSS_AC_fnc_codeLogger",false,false] spawn BIS_fnc_MP;