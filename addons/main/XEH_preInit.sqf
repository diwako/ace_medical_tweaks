#include "script_component.hpp"
ADDON = false;
#include "XEH_PREP.hpp"

#include "initSettings.sqf"

// mini functions, that do not need a file, or do not need PREP
FUNC(getHealTime) = {(_this call ACEFUNC(medical_treatment,getHealTime)) * GVAR(pakMultiplier)};
FUNC(tourniquetTime) = {GVAR(tourniquetTime)};
FUNC(splintTime) = {GVAR(splintTime)};
FUNC(bloodTime) = {GVAR(bloodTime)};
FUNC(cprTime) = {GVAR(cprTime)};

ADDON = true;
