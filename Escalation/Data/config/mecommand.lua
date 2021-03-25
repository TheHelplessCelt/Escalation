-- This file is used to indicate which DCA States and Variables are allowed to be set for an entity in the WorldBuilder.
--   Care has to be taken because we don't want the visuals for an object to become mismatched from the simulation.
--   We only want states/variables here that don't overlap with the simulation.

filter = 
{
	dcaStateMachines = 
	{
		"Building_Variation",
		"CAPPING",
		"door_state",
		"Door_Visibility",
		"Fire",
		"flyby",
		"grove_visibility",
		"Headlights",
		"Light",

		-- these are for urban/plaster01_2x2_nis_03
		"<!--mangled:Shutter_BlueShortL03-->Open_State",
		"<!--mangled:Shutter_BlueShortL04-->Open_State",
		"<!--mangled:Shutter_BlueLongL11-->Open_State",
		"<!--mangled:Shutter_BlueLongL12-->Open_State",
		"<!--mangled:Shutter_BlueLongL13-->Open_State",
		"<!--mangled:Shutter_BlueLongL14-->Open_State",
		"<!--mangled:Shutter_BlueLongL15-->Open_State",
		"<!--mangled:Shutter_BlueLongL16-->Open_State",
		"<!--mangled:Shutter_BlueLongL17-->Open_State",
		"<!--mangled:Shutter_BlueLongL18-->Open_State",
		"<!--mangled:Shutter_BlueLongL19-->Open_State",
		"<!--mangled:Shutter_BlueLongL20-->Open_State",

		-- these are for urban/Plaster01_2x3_CafeNorm_01
		"<!--mangled:Shutter_3LongL01-->Open_State",
		"<!--mangled:Shutter_3LongL02-->Open_State",
		"<!--mangled:Shutter_3LongL03-->Open_State",
		"<!--mangled:Shutter_3LongL04-->Open_State",
		"<!--mangled:Shutter_3LongR01-->Open_State",
		"<!--mangled:Shutter_3LongR02-->Open_State",
		"<!--mangled:Shutter_SlumLongL01-->Open_State",
		"<!--mangled:Shutter_SlumLongL02-->Open_State",
		"<!--mangled:Shutter_SlumLongL03-->Open_State",
		"<!--mangled:Shutter_SlumLongL04-->Open_State",
		"<!--mangled:Shutter_SlumLongL05-->Open_State",
		"<!--mangled:Shutter_SlumLongL06-->Open_State",
		"<!--mangled:Shutter_SlumLongL07-->Open_State",
		"<!--mangled:Shutter_SlumLongL08-->Open_State",
		"<!--mangled:Shutter_SlumLongR01-->Open_State",
		"<!--mangled:Shutter_SlumLongR02-->Open_State",
		"<!--mangled:Shutter_SlumLongR03-->Open_State",
		"<!--mangled:Shutter_SlumLongR04-->Open_State",
	},
	dcaVariables = 
	{
		"Animation_Amount",
		"Burn_State",
		"Rotation",
		"TINT",
	},
}
