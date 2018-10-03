private _loadAction = ["aufladen", "Stimmzettel aufladen", "", {
    params ["_box"];
    [_box] call lastesel_fnc_loadBox;
},
{true}] call ace_interact_menu_fnc_createAction;

["CargoNet_01_box_F", 0, ["ACE_MainActions"], _loadAction, true] call ace_interact_menu_fnc_addActionToClass;



private _unloadAction = ["abladen", "Stimmzettel abladen", "", {
    params ["_box"];
    [_box] call lastesel_fnc_unloadBox;
},
{_target getVariable ["lastesel_cargoCount", 0] > 0}] call ace_interact_menu_fnc_createAction;

["gm_demo_nato_mb_u1300l_cargo", 0, ["ACE_MainActions"], _unloadAction, true] call ace_interact_menu_fnc_addActionToClass;