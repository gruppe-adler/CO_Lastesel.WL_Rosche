
waitUntil {!isNull player};
waitUntil {  time > 3 };

{

  
    _x addEventHandler ["CuratorGroupPlaced", {
        params ["", "_group"];
        ["grad_zeus_setServerAsOwner", [_group]] call CBA_fnc_serverEvent;

        { 
            _x setSkill ["aimingShake", 0.2]; 
            _x setSkill ["aimingSpeed", 0.9]; 
            _x setSkill ["endurance", 0.6]; 
            _x setSkill ["spotDistance", 1]; 
            _x setSkill ["spotTime", 0.9]; 
            _x setSkill ["courage", 1]; 
            _x setSkill ["reloadSpeed", 1]; 
            _x setSkill ["commanding", 1];
            _x setSkill ["general", 1];

            [_x] call grad_zeus_fnc_selectFace;


        } forEach units _group;

    }];

    _x addEventHandler ["CuratorObjectPlaced", {
        params ["", "_object"];
        

        _object setSkill ["aimingShake", 0.2]; 
        _object setSkill ["aimingSpeed", 0.9]; 
        _object setSkill ["endurance", 0.6]; 
        _object setSkill ["spotDistance", 1]; 
        _object setSkill ["spotTime", 0.9]; 
        _object setSkill ["courage", 1]; 
        _object setSkill ["reloadSpeed", 1]; 
        _object setSkill ["commanding", 1];
        _object setSkill ["general", 1];


        if (_object isKindOf "CAManBase") then {
            if (count units _object == 1) then {
                ["grad_zeus_setServerAsOwner", [group _object]] call CBA_fnc_serverEvent;
            };
        } else {
            if (count crew _object > 1) then {
                ["grad_zeus_setServerAsOwner", [group (crew _object select 0)]] call CBA_fnc_serverEvent;
            };
        };
    }];



  _x addEventHandler ["CuratorWaypointPlaced", {
      params ["_curator", "_group", "_waypointID"];

  if (missionNamespace getVariable ["grad_zeus_ZEUS_AI_CHARGE", false]) then {

        [_group, _waypointID] call grad_zeus_fnc_enableChargeMode;
  };

  }];
} forEach allCurators;


if (  
  isClass (configFile >> "CfgPatches" >> "achilles_modules_f_achilles")
) then
{
  // Note that the line below has to be uncommented if your mission is a Zeus Game Master mission.
  // TODO check if below is necessary to uncomment
  waitUntil {not isNil "ares_category_list"};


  ["LASTESEL", "Spawn Enemy inside Building",
  {
    // Get all the passed parameters
    params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    
    private _nearestBuilding = nearestBuilding _position;
    
    private _group = createGroup east;
    // possible chairs
    {
      private _position = _nearestBuilding buildingPos _forEachIndex;
        if ([_position] call grad_zeus_fnc_isInsideHouse) then {
            private _unit = _group createUnit ["O_Soldier_F", _position, [], 0, "NONE"];
            doStop _unit;
        };
    } forEach ([_nearestBuilding, 7] call BIS_fnc_buildingPositions);

  }] call Ares_fnc_RegisterCustomModule;



  ["LASTESEL", "Toggle AI Charge",
  {
    // Get all the passed parameters
    params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    private _current = missionNamespace getVariable ["grad_zeus_ZEUS_AI_CHARGE", false];
    missionNamespace setVariable ["grad_zeus_ZEUS_AI_CHARGE", !_current, true];

    hint format ["AI CHARGE: %1", !_current];

  }] call Ares_fnc_RegisterCustomModule;


  ["LASTESEL", "Toggle DynSim for new units",
  {
    // Get all the passed parameters
    params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    private _current = missionNamespace getVariable ["grad_zeus_dynSimEnabled", false];
    missionNamespace setVariable ["grad_zeus_dynSimEnabled", !_current, true];

    hint format ["DYN SIM FOR NEW UNITS: %1", !_current];

  }] call Ares_fnc_RegisterCustomModule;


  ["LASTESEL", "Toggle DynSim for this unit",
  {
    // Get all the passed parameters
    params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    if (isNull _objectUnderCursor) exitWith { hint "no unit selected"; };

    private _current = dynamicSimulationEnabled _objectUnderCursor;
    _objectUnderCursor enableDynamicSimulation !_current;

    hint format ["DYN SIM FOR %1: %2", _objectUnderCursor, !_current];

  }] call Ares_fnc_RegisterCustomModule;



  ["LASTESEL_SMOKES", "Nationalhymne",
  {
    // Get all the passed parameters
    params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    [player, "hymn"] remoteExec ["say2D", [0,-2] select isDedicated];

  }] call Ares_fnc_RegisterCustomModule;




  ["LASTESEL_SMOKES", "attach smoke BLACK",
  {
    // Get all the passed parameters
    params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    [_objectUnderCursor, "black"] call lastesel_fnc_attachSmoke;

  }] call Ares_fnc_RegisterCustomModule;

  ["LASTESEL_SMOKES", "attach smoke RED",
  {
    // Get all the passed parameters
    params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    [_objectUnderCursor, "red"] call lastesel_fnc_attachSmoke;

  }] call Ares_fnc_RegisterCustomModule;

  ["LASTESEL_SMOKES", "attach smoke YELLOW",
  {
    // Get all the passed parameters
    params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    [_objectUnderCursor, "yellow"] call lastesel_fnc_attachSmoke;

  }] call Ares_fnc_RegisterCustomModule;



  


  ["LASTESEL", "Create Chair Circle",
  {
    // Get all the passed parameters
    params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    
    private _count = count (playableUnits + switchableUnits) + 2;
    
    // possible chairs
    private _chairs = ["Land_CampingChair_V1_F", _position, _count] call grad_zeus_fnc_createChairCircle;

  }] call Ares_fnc_RegisterCustomModule;



  ["LASTESEL", "Play revolt animation",
  {
    // Get all the passed parameters
    params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    if (isNull _objectUnderCursor) exitWith { hint "no unit selected"; };

    _objectUnderCursor playAction selectRandom [
        "ace_Gestures_point",
        "ace_Gestures_regroup",
        "ace_Gestures_hold",
        "ace_Gestures_engage",
        "ace_Gestures_warning"
    ];

  }] call Ares_fnc_RegisterCustomModule;
  

};