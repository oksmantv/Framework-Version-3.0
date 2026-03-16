flag_west_1 addAction ["<t color='#5f78f4'>Fast Travel to Crew Tower 1</t>",
{
	Params ["","_Player"];

	_Player setPosATL (getPosATL CREW_TOWER1);
}, [], 10, false, true, "", "true", 10];
CREW_TOWER1 addAction ["<t color='#5f78f4'>Fast Travel to Spawn</t>",
{
	Params ["","_Player"];

	_Player setPosATL (getPosATL flag_west_1);
}, [], 10, false, true, "", "true", 10];
flag_west_1 addAction ["<t color='#5f78f4'>Fast Travel to Crew Tower 2</t>",
{
	Params ["","_Player"];

	_Player setPosATL (getPosATL CREW_TOWER2);
}, [], 10, false, true, "", "true", 10];
CREW_TOWER2 addAction ["<t color='#5f78f4'>Fast Travel to Spawn</t>",
{
	Params ["","_Player"];

	_Player setPosATL (getPosATL flag_west_1);
}, [], 10, false, true, "", "true", 10];
flag_west_1 addAction ["<t color='#5f78f4'>Fast Travel to Crew Tower 3</t>",
{
	Params ["","_Player"];

	_Player setPosATL (getPosATL CREW_TOWER1);
}, [], 10, false, true, "", "true", 10];
CREW_TOWER3 addAction ["<t color='#5f78f4'>Fast Travel to Spawn</t>",
{
	Params ["","_Player"];

	_Player setPosATL (getPosATL flag_west_1);
}, [], 10, false, true, "", "true", 10];
flag_west_1 addAction ["<t color='#5f78f4'>Fast Travel to Driver Tower</t>",
{
	Params ["","_Player"];

	_Player setPosATL (getPosATL CREW_TOWER4);
}, [], 10, false, true, "", "true", 10];
CREW_TOWER4 addAction ["<t color='#5f78f4'>Fast Travel to Spawn</t>",
{
	Params ["","_Player"];

	_Player setPosATL (getPosATL flag_west_1);
}, [], 10, false, true, "", "true", 10];
flag_west_1 addAction ["<t color='#5f78f4'>Fast Travel to Gunner Tower</t>",
{
	Params ["","_Player"];

	_Player setPosATL (getPosATL CREW_TOWER6);
}, [], 10, false, true, "", "true", 10];
CREW_TOWER6 addAction ["<t color='#5f78f4'>Fast Travel to Spawn</t>",
{
	Params ["","_Player"];

	_Player setPosATL (getPosATL flag_west_1);
}, [], 10, false, true, "", "true", 10];
flag_west_1 addAction ["<t color='#5f78f4'>Fast Travel to Jackal Tower</t>",
{
	Params ["","_Player"];

	_Player setPosATL (getPosATL CREW_TOWER5);
}, [], 10, false, true, "", "true", 10];
CREW_TOWER5 addAction ["<t color='#5f78f4'>Fast Travel to Spawn</t>",
{
	Params ["","_Player"];

	_Player setPosATL (getPosATL flag_west_1);
}, [], 10, false, true, "", "true", 10];
flag_west_1 addAction ["<t color='#5f78f4'>Fast Travel to FOB Ironhand</t>",
{
	Params ["","_Player"];

	_Player setPosATL (getPosATL FOB_IRONHAND);
}, [], 10, false, true, "", "true", 10];
flag_west_1 addAction ["<t color='#5f78f4'>Fast Travel to FOB Shark</t>",
{
	Params ["","_Player"];

	_Player setPosATL (getPosATL FOBSHARK);
}, [], 10, false, true, "", "true", 10];
FOB_IRONHAND addAction ["<t color='#54ce56'>Fast Travel to Spawn</t>",
{
	Params ["","_Player"];

	_Player setPosATL (getPosATL flag_west_1);
}, [], 10, false, true, "", "true", 10];
FOBSHARK addAction ["<t color='#54ce56'>Fast Travel to Spawn</t>",
{
	Params ["","_Player"];

	_Player setPosATL (getPosATL flag_west_1);
}, [], 10, false, true, "", "true", 10];
FOBSHARK addAction ["<t color='#5f78f4'>Fast Travel to FOB Ironhand</t>",
{
	Params ["","_Player"];

	_Player setPosATL (getPosATL FOB_IRONHAND);
}, [], 10, false, true, "", "true", 10];
FOB_IRONHAND addAction ["<t color='#5f78f4'>Fast Travel to FOB Shark</t>",
{
	Params ["","_Player"];

	_Player setPosATL (getPosATL FOBSHARK);
}, [], 10, false, true, "", "true", 10];
flag_west_1 addAction ["<t color='#5f78f4'>Fast Travel to Airfield</t>",
{
	Params ["","_Player"];

	_Player setPosATL (getPosATL AirfieldFlag);
}, [], 10, false, true, "", "true", 10];
AirfieldFlag addAction ["<t color='#54ce56'>Fast Travel to Spawn</t>",
{
	Params ["","_Player"];

	_Player setPosATL (getPosATL flag_west_1);
}, [], 10, false, true, "", "true", 10];

