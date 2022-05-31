#include "script_component.hpp"
class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"ace_medical_treatment", "ace_medical_damage"};
        author = "diwako";
        url = "https://github.com/diwako/diw_ace_medical";
        authorUrl = "https://github.com/diwako";
        license = "https://www.bohemia.net/community/licenses/arma-public-license-share-alike";
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"
#include "AceMedicalTreatmentActions.hpp"
#include "AceMedicalInjuries.hpp"
