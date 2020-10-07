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

[
    QGVAR(tourniquetTime),
    "SLIDER",
    ["STR_diw_ace_medical_tourniquetTime", ""],
    [_cat, _curCat],
    [0.1, 14, 7, 1],
    true
] call CBA_fnc_addSetting;

[
    QGVAR(splintTime),
    "SLIDER",
    ["STR_diw_ace_medical_splintTime", ""],
    [_cat, _curCat],
    [0.1, 14, 7, 1],
    true
] call CBA_fnc_addSetting;

[
    QGVAR(bloodTime),
    "SLIDER",
    ["STR_diw_ace_medical_bloodTime", ""],
    [_cat, _curCat],
    [0.1, 24, 12, 1],
    true
] call CBA_fnc_addSetting;

[
    QGVAR(cprTime),
    "SLIDER",
    ["STR_diw_ace_medical_cprTime", ""],
    [_cat, _curCat],
    [0.1, 30, 15, 1],
    true
] call CBA_fnc_addSetting;

[
    QGVAR(pakMultiplier),
    "SLIDER",
    ["STR_diw_ace_medical_pakMultiplier", "STR_diw_ace_medical_pakMultiplier_desc"],
    [_cat, _curCat],
    [0.01, 5, 1, 2],
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
