params ["_unit", "_caller"];

if (!(local _unit)) exitWith { hint "group not yet local to server."; };

{
  

    _x setskill ["courage",1];
    _x setCombatMode "RED";
    _x ForceSpeed 10;
    _x allowFleeing 0;
    _x disableAI "COVER";
    _x SetUnitPos "UP";
    _x enableFatigue false;

    removeAllWeapons _x;
    _x addMagazineCargoGlobal ["HandGrenade"];

    private _callback = format ["%1 received molotov cocktail", _caller];
    [_callback] remoteExec ["systemChat", _caller];

    // check if unit is local, as fired has to be
    if (_x getVariable ["lastesel_firedAdded", false]) exitWith {};

    _x setVariable ["lastesel_firedAdded", true];


    _x addEventHandler ["Fired",
    {
        params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile"];

        if (!(isPlayer _unit)) then {

            private _velocity = velocity _projectile;
            private _position = getPos _projectile;
            deleteVehicle _projectile;

            private _grenade = selectRandom ["rhs_ammo_an_m14_th3"] createVehicle _position;
            _grenade setVelocity _velocity;
            
        };
    }];

} forEach units (group _unit);
