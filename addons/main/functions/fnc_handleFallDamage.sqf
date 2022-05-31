#include "script_component.hpp"
/*
 * Author: diwako
 * Handles fall damage form ace
 *
 * Arguments:
 * 0: Medic <OBJECT>
 * 1: Patient <OBJECT>
 *
 * Return Value:
 * Array of ACE damage info
 *
 * Example:
 * [player, cursorObject] call diw_ace_medical_fnc_handleFallDamage
 *
 * Public: No
 */
params ["_unit", "_allDamages", "_typeOfDamage"];
if (GVAR(fallDamageMaxBodyPartCount) isEqualTo 7) exitWith {_this};
if (GVAR(fallDamageMaxBodyPartCount) isEqualTo 0) exitWith {[]};
private _copy = _allDamages call BIS_fnc_arrayShuffle;
private _addDamage = 0;
private _lethality = 0;
for "_i" from GVAR(fallDamageMaxBodyPartCount) to ((count _copy) - 1)  do {
    private _deleted = _copy deleteAt 0;
    _addDamage = _addDamage + (_deleted select 0);
    _lethality = _lethality + (_deleted select 2);
};

{
    _x set [0, (_x select 0) + (_addDamage / GVAR(fallDamageMaxBodyPartCount))];
    _x set [2, (_x select 2) + (_lethality / GVAR(fallDamageMaxBodyPartCount))];
} forEach _copy;

[_unit, _copy, _typeOfDamage]
