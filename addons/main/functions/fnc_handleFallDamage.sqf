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
systemChat format ["hello %1", _typeOfDamage];
if (_typeOfDamage isNotEqualTo "falling") exitWith {_this};
private _copy = + _allDamages;
reverse _copy;
for "_i" from GVAR(fallDamageMaxWoundsCount) to ((count _copy) - 1)  do {
    _copy deleteAt 0;
    systemChat format ["deleting %1 | %2", _i, count _copy];
};
if (_copy isEqualTo []) exitWith {[]};
reverse _copy;

[_unit, _copy, _typeOfDamage]
