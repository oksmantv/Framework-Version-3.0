

params ["_target", "_caller", "_actionId", "_arguments"];
_Unit = _caller;

_goggles = "G_Balaclava_TI_blk_F";
_helmet = "H_HelmetSpecO_blk";
_uniform = "UK3CB_LSM_B_U_Crew_CombatSmock_01";
_vest = "UK3CB_TKA_B_V_GA_HEAVY_BLK";

_oldUniformItems = uniformItems _Unit;
_oldVestItems = vestItems _Unit;

removeVest _Unit;
removeUniform _Unit;
removeHeadgear _Unit;
removeGoggles _Unit;

_Unit addUniform _uniform;
_Unit addVest _vest;
_Unit addGoggles _goggles;
_Unit addHeadgear _helmet;

{_Unit addItemToUniform _X} foreach _oldUniformItems;
{_Unit addItemToVest _X} foreach _oldVestItems;
