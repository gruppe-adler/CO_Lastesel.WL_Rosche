params ["_vehicle"];

private _count = _vehicle getVariable ["lastesel_cargoCount", 0];

private _pos = (position _vehicle) findEmptyPosition [2,8,"Land_PaperBox_closed_F"];

if (count _pos < 1) exitWith { hint "no empty place for the box"; };

switch (_count) do {
    case 1 : {
        private _box = _vehicle getVariable ["lastesel_box1", objNull];
        detach _box;
        _vehicle setVariable ["lastesel_cargoCount", 0, true];
        _box setPos _pos;
    };
    case 2 : {
        private _box = _vehicle getVariable ["lastesel_box2", objNull];
        detach _box;
        _vehicle setVariable ["lastesel_cargoCount", 1, true];
        _box setPos _pos;
    };
    default {  hint "cant unload nothing"; };
};