params ["_vehicle", "_color"];

private _classname = "";

switch (_color) do { 
	case "black" : {  _classname = "rhs_mag_rdg2_black"; };
	case "red" : {  _classname = "SmokeShellRed"; };
	case "yellow" : {   _classname = "SmokeShellYellow"; };
	default {  /*...code...*/ };
};

private _smoke = _classname createVehicle [0,0,0];

_smoke attachTo [_vehicle, [0,0,-1]];