---------------------------------------------------------------------
---------------------------------------------------------------------
-- File    : CommandBPDatabase.lua
--

--~
--~ Some default parameter blocks
--~

fx_parameters =
{
	{
		name = "fx",
		help = "Name of the fx to spawn.",
		value_browsepath = "Generic:Art\\Fx|*.lua",
		value_browsepath_final = "Data:Art\\Fx|*.bfx",
	},
	{
		name = "position",
		help = "Location for the effect.",
		default = "self",
		values =
		{
			"self",
			"other",
			"intersect_self",
			"intersect_other",
			"between",
		},
	},
	{
		name = "orientation",
		help = "Orientation for the effect.",
		default = "self",
		values =
		{
			"self",
			"other",
			"toward_self",
			"toward_other",
			"forward",
			"backward",
			"up",
			"down",
			"left",
			"right",
		},
	},
	{
		name = "length",
		help = "Length of the FX. 'distance' to use distance between self and other.",
		default = "1.0",
		values =
		{
			"distance",
			"1.0",
			"2.0",
		},
	},
	{
		name = "scale",
		help = "Scale of the FX (1 for normal), or 'object' to scale to object size.",
		default = "1.0",
		values =
		{
			"object",
		},
	},
	{
		name = "self_marker",
		help = "Marker that refers to 'self'.",
		default = "random",
		values =
		{
			"random",
		},
		value_type = "Marker",
	},
	{
		name = "other",
		help = "Definition of 'other'.",
		default = "self",
	},
	{
		name = "other_marker",
		help = "Marker that refers to 'other'.",
		default = "random",
		values =
		{
			"random",
		},
		value_type = "Marker",
	},
	{
		name = "spawn_offscreen",
		help = "Whether the effect is spawned if offscreen.",
		default = "false",
		values =
		{
			"true",
			"false",			
		}
	},
	{
		name = "stop_with_marker",
		help = "Whether the effect stops when the marker is removed.",
		default = "false",
		values =
		{
			"true",
			"false",			
		}
	},
	{
		name = "reflection_off",
		help = "Forces the effect to not show up on the water reflection view.",
		default = "false",
		values =
		{
			"true",
			"false",			
		}
	}
}

sound_parameters =
{
	{
		name = "patch",
		help = "Name of the sound container.",
		value_browsepath = "Generic:Sound|*.scn",
		value_browsepath_locale = "Generic:Locale\\Sound|*.scn",
		value_browsepath_final = "Sound:|*.bsc",
	},
	{
		name = "marker",
		help = "Name of the marker to attach to.",
		value_type = "Marker",
	}
}

decal_parameters =
{
	{
		name = "decal",
		value_browsepath = "Generic:Art\\Scenarios\\Textures\\Splats|*.tga",
		value_browsepath_final = "Data:Art\\Scenarios\\Textures\\Splats|*.rgt",
	},
	{
		name = "duration",
		help = "Lifetime, in seconds. '0' or empty for infinite.",
	},
	{
		name = "size",
		help = "Size for a the decal in meters, or 'object' for object sized.",
		default = "1.0",
		values =
		{
			"object",
		},
	},
	{
		name = "size delta",
		help = "Variation of the texel size (in percent).",
	},
	{
		name = "position",
		value_type = "Marker",
	},
	{
		name = "orientation",
		default = "forward",
		values =
		{
			"forward",
		},
		value_type = "Marker",
	},
	{
		name = "rotation",
		help = "Degrees the decal is rotated.",
		default = "0.0",
	},
	{
		name = "rotation delta",
		help = "Degrees that the rotation can vary.",
		default = "0.0",
	},
	{
		name = "random rotation",
		help = "Signals a random rotation of the decal.",
		default = "no",
		values =
		{
			"yes",
			"no",
		},
	},
	{
		name = "random flip",
		default = "no",
		values =
		{
			"yes",
			"no",
		},
	},
--~ 	{
--~ 		name = "fade in time",
--~ 		help = "Time to fade in the decal.",
--~ 	},
--~ 	{
--~ 		name = "fade out time",
--~ 		help = "Time to fade out the decal.",
--~ 	},
}

