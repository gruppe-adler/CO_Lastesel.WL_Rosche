params ["_container"];

if (!isServer) exitWith {};

//////////////////////////////////
// magazines
private _magazines = [
	["rhsusf_mag_17Rnd_9x19_JHP", 20],
	["rhs_mag_30Rnd_556x45_Mk318_Stanag", 100],
	["rhs_200rnd_556x45_T_SAW", 20],
	["hlc_100Rnd_762x51_B_MG3", 20],
	["SmokeShell", 20],
	["SmokeShellYellow", 20],
	["SmokeShellRed", 20],
	["SmokeShellPurple", 20],
	["SmokeShellOrange", 20],
	["SmokeShellGreen", 20],
	["SatchelCharge_Remote_Mag", 10],
	["DemoCharge_Remote_Mag",10]
];

{
	_container addMagazineCargoGlobal [_x select 0, _x select 1];

} forEach _magazines;
//////////////////////////////////



//////////////////////////////////
// weapons
private _weapons = [
	["rhs_weap_M136", 5]
];

{
	_container addWeaponCargoGlobal [_x select 0, _x select 1];

} forEach _weapons;
//////////////////////////////////




//////////////////////////////////
// items
private _items = [
	["ACE_Clacker", 5],
	["ACE_M26_Clacker", 5],
	["ACE_CableTie", 100],
	["ACE_wirecutter", 1],
	["GRAD_axe", 1]
];

{
	_container addItemCargoGlobal [_x select 0, _x select 1];

} forEach _items;
//////////////////////////////////