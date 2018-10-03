params ["_box"];

private _pos = position _box;
private _vehicle = nearestObject [_pos, "gm_demo_nato_mb_u1300l_cargo"];
private _isCloseEnough = _pos distance2D _vehicle < 5;

if (!_isCloseEnough) exitWith { hint "no vehicle nearby"; };

private _count = _vehicle getVariable ["lastesel_cargoCount", 0];

switch (_count) do { 
    case 0 : {
        _box attachTo [_vehicle, [-0.0488281,-0.532227,0.472176]];
        _vehicle setVariable ["lastesel_box1", _box, true];
        _vehicle setVariable ["lastesel_cargoCount", 1, true];
    };
    case 1 : {
        _box attachTo [_vehicle, [-0.015625,-2.06055,0.479202]];
        _vehicle setVariable ["lastesel_box2", _box, true];
        _vehicle setVariable ["lastesel_cargoCount", 2, true];
    };
    default {  hint "already full"; }; 
};