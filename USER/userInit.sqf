/*
*   Wird zum Missionsstart auf Server und Clients ausgeführt.
*   Funktioniert wie die init.sqf.
*/



// randomize reichsbuerger uniforms
[
    {
        _value = param [0];
        if (_value == "rds_uniform_Worker1") then {
            _value = selectRandom [
            	"rds_uniform_Worker1",
				"rds_uniform_Worker2",
				"rds_uniform_Worker3",
				"rds_uniform_Worker4",
				"rds_uniform_Woodlander1",
				"rds_uniform_Woodlander2",
				"rds_uniform_Woodlander3",
				"rds_uniform_Woodlander4",
				"rds_uniform_Villager1",
				"rds_uniform_Villager2",
				"rds_uniform_Villager3",
				"rds_uniform_Villager4",
				"rds_uniform_Profiteer1",
				"rds_uniform_Profiteer2",
				"rds_uniform_Profiteer3",
				"rds_uniform_Profiteer4",
				"rds_uniform_citizen1",
				"rds_uniform_citizen2",
				"rds_uniform_citizen3",
				"rds_uniform_citizen4",
				"rds_uniform_Rocker1",
				"rds_uniform_Rocker2",
				"rds_uniform_Rocker3",
				"rds_uniform_Rocker4",

				"rhsgref_uniform_alpenflage",
			    "rhsgref_uniform_flecktarn",
			    "rhsgref_uniform_para_ttsko_mountain",
			    "rhsgref_uniform_para_ttsko_oxblood",
			    "rhsgref_uniform_para_ttsko_urban",
			    "rhsgref_uniform_reed",
			    "rhsgref_uniform_specter",
			    "rhsgref_uniform_tigerstripe",
			    "rhsgref_uniform_ttsko_forest",
			    "rhsgref_uniform_ttsko_mountain",
			    "rhsgref_uniform_ttsko_urban",
			    "rhsgref_uniform_vsr",
			    "rhsgref_uniform_woodland",
			    "rhsgref_uniform_woodland_olive"
			];
        };
        _value
    },
    "uniform",
    true
] call GRAD_Loadout_fnc_addReviver;



// randomize reichsbuerger headgear
[
    {
        _value = param [0];
        if (_value == "rhs_6b27m_digi") then {
            _value = selectRandom [
            	"rds_Villager_cap1",
				"rds_Villager_cap2",
				"rds_Villager_cap3",
				"rds_Villager_cap4",
				"G_Bandanna_oli",
				"H_Booniehat_dirty",
				"H_Booniehat_mcamo",
				"H_Cap_red",
				"H_Cap_tan",
				"H_Bandanna_cbr",
				"H_Shemag_olive_hs",
				"H_Beret_red",
				"H_Beret_grn",
				"H_Beret_Colonel",
				"H_Watchcap_camo",
				"H_Watchcap_sgg",
				"H_Hat_checker",
				"H_Watchcap_blk",
				"H_ShemagOpen_tan",
				"H_Bandanna_khk_hs",
				"H_MilCap_oucamo",
				"rhsgref_ssh68",
				"rhsgref_ssh68",
				"rhsgref_ssh68",
				"rhsgref_ssh68",
				"rhsgref_ssh68",
				"rhsgref_ssh68"
			];
        };
        _value
    },
    "headgear",
    true
] call GRAD_Loadout_fnc_addReviver;



// backpack

// randomize reichsbuerger headgear
[
    {
        _value = param [0];
        if (_value == "") then {
            _value = selectRandom [
            	"rhsusf_assault_eagleaiii_coy",
				"",
				"",
				"",
				"",
				"",
				""
			];
        };
        _value
    },
    "backpack",
    true
] call GRAD_Loadout_fnc_addReviver;