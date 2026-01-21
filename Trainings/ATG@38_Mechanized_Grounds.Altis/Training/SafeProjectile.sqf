/* 
	Safe Projectile Handler
	Deletes projectiles from vehicles or secondary weapons (AT/launchers) just before impact
	Creates scare effect without damage
	
	Usage: _unit addEventHandler ["Fired", compile preprocessFileLineNumbers "Training\SafeProjectile.sqf"];
*/

params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile"];

diag_log format["[SafeProjectile] EH TRIGGERED | Unit: %1 | Weapon: %2 | Ammo: %3 | InVehicle: %4", typeOf _unit, _weapon, _ammo, !isNull objectParent _unit];

// Check if projectile is from a vehicle or secondary weapon
// When event handler is on vehicle, _unit IS the vehicle itself
_isVehicleShot = (_unit isKindOf "LandVehicle" || _unit isKindOf "Air") || (!(isNull objectParent _unit) && ((objectParent _unit) isKindOf "LandVehicle" || (objectParent _unit) isKindOf "Air"));
_isSecondaryWeapon = _weapon == secondaryWeapon _unit;

diag_log format["[SafeProjectile] Checks | IsVehicleShot: %1 | IsSecondaryWeapon: %2 | UnitIsVehicle: %3 | ParentVehicle: %4", _isVehicleShot, _isSecondaryWeapon, (_unit isKindOf "LandVehicle" || _unit isKindOf "Air"), if (isNull objectParent _unit) then {"NONE"} else {typeOf objectParent _unit}];

// Only process vehicle shots or secondary weapons (AT/launchers)
if (_isVehicleShot || _isSecondaryWeapon) then {
	diag_log format["[SafeProjectile] Processing | Vehicle: %1 | AT: %2 | Weapon: %3", _isVehicleShot, _isSecondaryWeapon, _weapon];
	
	// Get the target - try unit first, then vehicle
	_target = assignedTarget _unit;
	if (isNull _target && !isNull objectParent _unit) then {
		_target = assignedTarget (vehicle _unit);
	};
	
	diag_log format["[SafeProjectile] Target: %1", if (isNull _target) then {"NONE"} else {typeOf _target}];
	
	[_projectile, _target, _isVehicleShot, _weapon] spawn {
		params ["_proj", "_target", "_isVehicleShot", "_weapon"];
		
		// Store initial position for distance tracking
		_startPos = getPosASL _proj;
		
		// Always use fallback for vehicle shots since target tracking can be unreliable
		if (_isVehicleShot) then {
			diag_log "[SafeProjectile] Monitoring vehicle shot...";
			// For vehicle shots, be much more aggressive - delete after traveling 50m or near entities
			waitUntil {
				sleep 0.001;
				_distTraveled = _startPos distance (getPosASL _proj);
				_nearEntities = _proj nearEntities [["Man", "LandVehicle", "Air", "Static"], 15];
				(_distTraveled > 50) || (count _nearEntities > 0) || (isNull _proj) || (getPosATL _proj select 2 < 0.5)
			};
			diag_log format["[SafeProjectile] Vehicle shot triggered - Entities:%1 IsNull:%2 DistTraveled:%3", count (_proj nearEntities [["Man", "LandVehicle", "Air", "Static"], 15]), isNull _proj, _startPos distance (getPosASL _proj)];
		} else {
			// For infantry AT weapons, be very aggressive - these travel slower but need immediate deletion
			if (!isNull _target) then {
				diag_log "[SafeProjectile] Monitoring AT shot with target...";
				_targetSize = (boundingBoxReal (vehicle _target)) select 1;
				_safeDistance = 5 + ((_targetSize select 0) max (_targetSize select 1) max (_targetSize select 2));
				
				waitUntil {
					sleep 0.001;
					_dist = _proj distance (vehicle _target);
					(_dist < _safeDistance) || (isNull _proj) || (getPosATL _proj select 2 < 0.3)
				};
				diag_log format["[SafeProjectile] AT shot triggered | Distance: %1 | SafeDist: %2", _proj distance (vehicle _target), _safeDistance];
			} else {
				diag_log "[SafeProjectile] Monitoring AT shot without target...";
				waitUntil {
					sleep 0.001;
					_nearEntities = _proj nearEntities [["Man", "LandVehicle", "Air", "Static"], 8];
					(count _nearEntities > 0) || (isNull _proj) || (getPosATL _proj select 2 < 0.3)
				};
			};
		};
		
		// Delete projectile if it still exists
		if (!isNull _proj) then {
			_projPos = getPosASL _proj;
			deleteVehicle _proj;
			playSound3D [(str missionConfigFile select [0, count str missionConfigFile - 15]) + "beep.wav", objNull, false, _projPos, 2, 1, 150];
			diag_log "[SafeProjectile] Projectile DELETED";
		} else {
			diag_log "[SafeProjectile] Projectile already null - not deleted";
		};
	};
};

