/*
	AUTHOR: GuzzenVonLidl
	Description:
		What case tha should be called for the zone player is in
	Usage:
		null = [1] spawn GW_Fnc_spawnList;
	Parameters:
		#0: Number:	Activate zone
	Returning Value:
		None
*/



#include "script_Component.hpp"
#define	COMPONENT spawnList

if !(isServer) exitWith {false};

Private _Vehicles = ["UK3CB_TKA_O_BMP1", "UK3CB_TKA_O_BMP2", "UK3CB_TKA_O_BTR80a"];

params [
	"_case"
];

switch (_case) do {

	case 1: {

		// Trenches First Objective
		[[[[1769.85,13887.6,7.62939e-006],234,"Up",[]],[[1778.72,13876.8,9.53674e-006],234,"Up",[]],[[1789.61,13863.3,9.53674e-006],234,"Up",[]],[[1800.74,13858.9,9.53674e-006],150,"Up",[]],[[1813.81,13864.9,9.53674e-006],151,"Up",[]],[[1830.16,13872.6,9.53674e-006],151,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[1778.36,13939.3,1.71661e-005],200,"Up",[]],[[1770.9,13947.6,7.62939e-005],229,"Up",[]],[[1755.52,13967.3,2.28882e-005],231,"Up",[]],[[1738.72,13987.9,1.14441e-005],275,"Up",[]],[[1729.7,14019.4,9.53674e-006],254,"Up",[]],[[1734.02,14061.6,9.53674e-006],256,"Up",[]],[[1743.25,14077.7,1.90735e-006],326,"Up",[]],[[1766.31,14083.8,9.53674e-006],334,"Up",[]],[[1787.95,14072.3,9.53674e-006],326,"Up",[]],[[1811.08,14046.4,1.14441e-005],266,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		
		// Building 1
		[[[[1875.35,13966.2,3.61084],325,"Up",[]],[[1879.14,13968.7,3.56811],325,"Up",[]],[[1883.48,13957.4,0.198799],20,"Up",[]],[[1879.13,13968.2,0.728174],322,"Up",[]],[[1877.66,13963.9,0.934629],229,"Up",[]],[[1883.67,13969,0.963688],149,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Building 2
		[[[[1870.6,14010.6,0.386303],102,"Up",[]],[[1865.83,14008.2,0.608234],132,"Up",[]],[[1884.62,13989.9,0.272675],229,"Up",[]],[[1882.6,13986,-1.90735e-006],316,"Up",[]],[[1860.94,14008.5,0],229,"Up",[]],[[1867.2,13985.9,-1.90735e-006],154,"Up",[]],[[1865.5,13990.8,0.42959],85,"Up",[]],[[1873.32,13995.4,0.476789],67,"Up",[]],[[1874.93,13985.4,0.464333],148,"Up",[]],[[1876.91,13988.2,0.441971],344,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Dynamic Zone
		[Trigger_1,false,[0,16,false,false],west,0,2,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		// Patrols.
		[[[[1813.97,13844.8,0],0,[]],[[1818.97,13842.8,1.90735e-006],0,[]]],[],[[[1954.67,13860.4,0],[[0,"Move"],[1,"SAFE"]]],[[1929.41,13934,9.53674e-006],[[0,"Move"]]],[[1821.5,13850.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1811.29,13971.3,1.0354],0,[]],[[1816.29,13969.3,1.31676],0,[]]],[],[[[1888.88,14001.5,0],[[0,"Move"],[1,"SAFE"]]],[[1834.73,14056.5,0],[[0,"Move"]]],[[1818.82,13977.3,1.3032],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1930.07,14054.5,0],163,[]],[[1924.7,14055,1.90735e-006],163,[]]],[],[[[1908.3,13995.6,0],[[0,"Move"],[1,"SAFE"]]],[[1980.46,13953.7,0],[[0,"Move"]]],[[1924.66,14046.6,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[1820.77,14093.9,0],0,[]],[[1825.77,14091.9,0],0,[]]],[],[[[1870.66,14038.6,0],[[0,"Move"],[1,"SAFE"]]],[[1916.44,13956.5,0],[[0,"Move"]]],[[1828.3,14099.8,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
	
		// Vehicles
		[[],[["UK3CB_TKA_O_BMP1",[1787.03,13904.8,0],267,[["driver",-1,[]],["cargo",-1,[0]],["gunner",-1,[1]]],[[6,["TKA",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKA_O_BMP1",[1934.35,14009.2,0],236,[["driver",-1,[]],["cargo",-1,[0]],["gunner",-1,[1]]],[[6,["TKA",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKA_O_BMP1",[1849.06,14046.2,0],310,[["driver",-1,[]],["cargo",-1,[0]],["gunner",-1,[1]]],[[6,["TKA",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		{
			[west,_X,getpos target_1,5,180,180] spawn OKS_ArtyFire; sleep 10;
		} foreach [arty_1,arty_2];

		[hunt_1, hunt_1, HUNT_TRIGGER_1, 2,900,west,_Vehicles,300] spawn NEKY_Hunt_HuntBase;
		[hunt_2, hunt_2, HUNT_TRIGGER_1, 2,900,west,_Vehicles,300] spawn NEKY_Hunt_HuntBase;

		[[],[["UK3CB_TKA_O_T72B",[1876.95,13903.9,1.90735e-006],266,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]],[7,["Tanks_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {

		// Trenches Second Objective
		[[[[3298.32,14371.1,4.62532e-005],305,"Up",[]],[[3322.33,14397.7,4.57764e-005],305,"Up",[]],[[3345.77,14422.7,4.76837e-005],305,"Up",[]],[[3374.51,14444.8,4.673e-005],305,"Up",[]],[[3398.8,14460.9,4.673e-005],305,"Up",[]],[[3294.86,14349.7,4.673e-005],256,"Up",[]],[[3297.3,14319.1,4.76837e-005],267,"Up",[]],[[3296.7,14287.7,4.57764e-005],242,"Up",[]],[[3301.64,14264.2,4.673e-005],226,"Up",[]],[[3322.31,14220.8,4.57764e-005],223,"Up",[]],[[3336.72,14194.9,4.673e-005],208,"Up",[]],[[3360.56,14165.4,4.673e-005],201,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[3457.16,13889.7,4.673e-005],253,"Up",[]],[[3462.96,13876.7,0],253,"Up",[]],[[3470.67,13867.6,4.673e-005],204,"Up",[]],[[3509.64,13879.1,4.673e-005],346,"Up",[]],[[3545.07,13892.5,4.673e-005],323,"Up",[]],[[3563.24,13919.6,4.673e-005],253,"Up",[]],[[3589.57,13964.7,4.673e-005],357,"Up",[]],[[3633.39,13990.7,4.57764e-005],177,"Up",[]],[[3671.39,14006.1,4.673e-005],129,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Building 3
		[[[[3535.58,14298.8,0],276,"Middle",[]],[[3518.63,14306,3.17271],235,"Middle",[]],[[3522.36,14307.4,3.26873],55,"Middle",[]],[[3516.95,14299.5,0.385868],239,"Up",[]],[[3521.15,14305.4,0.298468],7,"Up",[]],[[3527.75,14321.6,0],248,"Up",[]],[[3522.12,14327.1,0.335119],167,"Up",[]],[[3514.61,14316.6,0],101,"Up",[]],[[3517.98,14296.9,3.09471],197,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Building 4
		[[[[3530.49,14230.2,9.53674e-007],332,"Up",[]],[[3529.92,14244.3,0.247711],197,"Up",[]],[[3537.54,14244.8,0.866832],351,"Up",[]],[[3540.62,14244.5,1.05787],77,"Up",[]],[[3540.75,14239.2,1.16031],218,"Up",[]],[[3529.5,14245.2,3.27509],332,"Up",[]],[[3539.5,14246.7,3.70325],53,"Up",[]],[[3538.61,14238,3.56875],173,"Middle",[]],[[3547.16,14247.5,0],195,"Middle",[]],[[3549.98,14228.6,0.793254],308,"Middle",[]],[[3539.26,14225.2,0.457289],355,"Middle",[]],[[3543.78,14229.1,0.511127],342,"Up",[]],[[3549.2,14228.6,3.83253],82,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Dynamic Zone
		[Trigger_2,false,[0,26,false,false],west,0,2,1,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;

		// Patrol
		[[[[3456.04,13975.3,9.53674e-007],337,[]],[[3461.43,13975.4,4.76837e-007],337,[]]],[],[[[3579.61,14044.4,9.53674e-007],[[0,"Move"],[1,"SAFE"]]],[[3527.72,14102.4,1.04904e-005],[[0,"Move"]]],[[3460.67,13983.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3473.7,14158.5,9.53674e-007],282,[]],[[3476.73,14163,9.53674e-007],282,[]]],[],[[[3473.43,14303.6,3.50651],[[0,"Move"],[1,"SAFE"]]],[[3411.41,14290.5,1.23978e-005],[[0,"Move"]]],[[3469.52,14167.2,9.53674e-007],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3390.08,14369.3,9.53674e-007],19,[]],[[3394.17,14365.8,9.53674e-007],19,[]]],[],[[[3498.29,14347.9,3.50651],[[0,"Move"],[1,"SAFE"]]],[[3470.47,14482.3,0],[[0,"Move"]]],[[3399.12,14372.5,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3585.15,14188.5,0],282,[]],[[3588.18,14193,0],282,[]]],[],[[[3608.05,14256.3,3.5065],[[0,"Move"],[1,"SAFE"]]],[[3525.98,14255.6,0],[[0,"Move"]]],[[3580.97,14197.1,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[3590.02,14306.8,0],212,[]],[[3586.88,14311.2,9.53674e-007],212,[]]],[],[[[3553.84,14378.5,3.50649],[[0,"Move"],[1,"SAFE"]]],[[3505.81,14288.1,0],[[0,"Move"]]],[[3580.48,14305.9,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Vehicles
		[[],[["UK3CB_TKA_O_BMP1",[3500.18,13920.6,0],257,[["driver",-1,[]],["cargo",-1,[0]],["gunner",-1,[1]]],[[6,["TKA",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKA_O_BMP1",[3322.01,14290.3,0],260,[["driver",-1,[]],["cargo",-1,[0]],["gunner",-1,[1]]],[[6,["TKA",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKA_O_BMP1",[3558.58,14261.7,0],170,[["driver",-1,[]],["cargo",-1,[0]],["gunner",-1,[1]]],[[6,["TKA",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKA_O_BMP1",[3586.17,14372.8,0],273,[["driver",-1,[]],["cargo",-1,[0]],["gunner",-1,[1]]],[[6,["TKA",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		{
			[west,_X,getpos target_1,5,180,180] spawn OKS_ArtyFire; sleep 10;
		} foreach [arty_3];

		[aaa_1,west,false,1500,true] spawn GW_Ambient_AAA;

		[hunt_6, hunt_6, HUNT_TRIGGER_2, 2,900,west,_Vehicles,300] spawn NEKY_Hunt_HuntBase;
		[hunt_3, hunt_3, HUNT_TRIGGER_2, 2,900,west,_Vehicles,300] spawn NEKY_Hunt_HuntBase;
		[hunt_4, hunt_4, HUNT_TRIGGER_2, 2,900,west,_Vehicles,300] spawn NEKY_Hunt_HuntBase;

		[[],[["UK3CB_TKA_O_T72B",[3470.45,14187.7,0],180,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]],[7,["Tanks_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

	};

	case 3: {

		// Trenches Third Objective.
		[[[[5413.9,14728.1,9.53674e-007],39,"Up",[]],[[5394.57,14741.1,9.53674e-007],20,"Up",[]],[[5359.62,14763.2,9.53674e-007],351,"Up",[]],[[5327.07,14752.3,9.53674e-007],307,"Up",[]],[[5289,14734.7,9.53674e-007],306,"Up",[]],[[5268.69,14717.4,9.53674e-007],297,"Up",[]],[[5250.49,14699.1,9.53674e-007],294,"Up",[]],[[5231.35,14680.8,0],305,"Up",[]],[[5219.15,14658.9,1.90735e-006],274,"Up",[]],[[5213.78,14633.3,1.90735e-006],270,"Up",[]],[[5208.49,14608.5,9.53674e-007],223,"Up",[]],[[5211.42,14599.9,1.90735e-006],255,"Up",[]],[[5268.16,14589.3,9.53674e-007],149,"Up",[]],[[5240.65,14593.9,9.53674e-007],192,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5323.16,14292,0],292,"Up",[]],[[5314.87,14275.6,0],283,"Up",[]],[[5311.33,14260.7,0],254,"Up",[]],[[5328.01,14242.3,0],224,"Up",[]],[[5346.82,14220.4,0],203,"Up",[]],[[5368.45,14197.2,0],204,"Up",[]],[[5400.09,14166.1,0],219,"Up",[]],[[5422.16,14147,0],242,"Up",[]],[[5449.49,14140.3,0],168,"Up",[]],[[5475.01,14135.1,-9.53674e-007],172,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5741.71,14360.8,0],275,"Up",[]],[[5755.41,14358.8,0],217,"Up",[]],[[5780.88,14355.4,0],199,"Up",[]],[[5795.87,14355.7,9.53674e-007],160,"Up",[]],[[5814.18,14376.9,0],107,"Up",[]],[[5829.04,14396.6,0],116,"Up",[]],[[5837.14,14416.1,0],78,"Up",[]],[[5840.25,14431.8,0],67,"Up",[]],[[5844.11,14450.7,0],76,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5832.61,14477.7,0],56,"Up",[]],[[5812.97,14504.1,0],53,"Up",[]],[[5798.33,14530.9,9.53674e-007],42,"Up",[]],[[5784.83,14560.2,0],78,"Up",[]],[[5767.88,14580.8,0],358,"Up",[]],[[5747.56,14588.2,9.53674e-007],356,"Up",[]],[[5724.54,14595.5,3.8147e-006],343,"Up",[]],[[5693.53,14605.8,1.90735e-006],301,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Building 5
		[[[[5374.72,14578.4,0.216167],157,"Up",[]],[[5381.86,14576.3,9.53674e-007],136,"Up",[]],[[5391.75,14557.4,0.31256],233,"Up",[]],[[5386.35,14565.1,0.163833],153,"Up",[]],[[5373.12,14575.1,0.214449],137,"Up",[]],[[5369.32,14576.7,0],164,"Up",[]],[[5374.42,14553.6,0],156,"Up",[]],[[5382.18,14552.8,1.17929],138,"Up",[]],[[5380.17,14562.6,1.04057],138,"Up",[]],[[5373.35,14556.8,0.218518],201,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Building 6
		[[[[5490.63,14245.5,0],192,"Up",[]],[[5488.79,14256.5,0],93,"Up",[]],[[5474.26,14255.3,0],84,"Up",[]],[[5478.12,14244.1,0],12,"Up",[]],[[5485.28,14250,0.442188],357,"Up",[]],[[5484.16,14242.8,0.381714],88,"Up",[]],[[5483.91,14245.9,0.350405],282,"Middle",[]],[[5484.66,14242.3,3.19473],284,"Middle",[]],[[5482.05,14248.8,3.01899],289,"Middle",[]],[[5486.53,14248.2,3.13042],79,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		// Building 7
		[[[[5696.83,14480.1,0],75,"Up",[]],[[5719.84,14468.8,-9.53674e-007],292,"Up",[]],[[5704.85,14459.8,9.53674e-007],1,"Up",[]],[[5695.24,14461.8,0.205056],85,"Up",[]],[[5694.26,14469.7,1.09658],236,"Up",[]],[[5701.69,14472.3,3.90657],88,"Up",[]],[[5695.88,14461.7,3.19547],168,"Up",[]],[[5693.73,14464.7,3.30048],263,"Up",[]],[[5693.63,14472.7,3.83394],329,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[5705.14,14498.9,0],341,"Up",[]],[[5686.58,14504.5,0],76,"Up",[]],[[5706.19,14507.9,0.229926],100,"Up",[]],[[5714.49,14510.6,0.365377],103,"Up",[]],[[5713.05,14500.4,0.985887],172,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	
		// Patrol
		[[[[5339.71,14299.1,0],282,[]],[[5342.74,14303.5,0],282,[]]],[],[[[5424.7,14402.1,0],[[0,"Move"],[1,"SAFE"]]],[[5264.52,14419.7,0],[[0,"Move"]]],[[5335.54,14307.7,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5316.26,14482.4,1.90735e-006],282,[]],[[5319.29,14486.9,9.53674e-007],282,[]]],[],[[[5363.13,14694.5,3.50651],[[0,"Move"],[1,"SAFE"]]],[[5253,14635.6,1.90735e-006],[[0,"Move"]]],[[5312.08,14491.1,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5615.15,14341.8,0],282,[]],[[5618.18,14346.2,0],282,[]]],[],[[[5540.92,14499.8,3.50651],[[0,"Move"],[1,"SAFE"]]],[[5461.88,14475.8,0],[[0,"Move"]]],[[5503.52,14302.7,1.90735e-006],[[0,"Move"]]],[[5606.64,14338.5,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5588.89,14272.1,0],227,[]],[[5586.95,14277.2,0],227,[]]],[],[[[5451.53,14272,0],[[0,"Move"],[1,"SAFE"]]],[[5423.6,14192,0],[[0,"Move"]]],[[5557.59,14158.1,0],[[0,"Move"]]],[[5588.13,14263.8,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5740.22,14335.7,1.90735e-006],282,[]],[[5743.25,14340.1,1.90735e-006],282,[]]],[],[[[5682.35,14465,3.5065],[[0,"Move"],[1,"SAFE"]]],[[5577.35,14431,0],[[0,"Move"]]],[[5634.2,14296.9,0],[[0,"Move"]]],[[5731.71,14332.4,1.90735e-006],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5762.62,14439.4,9.53674e-007],282,[]],[[5765.64,14443.9,9.53674e-007],282,[]]],[],[[[5721.1,14527.1,3.5065],[[0,"Move"],[1,"SAFE"]]],[[5670.33,14545.8,9.53674e-007],[[0,"Move"]]],[[5691.76,14418.2,0],[[0,"Move"]]],[[5754.1,14436.1,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[5522.28,14559.2,1.90735e-006],282,[]],[[5525.31,14563.6,1.90735e-006],282,[]]],[],[[[5427.75,14666.6,3.50648],[[0,"Move"],[1,"SAFE"]]],[[5358.39,14619.4,1.05668],[[0,"Move"]]],[[5443.38,14514.3,0],[[0,"Move"]]],[[5524.91,14553.1,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		// Vehicle
		[[],[["UK3CB_TKA_O_BMP1",[5325.32,14302.7,9.53674e-007],267,[["driver",-1,[]],["cargo",-1,[0]],["gunner",-1,[1]]],[[6,["TKA",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKA_O_BMP1",[5231.73,14639.6,0],198,[["driver",-1,[]],["cargo",-1,[0]],["gunner",-1,[1]]],[[6,["TKA",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKA_O_BMP1",[5392.86,14582.9,0],140,[["driver",-1,[]],["cargo",-1,[0]],["gunner",-1,[1]]],[[6,["TKA",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKA_O_BMP1",[5528.2,14312.2,1.90735e-006],262,[["driver",-1,[]],["cargo",-1,[0]],["gunner",-1,[1]]],[[6,["TKA",1]]]]],[]] call GW_Common_fnc_spawnGroup;
		[[],[["UK3CB_TKA_O_BMP1",[5733.31,14506.5,0],325,[["driver",-1,[]],["cargo",-1,[0]],["gunner",-1,[1]]],[[6,["TKA",1]]]]],[]] call GW_Common_fnc_spawnGroup;

		{
			[west,_X,getPos target_2,10,180,180] spawn OKS_ArtyFire; sleep 10;
		} foreach [arty_4,arty_5];

		[aaa_2,west,false,1500,true] spawn GW_Ambient_AAA;
		[aaa_3,west,false,1500,true] spawn GW_Ambient_AAA;

		[hunt_5, hunt_5, HUNT_TRIGGER_3, 2,900,west,_Vehicles,300] spawn NEKY_Hunt_HuntBase;
		[hunt_7, hunt_7, HUNT_TRIGGER_3, 2,900,west,_Vehicles,300] spawn NEKY_Hunt_HuntBase;

		[[],[["UK3CB_TKA_O_T72B",[5428.88,14563.9,0],232,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]],[7,["Tanks_Hide",0]]]],["UK3CB_TKA_O_T72B",[5510.38,14240.6,0],169,[["driver",-1,[]],["gunner",-1,[0]],["commander",-1,[0,0]]],[[6,["TKA",1]],[7,["Tanks_Hide",0]]]]],[]] call GW_Common_fnc_spawnGroup;

	};

	case 4: {
	};

	case 5: {
	};

	case 6: {
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};

/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

		/*
		   Dynamic Script Params
		   0 - Trigger Name (Object)
		   1 - Disabled - Keep False
		   2 - Number of Infantry - [Static Integer,Patrol Integer,CreateSectorObjective?,LocalPatrols?] (Array) -
		   3 - Wheeled Patrols (Integer/Number)
		   4 - APC Patrols (Integer/Number)
		   5 - Tank Patrols (Integer/Number)
		   6 - Roadblocks [RoadBlocksCount,OnlyOnTarmac,LocalPatrols?,NumberChanceForVehicle(0-1)] (Array)
		   7 - Mortar Pits [MortarCount,LocalPatrols?] (Array)
		   8 - Random Objectives [ObjectiveCount,LocalPatrols?] (Array)
		   9 - Hunt Array Bases [Infantry,Wheeled,APC,Tank,Helicopter]
		   10 - Dynamic Civilians on? (Boolean)

			Local Patrols - This means that the strongpoints / roadblocks / mortar pits / objectives have their own local patrols near their position.
			If you use it on Parameter 2, 30% of the static contacts will be turned into patrols.

		   Note:
		   The Dynamic Scripts does work on its own however is very limited in selecting positions for strongpoints.
		   You as an editor can assist the dynamic script by placing down locations for pinpointing different positions.
		   In Eden-Editor "Location"s can be found in Systems (F5) and Game Logics > Locations.

		   Area, Base, City, Evac Point, Resupply Point & Town -> Spawns Strongpoints & Sector Tasks (Selects Random Buildings in Area. Generally more contacts per building)
		   Outpost -> Spawns Compounds & Sector Tasks (Selects all buildings in range of compoundSize (Settings) and spawns even-spread over all buildings)
		   FOB -> Spawns Roadblocks, use the direction of the logic to define the direction of the roadblock.
		   Respawn Point -> If you use HuntBases these locations will be picked, use the direction of the logic to choose the spawn direction 15-25m away from logic.
		   Camp -> Static Objective positions, once again direction of logic defines direction of Objective compositions.
		   Village -> Defines village area for the Dynamic Civilian presence, radius is found in Settings.sqf

		   All Locations are not required, the script will find its own locations, however for the best experience and best result, help the dynamic script by placing these logics.

		   Example:
		   [Trigger_1,false,[0,0,false,false],east,0,0,0,[0,true,false,0],[0,false],[0,false],[0,0,0,0,0],false] spawn OKS_CreateZone;
		*/

		/* Example of Dynamic Scripts */
		/*
		if(isServer) then {
			waitUntil{sleep 5; !(isNil "OKS_CreateZone")};

			//// START OF ZONE /////
			[	Trigger_1,  // Name of Trigger used as Spawn Area
				false, 		// DO NOT EDIT
				[
					8,      // Number of Static Infantry - Preferred Game Logic Location 'Outpost'"
					25,		// Number of Patrolling Infantry
					false,  // Create Sector Objective on Garrison?
					false   // Should have dedicated patrols near static positions
				],
				east, // Side of Enemy
				0,    // Number of Wheeled on Patrol
				0,    // Number of APCs on Patrol
				0,    // Number of Tanks on Patrol
				[
					0,     // Number of Roadblocks - Preferred Game Logic Location 'FOB'"
					true,  // Should be on tarmac.
					false, // Should have dedicated patrol.
					0  	   // Chance for Static Vehicle (1 = 100%, 0.5 = 50%)
				],
				[
					0,     // Number of Mortars
					false  // Should have dedicated patrols around it
				],[
					0,    // Number of Random Objectives - Preferred Game Logic Location 'Camp'"
					false // Should have dedicated patrols around it
				],
				[0,0,0,0,0] // Infantry, Wheeled, APCs, Tanks, Air Assault - Hunt Bases - Preferred Game Logic Location 'Respawn Point'"
				,false      // Should Enable Civilian Presence - Required Game Logic Location 'Village'"
			] spawn OKS_CreateZone;
			//// END OF ZONE ////

		};
/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

		/*
		   	HuntBase Params

		   	0 - Base Object (Object)
		   	1 - Spawn Object (Object)
		   	2 - Hunt Trigger (Trigger)
		   	3 - Wave Count (Integer/Number)
		   	4 - Respawn Delay in Seconds (Integer/Number)
		   	5 - Enemy Side (Side)
		   	6 - Unit Selection - (Integer/String/Array with Strings)
		   	7 - Refresh Rate in Seconds (Integer/Number)

			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,30,independent,6,30] spawn NEKY_Hunt_HuntBase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,"CUP_I_LR_MG_AAF",30] spawn NEKY_Hunt_HuntBase;
			[Base_2, Spawn_2, NEKY_Hunt_Trigger_1, 5,30,independent,["CUP_I_LR_MG_AAF","CUP_I_LR_MG_AAF"],30] spawn NEKY_Hunt_HuntBase;
		*/
		/* Example of Hunt Bases */
		/*
		if(isServer && GOL_NEKY_HUNT isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "NEKY_Hunt_HuntBase")};
			[Base_1, Spawn_1, NEKY_Hunt_Trigger_1, 5,3000+(random 300),east,6,120+(120)] spawn NEKY_Hunt_HuntBase;
		};

/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

		/*
		   AirBase Params

		   0 - Base Object (Object)
		   1 - Spawn Object (Object)
		   2 - Hunt Trigger (Trigger)
		   3 - Enemy Side (Side)
		   4 - Classname of Helicopter (String)
		   5 - Type of Insert (Unload ONLY) (String)
		   6 - gunner Split - [How many teams,Procent of gunner] (Array)

		   [Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		*/
		/* Example of Air Bases */
		/*
		if(isServer && GOL_NEKY_AIRDROP isEqualTo 1) then {
			waitUntil{sleep 5; !(isNil "NEKY_Airbase")};
			[Base_3,Spawn_3, NEKY_Hunt_Trigger_1,independent,"I_Heli_Transport_02_F","Random",[2,1]] spawn NEKY_Airbase;
		};
