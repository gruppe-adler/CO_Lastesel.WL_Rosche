#ifdef NIGHTVISION
  #define NVITEM "CLASSNAME"
#else
  #define NVITEM ""
#endif

#ifdef LASERS
  #define LLITEM "CLASSNAME"
#else
  #define LLITEM ""
#endif

#ifdef GUNLIGHTS
  #define LLITEM "CLASSNAME"
#else
  #define LLITEM
#endif

#ifdef SUPPRESSORS
  #define SUPPRESSORITEM "CLASSNAME"
#else
  #define SUPPRESSORITEM ""
#endif

class bundeswehrCustom: BwFleck {
    class AllUnits: AllUnits {

        uniform = "SMM_Uniform_BW_FT_RS";
        backpack = "SMM_AssaultPack_BW_FT";
    };
    /*
    class Type {
        //Rifleman
        class Soldier_F {
        };

        //Asst. Autorifleman
        class soldier_AAR_F: Soldier_F {

        };

        //Asst. Gunner (HMG/GMG)
        class support_AMG_F: Soldier_F {

        };

        //Asst. Missile Specialist (AA)
        class soldier_AAA_F: Soldier_F {

        };

        //Asst. Missile Specialist (AT)
        class soldier_AAT_F: Soldier_F {

        };

        //Autorifleman
        class soldier_AR_F: Soldier_F {

        };

        //Combat Life Saver
        class medic_F: Soldier_F {

        };

        //Explosive Specialist
        class soldier_exp_F: Soldier_F {

        };

        //Grenadier
        class Soldier_GL_F: Soldier_F {

        };

        //Heavy Gunner
        class HeavyGunner_F: Soldier_F {

        };

        //Marksman
        class soldier_M_F: Soldier_F {

        };

        //Missile Specialist (AA)
        class soldier_AA_F: Soldier_F {

        };

        //Missile Specialist (AT)
        class soldier_AT_F: Soldier_F {

        };

        //Repair Specialist
        class soldier_repair_F: Soldier_F {

        };

        //Rifleman (AT)
        class soldier_LAT_F: Soldier_F {

        };

        //Sniper
        class Sniper_F: Soldier_F {

        };

        //Squad Leader
        class Soldier_SL_F: Soldier_F {

        };

        //Spotter
        class Spotter_F: Soldier_F {

        };

        //Team Leader
        class Soldier_TL_F: Soldier_F {

        };
    };

    class Rank {
        class LIEUTENANT {
            headgear = "SMM_MilCap_BW_FT";
        };
    };
    */
};
