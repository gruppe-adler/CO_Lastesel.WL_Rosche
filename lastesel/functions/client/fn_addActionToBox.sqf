/*
    [this] call lastesel_fnc_addActionToBox;
*/

params ["_box"];

private _action = ["lastesel_loadBox", "Stimmzettel verladen", "\A3\ui_f\data\igui\cfg\actions\take_ca.paa", {
     [(_this select 0)] call lastesel_fnc_loadBox;
}, {true}] call ace_interact_menu_fnc_createAction;
[_box, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;