FOBSHARKLAPTOP addAction ["<t color='#FFFF00'>Spawn Vehicles</t>", { [[],{ T7=True; }] remoteExec ["BIS_FNC_CALL",2] }, [], 10, false, false, "", "", 5];
laptop3 addAction ["<t color='#5f78f4'>Spawn Tanks</t>", { [[],{ T8=True; }] remoteExec ["BIS_FNC_CALL",2] }, [], 10, false, false, "", "", 5];
laptop3 addAction ["<t color='#5f78f4'>Spawn IFVs</t>", { [[],{ T9=True; }] remoteExec ["BIS_FNC_CALL",2] }, [], 10, false, false, "", "", 5];
laptop3 addAction ["<t color='#5f78f4'>Spawn Tank Platoon</t>", { [[],{ T13=True; }] remoteExec ["BIS_FNC_CALL",2] }, [], 10, false, false, "", "", 5];
laptop3 addAction ["<t color='#5f78f4'>Spawn IFV Platoon</t>", { [[],{ T14=True; }] remoteExec ["BIS_FNC_CALL",2] }, [], 10, false, false, "", "", 5];
laptop3 addAction ["<t color='#00FF00'>Spawn Gunner Course</t>", { [[],{ null = [8] spawn GW_Fnc_spawnList; }] remoteExec ["BIS_FNC_CALL",2] }, [], 10, false, false, "", "", 5];
laptop3 addAction ["<t color='#00FF00'>Spawn Driver Course</t>", { [[],{ T15=True; }] remoteExec ["BIS_FNC_CALL",2] }, [], 10, false, false, "", "", 5];
laptop3 addAction ["<t color='#00FF00'>Spawn Jackal Course</t>", { [[],{ T16=True; }] remoteExec ["BIS_FNC_CALL",2] }, [], 10, false, false, "", "", 5];
FOB_IRONHANDLAPTOP addAction ["<t color='#5f78f4'>Spawn Tank Platoon</t>", { [[],{ T10=True; }] remoteExec ["BIS_FNC_CALL",2] }, [], 10, false, false, "", "", 5];
FOB_IRONHANDLAPTOP addAction ["<t color='#5f78f4'>Spawn Mechanized</t>", { [[],{ T11=True; }] remoteExec ["BIS_FNC_CALL",2] }, [], 10, false, false, "", "", 5];
FOB_IRONHANDLAPTOP addAction ["<t color='#5f78f4'>Spawn Motorised</t>", { [[],{ T12=True; }] remoteExec ["BIS_FNC_CALL",2] }, [], 10, false, false, "", "", 5];
repairdepot addAction ["<t color='#FF0000'>Damage Vehicle</t>", { [[],{ damage1 setHitPointDamage ["hitEngine", 1.0];damage1 setHitPointDamage ["HitLTrack", 1.0];damage1 setHitPointDamage ["HitLTrack", 1.0];damage1 setHitPointDamage ["HitGun", 1.0]; damage1 setHitPointDamage ["HitRTrack", 1.0]; }] remoteExec ["BIS_FNC_CALL",2] }, [], 10, false, false, "", "", 5];
