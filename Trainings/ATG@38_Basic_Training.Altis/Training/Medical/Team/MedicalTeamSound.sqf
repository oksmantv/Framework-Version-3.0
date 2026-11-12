/* [_file, _source, _position, _range] call MED_Team_PlaySound; client-local 3D playback. */
params ["_file", ["_source", objNull], ["_position", [0, 0, 0]], ["_range", 100]];
if (!hasInterface) exitWith {};

playSound3D [_file, _source, false, _position, 5, 1, _range];
