
/*
	[group this] execVM "GetKit.sqf";
*/
Params ["_Group"];

_Uniforms = [];
_Vests = [];
_Backpacks = [];
_Goggles = [];
_Helmets = [];

{
	_Uniforms pushBackUnique (uniform _X);
	_Vests pushBackUnique (vest _X);
	_Backpacks pushBackUnique (backpack _X);
	_Goggles pushBackUnique (goggles _X);
	_Helmets pushBackUnique (headgear _X);
} foreach units _Group;

CopyToClipboard str [_Uniforms,_Vests,_Backpacks,_Goggles,_Helmets];

/*
[
	["U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_2_F","U_I_C_Soldier_Para_1_F","U_I_C_Soldier_Para_5_F"],
	["V_Chestrig_blk","V_BandollierB_blk","V_Chestrig_khk","V_TacVest_oli","V_BandollierB_rgr","V_Chestrig_oli"]
	["B_FieldPack_blk_Bandit_8_F","B_Kitbag_rgr_Para_3_F","B_FieldPack_cb_Bandit_3_F","B_Kitbag_cbr_Bandit_2_F","B_FieldPack_khk_Bandit_1_F","B_Kitbag_rgr_Para_8_F","B_Kitbag_cbr_Para_5_F"],
	["G_Shades_Blue","G_Bandanna_aviator","G_Bandanna_beast","G_Bandanna_blk","G_Bandanna_oli","G_Bandanna_sport","G_Shades_Black","G_Bandanna_shades"],
	["H_Cap_blk_Syndikat_F","H_Booniehat_tan","H_Booniehat_oli","H_Bandanna_sgg","H_Bandanna_camo","H_Bandanna_sand","H_Cap_marshal","H_Bandanna_surfer_blk","H_Bandanna_khk"]
]