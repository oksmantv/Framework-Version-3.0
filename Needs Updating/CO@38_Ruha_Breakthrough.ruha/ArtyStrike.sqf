	
	["HQ","side","1-1 be advised, artillery is beginning their barrage. You are free to advance as soon as the barrage has lifted. Good luck, 1 Actual out."] remoteExec ["OKS_Chat",0];
	
	[arty_3,[getPos target_1,getPos target_2,getPos target_3,getPos target_4],2,7,true,"rhs_mag_155mm_m795_28"] execVM "Scripts\OKS_Ambience\OKS_ArtySupression.sqf";
	[arty_4,[getPos target_5,getPos target_6,getPos target_7,getPos target_8],2,7,true,"rhs_mag_155mm_m795_28"] execVM "Scripts\OKS_Ambience\OKS_ArtySupression.sqf";
	[arty_2,[getPos target_9,getPos target_10,getPos target_11,getPos target_12],2,7,true,"rhs_mag_155mm_m795_28"] execVM "Scripts\OKS_Ambience\OKS_ArtySupression.sqf";
	[arty_1,[getPos target_13,getPos target_14,getPos target_15,getPos target_16],2,7,true,"rhs_mag_155mm_m795_28"] execVM "Scripts\OKS_Ambience\OKS_ArtySupression.sqf";