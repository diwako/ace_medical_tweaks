private _cat = localize "STR_diw_ace_medical_mod";

// Treatment cat
private _curCat = localize "STR_ACE_Medical_Treatment_SubCategory_Treatment";
[
    QGVAR(checkResponse),
    "CHECKBOX",
    ["STR_diw_ace_medical_checkResponse", "STR_diw_ace_medical_checkResponse_desc"],
    [_cat, _curCat],
    true,
    true
] call CBA_fnc_addSetting;

// Damage cat
_curCat = localize "str_a3_normaldamage1";
[
    QGVAR(aiLimbDamage),
    "CHECKBOX",
    ["STR_diw_ace_medical_aiLimbDamage", "STR_diw_ace_medical_aiLimbDamage_desc"],
    [_cat, _curCat],
    true,
    true
] call CBA_fnc_addSetting;

[
    QGVAR(aiLimbThresholdMultiplier),
    "SLIDER",
    ["STR_diw_ace_medical_aiLimbThresholdMultiplier", "STR_diw_ace_medical_aiLimbThresholdMultiplier_desc"],
    [_cat, _curCat],
    [0.1, 24, 12, 1],
    true
] call CBA_fnc_addSetting;

[
    QGVAR(fallDamageMaxBodyPartCount),
    "SLIDER",
    ["STR_diw_ace_medical_fallDamageMaxBodyPartCount", "STR_diw_ace_medical_fallDamageMaxBodyPartCount_desc"],
    [_cat, _curCat],
    [0, 7, 3, 0],
    true,
    {
        params ["_value"];
        GVAR(fallDamageMaxBodyPartCount) = round _value;
    }
] call CBA_fnc_addSetting;

