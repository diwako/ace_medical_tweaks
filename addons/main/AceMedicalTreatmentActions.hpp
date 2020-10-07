class ace_medical_treatment_actions {
    class CheckPulse;
    class BasicBandage;
    class FieldDressing;
    class CheckResponse: CheckPulse {
        callbackSuccess = QFUNC(checkResponse);
    };
    class ApplyTourniquet: BasicBandage {
        treatmentTime = QFUNC(tourniquetTime);
    };
    class Splint: BasicBandage {
        treatmentTime = QFUNC(splintTime);
    };
    class BloodIV: BasicBandage {
        treatmentTime = QFUNC(bloodTime);
    };
    class CPR: BasicBandage {
        treatmentTime = QFUNC(cprTime);
    };
    class PersonalAidKit: BasicBandage {
        treatmentTime = QFUNC(getHealTime)
    };
};
