class ACE_Medical_Injuries {
    class damageTypes {
        class woundHandlers;
        class collision {
            class woundHandlers: woundHandlers {
                ADDON = QFUNC(handleFallDamage);
                // aaaaaaaaaaa = QFUNC(handleFallDamage);
            };
        };
        class falling {
            class woundHandlers: woundHandlers {
                ADDON = QFUNC(handleFallDamage);
                // aaaaaaaaaaa = QFUNC(handleFallDamage);
            };
        };
    };
};
