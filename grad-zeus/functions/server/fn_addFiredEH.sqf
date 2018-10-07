params ["_unit"];

_unit setskill ["courage",1];
_unit setCombatMode "RED";
_unit ForceSpeed 10;
_unit allowFleeing 0;
_unit disableAI "COVER";
_unit SetUnitPos "UP";
_unit enableFatigue false;


_unit addEventHandler ["Fired",
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
