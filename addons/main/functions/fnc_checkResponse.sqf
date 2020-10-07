#include "script_component.hpp"
/*
 * Author: Glowbal, diwako
 * Modified copy from ace_medical_treatment_fnc_checkResponse
 * Checks the response status of the patient.
 *
 * Arguments:
 * 0: Medic <OBJECT>
 * 1: Patient <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [player, cursorObject] call diw_ace_medical_fnc_checkResponse
 *
 * Public: No
 */

params ["_medic", "_patient"];

if (GVAR(checkResponse)) then {
    private _output = [localize "STR_ACE_Medical_Treatment_Check_Response_Unresponsive", localize "STR_ACE_Medical_Treatment_Check_Response_Responsive"] select (_patient call ACEFUNC(common,isAwake));

    _output = format ["%1 (%2)", _output, [localize "STR_ACE_Medical_Treatment_Triage_Status_Deceased", localize "STR_ACE_Medical_Treatment_diagnoseAlive"] select (alive _patient)];
    [[_output, _patient call ACEFUNC(common,getName)], 2] call ACEFUNC(common,displayTextStructured);

    [_patient, "quick_view", _output, [[_patient, false, true] call ACEFUNC(common,getName)]] call ACEFUNC(medical_treatment,addToLog);
} else {
    _this call ACEFUNC(medical_treatment,checkResponse);
};
