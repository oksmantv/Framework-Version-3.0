if (hasInterface) then {
    _condition = {player in [wpl,wfac,w1m,w2m,epl,efac,e1m,e2m,ipl,ifac,i1m,i2m,w1a,w1a1,w1b1,wcrew1,wcrew4,e1a,e1a1,e1b1,ecrew1,ecrew4,i1a,i1a1,i1b1,icrew1,icrew4] && isNull laserTarget player}; //<only works MP
	// NEKY EDIT START
	_code =
	{
		_nearUnits = player nearEntities ["Man", 300];
		_nearUnits = _nearUnits select {(side _X) getFriend (side player) < 0.6};
		if(count _nearUnits == 0) then {
			TentMHQ setPos (player getPos [3,getDir player])
		} else {
			systemChat "Enemies are nearby. You cannot be the MHQ closer until the immediate area is secure (300m)"
		};	
	};

	// NEKY EDIT END
	_action = ["DeployMHQTent", "Deploy Tent MHQ","\A3\ui_f\data\map\mapcontrol\Tourism_CA.paa", _code, _condition] call ace_interact_menu_fnc_createAction;
	[typeOf player, 1, ["ACE_SelfActions","Request_Support"], _action] call ace_interact_menu_fnc_addActionToClass;

};

//_condition = {leader (group player) isEqualTo (leader player)};
// Thanks to Neko & Guzzman for the scripts and helping fixing errors.
// Here I have made nekos scripts and functions compatabile to the ace UI,
//only thing you can edit really is [blufor,"","drop",["spawn",_pos,"despawn"] so this means/ change side,"","unload or drop", ["markername","mouse click","markername"]
// By Luke.


