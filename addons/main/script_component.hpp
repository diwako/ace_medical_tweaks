#define COMPONENT main
#include "\z\diwako_ace_medical\addons\main\script_mod.hpp"

// #define DEBUG_MODE_FULL
// #define DISABLE_COMPILE_CACHE

#ifdef DEBUG_ENABLED_MAIN
  #define DEBUG_MODE_FULL
#endif
#ifdef DEBUG_SETTINGS_MAIN
  #define DEBUG_SETTINGS DEBUG_SETTINGS_MAIN
#endif

#include "\z\diwako_ace_medical\addons\main\script_macros.hpp"

// own stupid shit
#define QUADRUPLE(var1,var2,var3,var4) ##var1##_##var2##_##var3##_##var4

// ACE macros
#define ACEGVAR(var1,var2) TRIPLES(ace,var1,var2)
#define QACEGVAR(var1,var2) QUOTE(ACEGVAR(var1,var2))
#define ACEFUNC(var1,var2) QUADRUPLE(ace,var1,fnc,var2)
#define QACEFUNC(var1,var2) QUOTE(ACEFUNC(var1,var2))