splat_parameters =
{
	{
		name = "image",
		value_browsepath = "Generic:Art\\Terrain_Textures\\Splats|*.tga",
		value_browsepath_final = "Data:Art\\Terrain_Textures\\Splats|*_dif.dds",
	},
	{
		name = "duration",
		help = "Lifetime, in seconds. '0' or empty for infinite.",
	},
	{
		name = "size",
		help = "Size for the splat in meters, or 'object' for object sized.",
		default = "1.0",
		values =
		{
			"object",
		},
	},
	{
		name = "size delta",
		help = "Variation of the texel size (in percent).",
	},
	{
		name = "position",
		value_type = "Marker",
	},
	{
		name = "orientation",
		default = "forward",
		values =
		{
			"forward",
		},
		value_type = "Marker",
	},
	{
		name = "rotation",
		help = "Degrees the splat is rotated.",
		default = "0.0",
	},
	{
		name = "rotation delta",
		help = "Degrees that the rotation can vary.",
		default = "0.0",
	},
	{
		name = "random rotation",
		help = "Signals a random rotation of the splat.",
		default = "no",
		values =
		{
			"yes",
			"no",
		},
	},
	{
		name = "random flip",
		default = "no",
		values =
		{
			"yes",
			"no",
		},
	},
	{
		name = "fade out time",
		help = "Fade out time, in seconds. '0' or empty for no fade out",
	},
	{
		name = "fade in time",
		help = "Fade in time, in seconds. '0' or empty for no fade in",
	},
}

camshake_parameters =
{
	{
		name = "duration",
		help = "The number of seconds the camera shake lasts.",
		default = "1.0",	
	},
	{
		name = "target",
		help = "the name of the marker to attach to",
		value_type = "Marker",
	},	
	{
		name = "intensity",
		help = "The intensity of the camera shake.",
		default = "1.0",	
	},
	{
		name = "radius",
		help = "Cameras within this distance from the epicenter will shake.",
		default = "200.0",	
	},	
	{
		name = "falloff",
		help = "The falloff rate of the shake.",
		default = "3.0",	
	},		
}

