#include "script_component.hpp"

[QACEGVAR(medical,woundReceived), {
    params ["_unit"];
    if (!GVAR(aiLimbDamage) || {isPlayer _unit || {ACEGVAR(medical,fatalDamageSource) isEqualTo 0}}) exitWith {};
    [{
        params ["_unit", "_bodyPart", "_damage", "", "_typeOfDamage"];
        private _bodyPartN = ["head", "body", "leftarm", "rightarm", "leftleg", "rightleg"] find toLower _bodyPart;
        if (_bodyPartN < 2) exitWith {};

        if ((_typeOfDamage isEqualTo "") || {isNil {ACEGVAR(medical_damage,allDamageTypesData) getVariable _typeOfDamage}}) then {
            _typeOfDamage = "unknown";
        };
        private _damageTypeInfo = [QACEGVAR(medical_damage,allDamageTypesData) getVariable _typeOfDamage] param [0, [[], false, []]];
        _damageTypeInfo params ["_thresholds"];

        (_unit getVariable [QACEGVAR(medical,bodyPartDamage), [0,0,0,0,0,0]]) params ["", "", "_leftarmDamage", "_rightarmDamage", "_leftlegDamage", "_rightlegDamage"];
        {
            _x params ["_thresholdMinDam", "_thresholdWoundCount"];
            if (_damage > _thresholdMinDam) exitWith {
                private _woundDamage = _damage / (_thresholdWoundCount max 1);
                private _limbThreshhold = 12 * ACEGVAR(medical,AIDamageThreshold);
                private _vitalDamage = ((_leftarmDamage + _rightarmDamage + _leftlegDamage + _rightlegDamage) - _limbThreshhold) max 0;
                private _chanceFatal = 1 - exp -((_vitalDamage/ACEGVAR(medical,const_fatalSumDamageWeibull_L))^ACEGVAR(medical,const_fatalSumDamageWeibull_K));

                if (_chanceFatal > random 1) then {
                    [QACEGVAR(ace_medical,FatalInjury), _unit] call CBA_fnc_localEvent;
                };
            };
        } forEach _thresholds;
    }, _this] call CBA_fnc_execNextFrame;
}] call CBA_fnc_addEventHandler;
