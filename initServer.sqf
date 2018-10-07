["Initialize"] call BIS_fnc_dynamicGroups;

independent setFriend [east, 1];
east setFriend [independent, 1];

independent setFriend [west, 0];
west setFriend [independent, 0];