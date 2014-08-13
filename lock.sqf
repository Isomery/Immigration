/*
	File: lock.sqf
	Author: Iso

	Desciption:
	Lock a certain building and prepare everything for the "immigration"

	Parameter(s):
	Void

	Returns:
	Void
*/
// Lock all the doors! /////////////////////////////////////////////////////////
/**************** Variables ****************/
//private ["_building", "_doorCount"];
building = nearestObject [lockMarker, "Land_Cargo_HQ_V1_F"]; // Target Building
counter = 0;

hint format ["This is: %1", building]; // Debug

/**************** Methods ****************/
for "_i" from 0 to 3 do {
	building setVariable [format["bis_disabled_Door_%1", _i], 0, true]; // 1 is locked
}

sleep 1;

// Spawn the pawn //////////////////////////////////////////////////////////////
// UNCLEAR: How are the players placed
// mini setPos (building buildingPos 3); // mini, name of the PC
"C_man_1" createUnit [[2166,5831,6], _groupAlpha];