params ["_vehicle"];

if (local _vehicle) then {

    {
         _vehicle lockCargo [_x, true];
    } forEach [1,2,3,4,5,6,7,8,9,10,10,11];
   
};