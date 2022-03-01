#include "script_component.hpp"

[QACEGVAR(medical,woundReceived), {
    params ["_unit"];
    if (!GVAR(aiLimbDamage) || {isPlayer _unit || {ACEGVAR(medical,fatalDamageSource) isEqualTo 0}}) exitWith {};
    [{
        params ["_unit", "", "", "_typeOfDamage"];
        if ((_typeOfDamage isEqualTo "") || {isNil {ACEGVAR(medical_damage,allDamageTypesData) getVariable _typeOfDamage}}) then {
            _typeOfDamage = "unknown";
        };
        private _bodyPartDamage = _unit getVariable [QACEGVAR(medical,bodyPartDamage), [0,0,0,0,0,0]];
        _bodyPartDamage params ["", "", "_leftArmDamage", "_rightArmDamage", "_leftLegDamage", "_rightLegDamage"];

        private _damageThreshold = (_unit getVariable [QACEGVAR(medical,damageThreshold), ACEGVAR(medical,AIDamageThreshold)]) * 4;

        if ((_leftArmDamage + _rightArmDamage + _leftLegDamage + _rightLegDamage) > _damageThreshold) then {
            [QACEGVAR(medical,FatalInjury), _unit] call CBA_fnc_localEvent;
        };
    }, _this] call CBA_fnc_execNextFrame;
}] call CBA_fnc_addEventHandler;
