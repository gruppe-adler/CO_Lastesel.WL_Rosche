params ["_unit"];

private _face = selectRandom [
		"Miller",
		"Nikos",
		"WhiteHead_01",
		"WhiteHead_02",
		"WhiteHead_03",
		"WhiteHead_04",
		"WhiteHead_05",
		"WhiteHead_06",
		"WhiteHead_07",
		"WhiteHead_08",
		"WhiteHead_09",
		"WhiteHead_10",
		"WhiteHead_11",
		"WhiteHead_12",
		"WhiteHead_13",
		"WhiteHead_14",
		"WhiteHead_15",
		"WhiteHead_16",
		"WhiteHead_17",
		"WhiteHead_18",
		"WhiteHead_19",
		"WhiteHead_20",
		"WhiteHead_21",
		"WhiteHead_22_a",
		"WhiteHead_22_l",
		"WhiteHead_22_sa",
		"WhiteHead_23",
		"kerry_B1_F",
		"kerry_B2_F"
];

[_unit, _face] remoteExec ["grad_zeus_fnc_applyFace", 0, true];