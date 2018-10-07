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

                LIST_1("rhs_mag_fakels"),
                LIST_1("rhs_mag_fakel"),
                LIST_1("rhs_mag_nspn_red"),
                LIST_1("rhs_mag_m18_red"),
                LIST_1("rhs_mag_m18_purple"),
                LIST_2("rhs_mag_an_m14_th3")
            };
        addItemsToVest[] = {
                LIST_2("rhs_mag_an_m14_th3")
            };
        
    };
    
    class Type {
        //Obermotz
        class Survivor_F {
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
