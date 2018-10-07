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

class wutBuerger: RuFlora {
    class AllUnits: AllUnits {

        primaryWeapon = "";
        primaryWeaponMagazine = "";
        primaryWeaponMuzzle = "";
        primaryWeaponPointer = "";
        primaryWeaponOptics = "";
        primaryWeaponUnderbarrel = "";
        primaryWeaponUnderbarrelMagazine = "";
        secondaryWeapon = "";
        secondaryWeaponMagazine = "";
        handgunWeapon = "";
        handgunWeaponMagazine = "";
        binoculars = "";

        uniform = "rds_uniform_Worker2";
        vest = "";
        backpack = "";
        headgear = "rds_Villager_cap2";

        addItemsToUniform[] = {
                LIST_4("rhs_mag_an_m14_th3")
            };
        addItemsToVest[] = {
                LIST_1("SmokeShell"),
                LIST_1("SmokeShellRed")
            };
        
    };
    
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
    

        //Obermotz
        class Survivor_F: Soldier_F {
            uniform = "rhs_uniform_mvd_izlom";
            secondaryWeapon = "rhs_weap_scorpion";
            vest = "rhs_vest_commander";
            backpack = "";
            headgear = "grad_beret_green";
            goggles = "TRYK_Beard_BW";

            addItemsToUniform[] = {

                LIST_1("rhs_mag_fakels"),
                LIST_1("rhs_mag_fakel"),
                LIST_1("rhs_mag_nspn_red"),
                LIST_1("rhs_mag_m18_red"),
                LIST_1("rhs_mag_m18_purple"),
                LIST_2("rhs_mag_an_m14_th3")
            };

            addItemsToVest[] = {
                LIST_2("rhsgref_20rnd_765x17_vz61")
            };
        };
        
    };
};