--~
--~ 
--~ 
CommandBPDatabase =
{
--~ 	{
--~ 		name = "Name of the Command",
--~ 		help = "Help info on what the command does.",
--~ 		parameters =
--~ 		{
--~ 			{
--~ 				name = "Event",
--~ 				help = "Name of the event.",
--~ 				default = "dummy",
--~ 				values =
--~ 				{
--~ 					"Tom",
--~ 					"Dick",
--~ 					"Harry",
--~ 				},
--~ 				value_type = "marker",	--	{"marker","anim","event"}
--~ 				value_browsepath = "<rootpath>|*.ext;*.ext2",
--~ 			}
--~ 		}
--~ 	},

	---
	{
		name = "triggerevent",
		help = "Allows events to be fired from actions",
		parameters =
		{
			{
				name = "Event",
				help = "Name of the event.",
				value_type = "Event",
			}
		}
	},
	{
		name = "setstate",
		help = "Allows states to be set from actions",
		parameters =
		{
			{
				name = "StateMachine",
				help = "Name of the state machine.",
				value_type = "StateMachine",
			},
			{
				name = "State",
				help = "Name of the state.",
			}
		}
	},
	{
		name = "physics_orphan_to_animator_and_transition_to_rig",
		help = "This action replaces the *entire* animator (including attachments) with the specified animator and transitions to the specified rig.",
		parameters =
		{
			{
				name = "PhysicsOrphanAnimator",
				help = "Name of the animator to orphan to.",
				value_browsepath = "Generic:Art|*.model",
				value_browsepath_final = "Data:Art|*.model",
			},
			{
				name = "PhysicsRig",
				help = "The physics rig to transition to, healthy is usually sufficent.",
				default = "healthy",
			},
		}
	},
	{
		name = "setvariable",
		help = "Allows variables to be set from actions",
		parameters =
		{
			{
				name = "Variable",
				help = "Name of the variable.",
				value_type = "Variable",
			},
			{
				name = "Value",
				help = "Value to set the variable to.",
				default = "0.0",
			}
		}
	},
	{
		name = "setrandomvariable",
		help = "Sets a variable to a value between 'min' and 'max'",
		parameters =
		{
			{
				name = "Variable",
				help = "Name of the variable.",
				value_type = "Variable",
			},
			{
				name = "Min",
				help = "Minimum value to set the variable to.",
				default = "0.0",
			},
			{
				name = "Max",
				help = "Maximum to set the variable to.",
				default = "0.0",
			}
		}
	},
	{
		name = "addtovariable",
		help = "Adds a value to a variable.  Value can be negative to do subtraction.",
		parameters =
		{
			{
				name = "Variable",
				help = "Name of the variable.",
				value_type = "Variable",
			},
			{
				name = "Value",
				help = "Value to add to the variable.",
				default = "0.0",
			}
		}
	},

	--
	{
		name = "fx_attach",
		help = "Spawns and attaches fx to caller",
		parameters = fx_parameters,
	},
	{
		name = "fx_orphan",
		help = "Spawns and fx and leaves it there",
		parameters = fx_parameters,
	},
	{
		name = "fx_inherit",
		help = "Spawns and inherits the velocity of the caller",
		parameters = fx_parameters,
	},	
	{
		name = "sound_attach",
		parameters = sound_parameters,
	},
	{
		name = "sound_orphan",
		parameters = sound_parameters,
	},

	--
	{
		name = "decal_attach",
		parameters = decal_parameters,
	},
	{
		name = "decal_orphan",
		parameters = decal_parameters,
	},

	--
	{
		name = "splat_attach_fixed_pos",
		parameters = splat_parameters,
	},
	{
		name = "splat_orphan",
		parameters = splat_parameters,
	},

	--
	{
		name = "physics_ragdoll_and_orphan",
		parameters =
		{
		},
	},
	--
	{
		name = "physics_rig_add",
		parameters =
		{
			{
				name = "rigName",
				default = "<default rig>",
				values =
				{
					"<default rig>",
				},
				value_type = "PhysicsRig",
				help = "Name of rig who's rigid bodies and constraints are to be created and added to the current state of the model",
			},
		},
	},

	--
	{
		name = "physics_rig_subtract",
		parameters =
		{
			{
				name = "rigName",
				default = "<default rig>",
				values =
				{
					"<default rig>",
				},
				value_type = "PhysicsRig",
				help = "Name of rig who's rigid bodies and constraints are to be destroyed and removed from the current state of the model",
			},
		},
	},

	--
	{
		name = "physics_sphere_explosion",
		parameters =
		{
			{
				name = "center",
				help = "Center of spherical explosion in model relative space / coords",
				default = "0.0, 0.0, 0.0",
			},
			{
				name = "radius",
				help = "Radius of the explosion's sphere of influence",
				default = "10.0",
			},
			{
				name = "innerMagnitude",
				help = "Magnitude of explosion impulse at the center of the explosion's sphere",
				default = "500.0",
			},
			{
				name = "outerMagnitude",
				help = "Magnitude of explosion impulse at the outer endge of the explosion's sphere",
				default = "100.0",
			},
		},
	},
	
	--
	{
		name = "physics_sphere_explosion_marker",
		parameters =
		{
			{
				name = "centerMarker",
				help = "Center of spherical explosion in model relative space / coords",
				default = "random",
				values =
				{
					"random",
				},
				value_type = "Marker",
			},
			{
				name = "radius",
				help = "Radius of the explosion's sphere of influence",
				default = "10.0",
			},
			{
				name = "innerMagnitude",
				help = "Magnitude of explosion impulse at the center of the explosion's sphere",
				default = "500.0",
			},
			{
				name = "outerMagnitude",
				help = "Magnitude of explosion impulse at the outer endge of the explosion's sphere",
				default = "100.0",
			},
		},
	},
	
	--
	{
		name = "physics_rig_transition",
		parameters =
		{
			{
				name = "rigName",
				default = "<default rig>",
				values =
				{
					"<default rig>",
				},
				value_type = "PhysicsRig",
				help = "Name of rig to transition to",
			},
		}
	},

	--
	{
		name = "physics_ragdoll_begin",
		parameters =
		{
		}
	},

	--
	{
		name = "physics_ragdoll_end",
		parameters =
		{
		}
	},
	{
		name = "physics_ragdoll_recovering_throw_begin",
		parameters =
		{
			{
				name = "poweredStartTime",
				help = "Time to have the ragdoll end time",
			},
			{
				name = "ragdollEndTime",
				help = "Time to have the ragdoll end time",
			},
		}
	},

	--
	{
		name = "physics_rigentity_set_motion_type",
		parameters =
		{
			{
				name = "entityName1",
				default = "<all nodes>",
				values =
				{
					"<all nodes>",
				},
				--value_type = "PhysicsRigEntity",
				help = "Name of physics entity to change motion type of. This will apply to all of this entity's children",
			},
			{
				name = "entityName2",
				default = "<none>",
				values =
				{
					"<none>",
				},
				--value_type = "PhysicsRigEntity",
				help = "Name of physics entity to change motion type of. This will apply to all of this entity's children",
			},
			{
				name = "entityName3",
				default = "<none>",
				values =
				{
					"<none>",
				},
				--value_type = "PhysicsRigEntity",
				help = "Name of physics entity to change motion type of. This will apply to all of this entity's children",
			},
			{
				name = "entityName4",
				default = "<none>",
				values =
				{
					"<none>",
				},
				--value_type = "PhysicsRigEntity",
				help = "Name of physics entity to change motion type of. This will apply to all of this entity's children",
			},
			{
				name = "entityName5",
				default = "<none>",
				values =
				{
					"<none>",
				},
				--value_type = "PhysicsRigEntity",
				help = "Name of physics entity to change motion type of. This will apply to all of this entity's children",
			},
			{
				name = "motionType",
				help = "The new motion type to assign to the entity(ies).",
				default = "KeyFramed",
				values =
				{
					"KeyFramed",
					"Physics",
					"FixedPhysics",
					-- "KeyFramePhysicsBlend",
				},
			},
		}
	},

	--
	{
		name = "physics_cube_explosion",
		parameters =
		{
			{
				name = "fromX",
				default = "-1.0",
			},
			{
				name = "fromY",
				default = "-1.0",
			},
			{
				name = "fromZ",
				default = "-1.0",
			},
			{
				name = "toX",
				default = "1.0",
			},
			{
				name = "toY",
				default = "1.0",
			},
			{
				name = "toZ",
				default = "1.0",
			},
			{
				name = "impulseFromX",
				default = "0.0",
			},
			{
				name = "impulseFromY",
				default = "10.0",
			},
			{
				name = "impulseFromZ",
				default = "0.0",
			},
			{
				name = "impulseToX",
				default = "0.0",
			},
			{
				name = "impulseToY",
				default = "100.0",
			},
			{
				name = "impulseToZ",
				default = "0.0",
			},
		},
	},
	
	--
	{
		name = "physics_cube_explosion_marker",
		parameters =
		{
			{
				name = "fromMarker",
				default = "random",
				values =
				{
					"random",
				},
				value_type = "Marker",
			},
			{
				name = "toMarker",
				default = "random",
				values =
				{
					"random",
				},
				value_type = "Marker",
			},
			{
				name = "impulseFromX",
				default = "0.0",
			},
			{
				name = "impulseFromY",
				default = "10.0",
			},
			{
				name = "impulseFromZ",
				default = "0.0",
			},
			{
				name = "impulseToX",
				default = "0.0",
			},
			{
				name = "impulseToY",
				default = "100.0",
			},
			{
				name = "impulseToZ",
				default = "0.0",
			},
		},
	},
	
	--
	{
		name = "vehiclephysics_recoil",
		parameters =
		{
			{
				name = "marker",
				help = "Name of the marker to recoil from.",
				value_type = "Marker",
			},
			{
				name = "strength",
				help = "Strength of recoil, from 0 to 100.",
				default = "10.0",
			}
		}
	},
	
	--
	{
		name = "vehiclephysics_set_accel_factor",
		parameters =
		{
			{
				name = "acceleration_factor",
				help = "Value of the acceleration factor which determines how sensitive a vehicle is to changes in velocity and forces",
				default = "5.0",
			},
		}
	},

	--
	{
		name = "animator_attach",
		parameters =
		{
			{
				name = "self_marker",
				help = "Name of marker to attach to target. Empty for the model root.",
			},
			{
				name = "target",
				help = "Name of target to attach to.",
			},
			{
				name = "target_marker",
				help = "Name of target marker to attach to. Empty for the model root.",
			},
		}
	},
	
	--
	{
		name = "animator_detach",
		parameters =
		{
		}
	},
	--
	{
		name = "animator_attachment",
		parameters =
		{
			{
				name = "enable",
				help = "enable or disable",
			},
			{
				name = "attachment_name",
				help = "Name of attachment to attach to target.",
			},
		}
	},
	
	--
	{
		name = "animator_set_orphan_on_death",
		parameters =
		{
		}
	},
	
	--
	{
		name = "animator_interpolatefrom",
		parameters =
		{
			{
				name = "duration",
				help = "Time over which to interpolate back to the real position.",
			},
			{
				name = "self_marker",
				help = "Name of marker to base interpolation from. Empty for the model root.",
			},
			{
				name = "target",
				help = "Name of target to base interpolation from.",
			},
			{
				name = "target_marker",
				help = "Name of target marker to base interpolation from. Empty for the model root.",
			},
			{
				name = "interpolate_type",
				help = "Throw is grenade like behaviour, lerp is a linear interpolation. Resync is used only when you have an existing interpolate or animator_attach and you want to get back into sync with simulation. Note that none of the markers apply to the resync type.",
				default = "lerp",
				values =
				{
					"lerp",
					"throw",
                    "resync"
				},
			}
		}
	},
	
	--
	{
		name = "animator_forceupdate",
		parameters =
		{
			{
				name = "enable",
				help = "Set to true to force updating of the object, should be used !!!INCREDIBLY!!! sparingly.",
				default = "true",
				values =
				{
					"true",
					"false",
				},	
			},
		}
	},
	
	--
	{
		name = "animator_highlight",
		parameters =
		{
			{
				name = "enable",
				help = "If fullbright is on or off.",
				default = "off",
				values =
				{
					"off",
					"on",
				},	
			},
			{
				name = "diffuse R",
				help = "Red channel of the diffuse",
				default = "255",
			},
			{
				name = "diffuse G",
				help = "Green channel of the diffuse",
				default = "255",
			},
			{
				name = "diffuse B",
				help = "Blue channel of the diffuse",
				default = "255",
			},
			{
				name = "specular R",
				help = "Red channel of the specular",
				default = "255",
			},
			{
				name = "specular G",
				help = "Green channel of the specular",
				default = "255",
			},
			{
				name = "specular B",
				help = "Blue channel of the specular",
				default = "255",
			},
		}
	},
	
	--
	{
		name = "animator_camouflage",
		parameters =
		{
			{
				name = "enable",
				help = "Set to true to camouflage this unit.",
				default = "true",
				values =
				{
					"true",
					"false",
				},	
			},
		}
	},
	
	{
		name = "animator_bind_material_param_to_bone",
		parameters =
		{
			{
				name = "materialName",
				help = "Set the name of the material whose parameter should bind to the bone.",
			},
			{
				name = "paramName",
				help = "Set the name of the material parameter to bind to the bone.",
			},
			{
				name = "boneName",
				help = "Set the name of the bone to bind the param to.",
			},
			{
				name = "boneComponent",
				help = "Set the component of the bone to bind the param to.",
				values = 
				{
					"positionX",
					"positionY",
					"positionZ",
				},
			},
			{
				name = "multiplier",
				help = "Set a multiplier to scale the component by.",
				default = "1.0",
			},
		}
	},

	--
	{
		name = "animator_bind_material_param_to_time",
		parameters =
		{
			{
				name = "materialName",
				help = "Set the name of the material whose parameter should bind to the elasped time.",
				values =
				{
					"all_materials",
				},
			},
			{
				name = "paramName",
				help = "Set the name of the material parameter to bind to the bone.",
			},
			{
				name = "duration",
				help = "The duration over which the material is animated. Setting 0 will set the parameter to always on.",
			},
			{
				name = "animated_type",
				help = "The type of animation, cycle will lerp from 0 to 1 and back to 0, restart will lerp from 0 to 1 then set 0 at the time specified by duration.",
				default = "cycle",
				values =
				{
					"cycle",
					"restart",
					"linear_down",
				},
			},
			{
				name = "multiplier",
				help = "Set a multiplier to scale the component by.",
				default = "1.0",
			},
		}
	},

	--
	{
		name = "skeleton_attach",
		parameters =
		{
			{
				name = "skeleton_attach_Target",
				help = "the attaching  model",
			},
			{
				name = "skeleton_attach_Bone",
				help = "root bone",
			},
			{
				name = "skeleton_attach_Prefix",
				help = "prefix to select the skeleton",
			},
		}
	},
	
	--
	{
		name = "skeleton_detach",
		parameters =
		{
		}
	},
	
	--
	{
		name = "camshake",
		parameters = camshake_parameters,
	},
	
--~ 	{
--~ 		name = "fade_in",
--~ 		parameters =
--~ 		{
--~ 			{
--~ 				name = "time",
--~ 			}
--~ 		},
--~ 	},
--~ 	{
--~ 		name = "fade_out",
--~ 		parameters =
--~ 		{
--~ 			{
--~ 				name = "time",
--~ 			}
--~ 		},
--~ 	},
	{
		name = "set_team_colour",
		help = "Sets the team colour variables",
		parameters =
		{
			{
				name = "primary_colour",
				help = "Colour for primary paint.",
				default = "%primary_colour",
			},
			{
				name = "primary_specular_gloss",
				help = "Specualr & Gloss for primary paint.",
				default = "%primary_specular_gloss",
			},
			{
				name = "secondary_colour",
				help = "Colour for secondary paint.",
				default = "%secondary_colour",
			},
			{
				name = "secondary_specular_gloss",
				help = "Specualr & Gloss for seconday paint.",
				default = "%secondary_specular_gloss",
			},	
			{
				name = "tint_colour",
				help = "Colour for tint paint.",
				default = "%tint_colour",
			},
			{
				name = "tint_specular_gloss",
				help = "Specualr & Gloss for tint paint.",
				default = "%tint_specular_gloss",
			},			
			{
				name = "extra_colour",
				help = "Colour for extra paint.",
				default = "%extra_colour",
			},
			{
				name = "extra_specular_gloss",
				help = "Specualr & Gloss for extra paint.",
				default = "%extra_specular_gloss",
			},			
			{
				name = "badge",
				help = "Badge for team colour.",
				default = "%badge",
			},			
			{
				name = "pattern",
				help = "Pattern for team colour.",
				default = "%pattern",
			},	
		}
	},
	{
		name = "set_unit_occlusion",
		help = "Sets unit occlusion variables",
		parameters =
		{
			{
				name = "mode",
				help = "set to %mode.",
				default = "%mode",
			},
		}
	},
	{
		name = "remove_unit_occlusion",
		help = "Restores unit occlusion settings to default",
	},
	{
		name = "set_translucent",
		help = "Sets object to translucent",
	},
	{
		name = "remove_translucent",
		help = "Removes object translucency",
	},
	{
		name = "trigger_footfall",
		help = "Trigger a footfall effect",
		parameters =
		{
			{
				name = "unit_type",
				help = "The type of unit triggering the footfall.",
			}
		}
	},
	{
		name = "trigger_bodyfall",
		help = "Trigger a bodyfall effect",
		parameters =
		{
			{
				name = "unit_type",
				help = "The type of unit triggering the bodyfall.",
			}
		}
	},
	{
		name = "trigger_weapon_hit",
		help = "Trigger a weapon hit effect",
		parameters = 
		{
			{
				name = "weapon_munition",
				help = "Weapon munition to use.",
			},
			{
				name = "target_material",
				help = "Target material to hit.",
			}
		}
	},
	{
		name = "trigger_object_scar",
		help = "Trigger an Object Scar",
		parameters = 
		{
			{
				name = "weapon_munition",
				help = "Weapon munition to use.",
			},
		}
	},
	{
		name = "trigger_melee_swing",
		help = "Trigger a melee swing effect",
		parameters =
		{
		}
	},
	{
		name = "trigger_havokcollision",
		help = "triggers a havok collision event",
		parameters =
		{
		{
			name = "impact_impulse",
			help = "Impact Speed",
		},
		{
			name = "contact_mass",
			help = "Mass of projectile",
		},
		{
			name = "terrain_material",
			help = "material of terrain",
		},
		{
			name = "object_material",
			help = "material of projectile",
		}
		}
	},
	{
		name = "trigger_havokscrape",
		help = "triggers a havok scrape event",
		parameters =
		{
		{
			name = "scrape_velocity",
			help = "Scrape Velocity",
		},
		{
			name = "contact_mass",
			help = "Mass of projectile",
		},
		{
			name = "terrain_material",
			help = "material of terrain",
		},
		{
			name = "object_material",
			help = "material of projectile",
		}
		}
	},
	{
		name = "marker_remember",
		help = "Allows for virtual markers to remember real markers.  Works well with with 'random'.",
		parameters = 
		{
			{
				name = "remember",
				help = "Virtual marker name to bind to the given marker.",
			},
			{	
				name = "marker",
				help = "Marker to remember.",
			},
		}
	},

	{
		name = "action_call",
		help = "Launches another action",
		parameters = 
		{
			{
				name = "ActionName",
				help = "Name of the action.",
			}
		},
	},

	{
		name = "action_call_repeat",
		help = "Launches another action periodically with interval, please note: no endless/looping children!",
		parameters = 
		{
			{
				name = "ActionName",
				help = "Name of the action.",
			},
			{
				name = "Interval",
				help = "Periodicity of the action call.",
				default = "0.0",
			}
		},
	},

	{
		name = "action_call_no_action_transform",
		help = "Launches another action",
		parameters = 
		{
			{
				name = "ActionName",
				help = "Name of the action.",
			}
		},
	},

	{
		name = "attachment_replace_animator",
		help = "Replaces the entire animator and it's attachments with this attachment.",
		parameters = 
		{
			{
				name = "attachment_name",
				help = "Name of the attachment.",
				value_browsepath = "Generic:Art|*.model",
				value_browsepath_final = "Data:Art|*.model",
			}
		},
	},

	{
		name = "animator_scale",
		help = "Scales the rendering transform.",
		parameters = 
		{
			{
				name = "scale",
				help = "The scale to apply to the transform.",
				default = "1.0",
			}
		},
	},

	--
	{
		name = "animator_object_scar",
		help = "Adds a scar to an animator and it's attachments.",
		parameters = 
		{
			{
				name = "Scar Mask Name",
				help = "File prefix (name) of the scar mask.",
				default = "generic:art\\objectscars\\default_scar.tga",
				value_browsepath = "Generic:art\\objectscars|*.tga",
				value_browsepath_final = "data:art\\objectscars|*.dds",
			},
			{	
				name = "Scar Size",
				help = "Diameter of the hit mark, in metres.",
				default = "1.0",
				values =
				{
					"0.5",
					"0.6",
					"0.7",
					"0.8",
					"0.9",
					"1.0",
					"1.5",
					"2.0",
				},
			},
		}
	},
}
