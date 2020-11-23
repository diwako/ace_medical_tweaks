class ace_medical_treatment_actions {
    class CheckPulse;
    class CheckResponse: CheckPulse {
        callbackSuccess = QFUNC(checkResponse);
    };
};
