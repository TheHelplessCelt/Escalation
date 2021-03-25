
----------------------------------------------------------------------------------------------------------------
-- Default Key Combo Bindings
-- (c) 2010 Relic Entertainment
----------------------------------------------------------------------------------------------------------------

-- ****** MODIFY AT YOUR OWN RISK! ******

-- This is the user-editable key defaults configuration file
-- The file "_keydefaults.lua" contains the default key mappings and is recreated every time the game is launched
-- To change the default key mappings, make your changes in "_keydefaults.lua" and then rename it to "keydefaults.lua" (no underscore)
-- If you wish to revert to the default key mappings, simply delete your custom keydefaults.lua

-- Note: When the game is patched your changes will be backed up as _keydefaults.lua.backup-#### but keydefaults.lua
-- will be overwritten so you will need to rename the backed-up file to keydefaults.lua to regain your custom keys after a patch

-- Bindings use format "Control+Shift+A"

-- Valid keys
	--  a - Z   0 - 9
	-- Backspace Tab Enter Escape Space Apostrophe Comma
	-- Minus Period Slash Semicolon Equal LBracket Backslash RBracket Grave 
	-- Up Down Left Right Control Shift Alt CapsLock NumLock ScrollLock 
	-- Insert Delete Home End PageUp PageDown F1 F2 F3 F4 F5 F6 F7 F8 F9 F10 F11 F12 PrintScreen Pause 
	-- MouseLeft MouseRight MouseMiddle MouseTop MouseBottom 
	-- ScreenLeft ScreenRight ScreenTop ScreenBottom 
	-- Numpad0 Numpad1 Numpad2 Numpad3 Numpad4 Numpad5 Numpad6 
	-- Numpad7 Numpad8 Numpad9 NumpadMultiply NumpadPlus NumpadSeparator 
	-- NumpadMinus NumpadPeriod NumpadSlash 
	
bindings =
{
	----------------------------------------------------------------------------------------------------------------
	-- system commands
	----------------------------------------------------------------------------------------------------------------
	escape							="Escape",
	accept							="Enter",
	commandqueue						="Shift",
	pause							="Pause",
	systemmenu						="F10",
	
	camera_left 			="Left",
	camera_right 			="Right",
	camera_up 				="Up",
	camera_down 			="Down",
	
	----------------------------------------------------------------------------------------------------------------
	-- Universal taskbar commands (any hotkeys used here cannot be used elsewhere)
	----------------------------------------------------------------------------------------------------------------
	
	--infantry_cycle						="Period",
	--vehicle_cycle						="Slash", 
	event_cue_cycle						="Space",
	
	-------------------------------------------
	-- Global Commands
	-------------------------------------------

	attack							="A",
	retreat							="X",
	retreat_queue					="Shift+X",
	repair							="E",
	reinforce						="R",
    overwatch						="Shift+R",    
	attackground					="G",
	attackmelee						="Z",
	halt							="S",
	rally							="F7",	
	unload							="U",		
	ping							="F8",		
	defend							="F9",		
	stance							="Backslash",

	cancel_construction				="Escape",
	retire							="Delete",





	--------------------------------------------------------------------------------------------------------------	
	-- multiple selection hotkeys
	--------------------------------------------------------------------------------------------------------------
	select_all						="Control+A",
	select_hq                       ="F1",
	select_hero                     =".",
	retreat_hero					="Control+X",
	retreat_all						="Alt+X",
	retreat_beacon					="T",
	last_stand_invulnerability			="Control+Alt+U", 
	next_primary_selection  					="Tab",
	prev_primary_selection  					="Control+Tab",
	-- checked with mouse click (removes clicked items from selection) 
	-- note: must only be one key
	remove_selection_modifier  					="Control",		
	-- checked with mouse click (selects all units of the same type) -- note: must only be one key
	crop_selection_modifier 					="Shift",  	
	
	--------------------------------------------------------------------------------------------------------------
	-- hotkey group hotkeys
	--------------------------------------------------------------------------------------------------------------
	-- Select the group #
	
	hkgroup_select0						="0",
	hkgroup_select1						="1",
	hkgroup_select2						="2",
	hkgroup_select3						="3",
	hkgroup_select4						="4",
	hkgroup_select5						="5",
	hkgroup_select6						="6",
	hkgroup_select7						="7",
	hkgroup_select8						="8",
	hkgroup_select9						="9",

	-- Set the group to be the current selection
	
	hkgroup_set0						="Control+0",
	hkgroup_set1						="Control+1",
	hkgroup_set2						="Control+2",
	hkgroup_set3						="Control+3",
	hkgroup_set4						="Control+4",
	hkgroup_set5						="Control+5",
	hkgroup_set6						="Control+6",
	hkgroup_set7						="Control+7",
	hkgroup_set8						="Control+8",
	hkgroup_set9						="Control+9",
	
	-- Set the shift select groups
	
	hkgroup_shiftselect0				="Shift+0",
	hkgroup_shiftselect1				="Shift+1",
	hkgroup_shiftselect2				="Shift+2",
	hkgroup_shiftselect3				="Shift+3",
	hkgroup_shiftselect4				="Shift+4",
	hkgroup_shiftselect5				="Shift+5",
	hkgroup_shiftselect6				="Shift+6",
	hkgroup_shiftselect7				="Shift+7",
	hkgroup_shiftselect8				="Shift+8",
	hkgroup_shiftselect9				="Shift+9",


		-------------------------------------------
	-------------- Space Marines Unit Creation--------------
		-------------------------------------------

	sm_scout_marine 			="C",
	sm_librarian				="L",
	sm_tactical_marine			="S",
	sm_devastator				="B",
	sm_assault_marine			="A",
	sm_devastator_plasma_cannon		="P",
	sm_dreadnought				="D",
	sm_rhino				="R",
	sm_predator				="T",
	sm_landraider				="N",
	tier_2					="U",
	tier_3					="U",



		-------------------------------------------
	-------------- Space Marine Global Abilities-------------
		-------------------------------------------

	sm_for_the_emperor		="F2",	-- For the Emperor
	sm_larramans_blessing		="F2",	-- Larrama's Blessing
	sm_blessing_of_the_omnissiah	="F2", -- Blessing of the Omnissiah
	sm_call_drop_pod_dreadnought	="F4",	-- Venerable Dreadnought Drop Pod
	sm_call_drop_pod_reinforce_pvp	="F3",	-- Drop Pod
	sm_deep_strike_terminators	="F5",	-- Deep Strike Terminator Assault Squad
	sm_deep_strike_terminators_assault	="F4",	-- Deep Strike Terminator Squad
	sm_apothecary_angels_of_death	="F4",	-- Angels of Death
	sm_orbital_bombardment_pvp	="F6",	-- Orbital Bombardment

	
		-------------------------------------------
	-------------- Space Marine Unit Upgrades-------------
		-------------------------------------------

	sm_scout_squad_sergeant		="L",	-- Scout Sergeant
	sm_shotgun			="T",	-- Shotguns
	sm_sniper_rifle			="N",	-- Sniper Rifles
	sm_infiltration_upgrade_pvp	="D",	-- Advanced Infiltration Training
	sm_tactical_squad_sergeant	="L",	-- Sergeant (Tactical Marine Squad)
	sm_flamer			="F",	-- Flamer
	sm_plasma_gun			="P",	-- Plasma Gun
	sm_missile_launcher		="M",	-- Missile Launcher
	heavy_bolter_rounds		="T",	-- Advanced Targeting
	sm_assault_squad_sergeant	="L",	-- Sergeant (Assault Squad)
	melta_bombs			="T",	-- Thunder and Lightning
	sm_assault_cannon_dreadnought	="C",	-- Assault Cannon (Dreadnought)
	sm_multi_melta_dreadnought	="M",	-- Multi-melta
	dark_age_of_technology		="D",	-- Dark Age of Technology
	rhino_armor			="P",	-- Reinforced Armor Plating (Rhino)
	sm_assault_cannon		="C",	-- Assault Cannon
	sm_heavy_flamer			="F",	-- Heavy Flamer
	sm_cyclone_missile_launcher	="M",	-- Cyclone Missile Launcher
	sm_lib_staff			="F",	-- Force Staff
	sm_lib_hood			="H",	-- Psychic Hood
	sm_lib_axe			="O",	-- Tome of Time
	sm_lascannon			="L",	-- Lascannon
	sm_lightning_claws		="L",	-- Lightning Claws

		-------------------------------------------
	-------------- Space Marine Hero Upgrades-------------
		-------------------------------------------

	wp_force_two_handed_hammer	="H",	-- Thunder Hammer
	wp_force_power_sword		="W",	-- Power Sword
	wp_force_sword_and_storm_shield	="D",	-- Chainsword and Storm Shield
	wp_force_power_fist		="F",	-- Power Fist
	wp_force_assault_cannon		="C",	-- Assault Cannon
	wp_force_heavy_flamer		="F",	-- Heavy Flamer
	arm_force_artificer_armour	="O",	-- Artificer Armor
	arm_force_pneumatically_enhanced_armour	="T",	-- Armor of Alacrity
	arm_force_terminator_armour	="M",	-- Terminator Armor
	acc_force_iron_halo		="I",	-- Iron Halo
	acc_force_sacred_standard	="C",	-- Sacred Standard
	acc_force_teleporter_pack	="J",	-- Teleporter Pack
	wp_apoth_anointed_power_axe	="N",	-- Anointed Power Axe
	wp_apoth_sanguine_chainsword	="W",	-- Sanguine Chainsword
	wp_apoth_master_crafted_bolter	="F",	-- Master-Crafted Bolter
	arm_apoth_gyro_stabilized_armour="I",	-- Armor of Purity
	arm_apoth_combat_stimulant_equipment	="C",	-- Combat Stimulant Equipment
	arm_apoth_armour_of_the_apothecarion	="H",	-- Armor of the Apothecarion
	acc_apoth_toxin_grenades	="G",	-- Purification Vials
	acc_apoth_improved_medical_equipment	="M",	-- Improved Medical Equipment
	acc_apoth_purification_rites	="P",	-- Purification Rights
	arm_tech_signum_armor		="K",	-- Signum Armor
	arm_tech_artificer_armour	="M",	-- Artificer Armor
	wp_tech_plasma_gun		="G",	-- Plasma Gun
	wp_tech_meltagun		="E",	-- Melta-gun
	wp_tech_master_crafted_bolter	="T",	-- Master-Crafted Bolter
	wp_tech_consecrated_bolter	="B",	-- Consecrated Bolter
	arm_tech_bionics		="W",	-- Bionics
	acc_tech_orbs_of_omnissiah	="O",	-- Orbs of the Omnissiah
	acc_tech_refractor_field	="F",	-- Refractor Field
	

		-------------------------------------------
	-------------- Space Marine unit abilities-------------
		-------------------------------------------
	
	sm_and_they_shall_know_no_fear	="T",	-- And They Shall Know No Fear
	sm_charge_dreadnaught		="C",	-- Charge
	sm_cyclone_missile_launcher_barrage_pvp	="B",	-- Cyclone Missile Barrage
	sm_dreadnought_emperors_fist	="F",	-- Emperor's Fist
	sm_focused_fire_pvp		="F",	-- Focus Fire
	sm_frag_grenade			="F",	-- Frag Grenade
	sm_infiltration_pvp		="I",	-- Infiltrate
	sm_explosive_shot		="V",	-- explosive shot
	sm_let_it_burn			="N",	-- Cleansing Flame
	sm_melta_bomb_pvp		="B",	-- Melta-bomb
	sm_merciless_blows		="C",	-- Merciless Strike
	sm_jump_assault_marine		="J",	-- Jump
	sm_flashbang			="I",	-- Flashbang Grenade
	sm_repair_pvp			="P",	-- Repair
	sm_dreadnought_charge		="C",	-- Charge
	sm_smoke_launcher		="M",	-- Smoke Grenade
	sm_teleport_terminators		="J",	-- Teleport
	sm_dreadnought_assault_cannon_barrage_explosive	="B",	-- Assault Cannon Barrage
	sm_gate_of_infinity		="G",	-- Gate of Infinity
	sm_shield_wall			="F",	-- Force Barrier
	sm_grace			="E",	
	sm_buff_self_damage		="E",

		-------------------------------------------
	-------------- Space Marine hero abilities-------------
		-------------------------------------------

	sm_apothecary_advanced_healing	="H",	-- Advanced Healing
	sm_apothecary_heal		="E",	-- Heal
	sm_apothecary_heal_signum_armor	="E",	-- Heal
	sm_apothecary_rapid_fire	="F",	-- Full Auto
	sm_combat_stimulants		="C",	-- Combat Stimulants
	sm_toxin_grenade_apothecary	="G",	-- Purification Vials
	sm_battle_cry			="B",	-- MP version
	sm_force_iron_halo		="I",	-- MP version
	sm_defend			="D",	-- Defend
	sm_power_fist_tank_shock	="F",	-- Flesh Over Steel
	sm_sprint_pvp			="T",	-- Sprint
	sm_teleport_apoth		="J",	-- Teleport
	sm_brothers_in_arms		="B",	-- Brothers in Arms
	sm_build_button			="B",	-- Build
	sm_mark_target			="K",	-- Mark Target
	sm_powerful_sweep		="W",	-- Powerful Sweet
	sm_refractor_field_blind	="D",	-- Refractor Field
	sm_tech_refractor_field		="F",	-- Refractor Field
	sm_techmarine_emp_grenade	="O",	-- Orb of the Omnissiah
	sm_techmarine_high_powered_shot	="T",	-- High-Powered Shot
	sm_techmarine_overcharge	="G",	-- Overcharge
	
	------------------------------------
	-- SP Specific abilities
	------------------------------------
	
	-- Wargear abilities
	sm_melta_bomb								= "B", -- SP version
	sm_frag_grenade								= "F", -- SP version
	sm_frag_grenade_energy						= "F", -- SP version (upgraded version for Tarkus)
	sm_flash_grenade							= "I", -- SP version (actually called a blind grenade)
	sm_satchel_charge							= "D", -- SP version (demolition charge)
	sm_repair									= "P", -- SP version (matches MP)
	sm_medkit									= "M", -- SP version
	sm_cyclone_missile_launcher_barrage			= "B", -- SP version (matches MP)
	sm_smoke_grenades							= "K", -- SP Version
	
	-- Stratagem abilities
	sm_call_bombing_run							= "C", -- SP version
	sm_blessing_of_fortitude					= "O", -- SP version
	sm_strat_supply_call_turret					= "V", -- SP version
	
	-- Unique FC abilities:
	sm_charge_force_commander					= "Q", -- Primary
	sm_str1_battle_cry							= "W", -- Secondary
	sm_sweeping_doom							= "Y", -- Corrupting Ability
	
	-- Unique FC Wargear
	sm_teleport_fc								= "E", -- Teleport Pack equipped
	sm_jump_fc									= "E", -- Jump Pack equipped
	sm_rally_banner								= "E", -- Rally Banner equipped
	sm_iron_halo								= "E", -- Iron Halo equipped
	sm_orbital_bombardment						= "R", -- Orbital Strike wargear equipped
	sm_call_drop_pod_reinforce					= "T", -- SP version
	
	-- Unique Tarkus abilities:
	sm_tactical_advance							= "Q", -- Primary
	sm_taunt_tarkus								= "W", -- Secondary
	sm_feel_no_pain								= "E", -- Secondary
	sm_unholy_zeal								= "R", -- Secondary
	
	-- Unique Cyrus abilities:
	sm_infiltrate								= "Q", -- Primary
	sm_suppressive_fire							= "W", -- Secondary
	sm_high_powered_shot						= "W", -- Secondary
	sm_high_explosive_shells					= "W", -- Secondary
	sm_promethium_bomb							= "W", -- Secondary
	sm_scout_reinforce							= "E", -- Tertiary
	sm_scout_teleport							= "Y", -- Tertiary
	sm_deadly_package							= "J", -- Tertiary
	
	-- Unique Cyrus Wargear
	sm_proximity_mines							= "R", -- Proximity Mines
	sm_remote_detonator							= "T", -- Remote Detonator
	
	-- Unique Avitus abilities:
	sm_focused_fire								= "Q", -- Primary
	sm_sprint									= "W", -- Secondary
	sm_clearout									= "E", -- Tertiary
	sm_frag_missile								= "R", -- Tertiary
	sm_aura_of_blood							= "T", -- Tertiary
	
	-- Unique Thaddeus abilities:
	sm_jump										= "Q", -- Primary
	sm_teleport									= "Q", -- Primary (variant with Terminator Armor equipped)
	sm_merciless_blows_thaddeus					= "W", -- Secondary
	
	-- Unique Thule abilities:
	sm_emperors_fist							= "Q", -- Primary
	sm_emperors_fist_improved					= "Q", -- Primary (upgraded version)
	sm_guardian									= "W", -- Secondary
	sm_charge_dreadnought						= "E", -- Tertiary
	sm_assault_cannon_barrage					= "R", -- Quad
	sm_assault_cannon_barrage_explosive			= "R", -- Quad
	
	-- Unique Gabriel abilities:
	sm_gabriel_inspiring_shout					= "Q", -- Primary
	sm_gabriel_marked_target					= "W", -- Secondary
	sm_gabriel_sunder_armor						= "E", -- Tertiary
	
	-- Defend global abilities
	sm_call_turret_defend						="F1",	-- Deploy Tarantula
	sm_call_proximity_mines_defend				="F2",	-- Cluster Mines
	sm_call_napalm								="F3",	-- Incendiary Strike
	sm_call_orbital_bombardment_defend			="F4",	-- Orbital Bombardment
	sm_global_artillery_xp1						="F7",	-- Artillery Strike
	sm_call_turret_defend_xp1					="F7",	-- Deploy Missile Turret
	
	-- Librarian Abilities
	sm_librarian_avenger						= "Q", -- Primary
	sm_librarian_shield_wall					= "B", -- Primary 
	sm_librarian_force_dome						= "F", -- Primary 
	sm_librarian_purify							= "R", -- Primary
	sm_librarian_vortex_of_doom					= "V", -- Primary
	sm_librarian_ignite_soul					= "Y", -- Primary
	sm_librarian_smite							= "W", -- Primary
	sm_librarian_split							= "L", -- Primary 
	sm_librarian_might_of_the_ancients			= "K", -- Primary
	sm_librarian_quickening						= "E", -- Primary
	sm_librarian_daemonic_host					= "H", -- Primary
	sm_librarian_conduit						= "P", -- Primary 
	sm_librarian_invisibility					= "I", -- Primary
	sm_librarian_time_distortion				= "U", -- Primary
	sm_librarian_subjugate						= "J", -- Primary 
	sm_librarian_coruscating					= "R", -- Primary
	sm_librarian_chains							= "C", -- Primary
	sm_librarian_teleport						= "T", -- Primary 
	sm_librarian_temporal						= "D", -- Primary 
	-- These abilities were cut
	sm_librarian_transfer_energy				= "I", -- Primary 
	sm_librarian_horrify						= "H", -- Primary
	sm_librarian_gate_of_infinity				= "G", -- Primary 
	sm_librarian_warpfire						= "V", -- Primary 
	sm_librarian_scarification					= "U", -- Primary
	
	-- Corruption Globals
	sm_awaken					="F1",
	sm_unholy_shield			="F2",
	sm_unholy_wish				="F3",
	sm_bullet_proof				="F4",
	sm_blessing_of_dark_gods	="F5",
	sm_clouded_minds			="F6",

	------------------------------------
	-- XP2 SP Specific abilities
	------------------------------------
	-- All Races
	all_xp2_health_upgrade = "LBracket",
	all_xp2_energy_upgrade = "RBracket",
	all_xp2_damage_upgrade = "Semicolon",
	 
	all_xp2_scuttle = "X",
	
	-- Chaos Abilities
	csm_xp2_hg1									= "X",
	csm_xp2_hg2									= "V",
	-- Accessories
	csm_xp2_frag_grenade						= "F", -- Primary
	csm_xp2_melta_bomb							= "B", -- Primary
	csm_xp2_blight_grenade						= "T", -- Primary
	csm_xp2_blood_thirst						= "L", -- Primary
	-- Spells (shared between Chaos Lord and Sorcerer)
	csm_xp2_warp								= "W", -- Primary
	csm_xp2_consume								= "E", -- Primary
	csm_xp2_berserk								= "R", -- Primary
	csm_xp2_let_the_galaxy_burn					= "Y", -- Primary
	csm_xp2_drain_life							= "U", -- Primary
	csm_xp2_horrify								= "I", -- Primary
	-- Chaos Lord Specific Abilities
	csm_xp2_sweeping_doom						= "Q", -- Primary
	csm_xp2_charge								= "C", -- Primary
	-- Plague Champion
	csm_xp2_infection							= "Q", -- Primary
	csm_xp2_accelerate							= "W", -- Primary
	csm_xp2_repair								= "P", -- Primary
	-- Aspiring Champion
	csm_xp2_chaotic_zeal						= "Q", -- Primary
	csm_xp2_weapon_ability						= "W", -- Primary
	csm_xp2_cloud_of_flies						= "E", -- Primary
	csm_xp2_warp_shift							= "R", -- Primary
	-- Sorcerer
	csm_xp2_doombolt							= "Q", -- Primary
	csm_xp2_doomblast							= "Q", -- Primary
	csm_xp2_chains_of_torment					= "T", -- Primary
	csm_xp2_doppelganger						= "D", -- Primary
	csm_xp2_coruscating_flames					= "F", -- Primary
	csm_xp2_bloodsacrifice						= "B", -- Primary
	-- Great Unclean One
	cms_xp2_self_heal							= "E", -- Primary
	-- XP2 Abilities
	ork_q										= "Q", -- Primary
	ork_w										= "W", -- Primary 
	ork_e										= "E", -- Primary 
	ork_r										= "R", -- Primary
	ork_t										= "T", -- Primary 
	ork_y										= "Y", -- Primary 
	
	ork_xp2_hg1							= "M",
	ork_xp2_hg2							= "V",
	-- Shared Accessories
	ork_xp2_fightin_juice						= "J", -- 
	ork_xp2_stikkbomb							= "F", -- 
	ork_xp2_stunbomb							= "D", -- 
	ork_xp2_burnabomb							= "B", -- 
	ork_xp2_smokebomb							= "O", --
	ork_xp2_detonate_kommando					= "K", --
	ork_xp2_tank_busta_bomb 				= "M",
	ork_xp2_proxy_mines						= 	"U",
	ork_xp2_swapsies							= 	"N",
	-- Mekboy
	ork_xp2_build_turret						= "C", -- 
	ork_xp2_build_waaagh_banner					= "V", --
	ork_xp2_mega_rumblah						= "H", -- 
	-- Kommando
	ork_xp2_infiltration						= "I", -- 
	
	
	-- XP2 Space Marine Abilities
	sm_xp2_ass_terminator					= "V",
	sm_xp2_terminator						= "R",
	sm_xp2_hg1								= "M",
	sm_xp2_hg2								= "Z",
	sm_xp2_razor								= "H",
	-- Accessories
	sm_xp2_frag_grenade					= "F", -- Primary
	sm_xp2_melta_bomb						= "B", -- Primary
	sm_xp2_smoke_bomb					= "D", -- Primary
	sm_xp2_flash_grenade					= "V", -- Primary
	sm_xp2_medkit							= "M", -- Primary
	sm_xp2_energy_booster				= "N", -- Primary
	sm_xp2_emp_grenade					= "O", -- Primary
	sm_xp2_demolition_pack				= "H", -- Primary
	
	-- Explosives (shared between Techmarine and Cyrus)
	sm_xp2_remote_detonation			= "J", -- Primary
	sm_xp2_proximity_mines				= "K", -- Primary
	
	-- Force Commander Specific Abilities
	sm_xp2_charge							= "Q", -- Primary
	sm_xp2_battle_cry						= "W", -- Primary
	sm_xp2_taunt								= "E", -- Primary
	sm_xp2_commander_item				= "R", -- Primary
	
	-- Veteran Sergeant
	sm_xp2_weapon_specialist_vet		= "Q", -- Primary
	sm_xp2_jump								= "W", -- Primary
	sm_xp2_tactical_advance				= "E", -- Primary
	sm_xp2_artillery							= "R", -- Primary
	
	-- Cyrus
	sm_xp2_infiltrate							= "Q", -- Primary
	sm_xp2_weapon_specialist				= "W", -- Primary
	sm_xp2_teleport							= "E", -- Primary
	sm_xp2_bullet_time						= "R", -- Primary
	
	-- Techmarine
	sm_xp2_refractor_field					= "Q", -- Primary
	sm_xp2_relay_beacon					= "W", -- Primary
	sm_xp2_power_sweep					= "E", -- Primary
	sm_xp2_dreadnought					= "R", -- Primary
	sm_xp2_machine_spirit					= "T", -- Primary
	sm_xp2_repair								= "P", -- Primary
	
	-- XP2 Imperial Guard Abilities
	ig_xp2_hg1									= "Z",
	ig_xp2_hg2									= "X",
	ig_xp2_hg3									= "V",
	
	-- Accessories
	ig_xp2_frag_grenade					= "F", -- Primary
	ig_xp2_melta_bomb					= "B", -- Primary
	ig_xp2_smoke_bomb					= "D", -- Primary
	ig_xp2_flash_grenade				= "V", -- Primary
	ig_xp2_medkit							= "M", -- Primary
	ig_xp2_energy_booster				= "N", -- Primary
	ig_xp2_emp_grenade				= "O", -- Primary
	ig_xp2_demolition_pack				= "H", -- Primary
	ig_xp2_refractor_field				= "I", -- Primary
	ig_xp2_rosarius						= "K", -- Primary
	ig_xp2_global_multilaser			= "F2",
	
	-- Lord General Specific Abilities
	ig_xp2_weapon_specialist			= "Q", -- Primary
	ig_xp2_deploy							= "W", -- Primary
	ig_xp2_commendation				= "E", -- Primary
	ig_xp2_protective_barrier			= "R", -- Primary
	ig_xp2_leman_russ					= "T", -- Primary
	ig_xp2_turret							= "Y", -- Primary
	
	-- Commissar
	ig_xp2_execute						= "Q", -- Primary
	ig_xp2_draw_fire						= "W", -- Primary
	ig_xp2_inspiring_strike				= "E", -- Primary
	ig_xp2_fanatacism					= "R", -- Primary
	
	-- Specialist
	ig_xp2_infiltrate						= "Q", -- Primary
	ig_xp2_repair							= "W", -- Primary
	ig_xp2_flare							= "E", -- Primary
	ig_xp2_artillery_barrage				= "R", -- Primary
	ig_xp2_proximity_mines				= "T", -- Primary
	ig_xp2_remote_detonation			= "Y", -- Primary
	
	-- Inquisitor
	ig_xp2_hammer_of_the_witches	= "Q", -- Primary
	ig_xp2_shield_of_the_righteous	= "W", -- Primary
	ig_xp2_vanish							= "E", -- Primary
	ig_xp2_crippling_volley				= "R", -- Primary
	ig_xp2_purgatus						= "T", -- Primary
	ig_xp2_assail							= "Y", -- Primary
	ig_xp2_divine_pronouncement	= "P", -- Primary
	
	-- XP2 Eldar Abilities
	
	-- Army Builder Upgrades
	eld_xp2_brightlance 					= "M",
	eld_xp2_dcannon						= "N",
	eld_xp2_hg1							= "X",
	eld_xp2_hg2							= "C",
	
	-- Accessories (Shared between ranger and the autarch)
	eld_xp2_plasma_grenade				= "F", -- Primary
	eld_xp2_haywire_grenade				= "B", -- Primary
	eld_xp2_energy_shield					= "I", -- Primary
	eld_xp2_anti_gravity_grenade		= "V", -- Primary
	eld_xp2_shimmer_orb					= "O", -- Primary

	-- Spells (Shared between farseer and the warlock)
	eld_xp2_destructor						= "D", -- Primary
	eld_xp2_warp_throw						= "F", -- Primary
	eld_xp2_confuse							= "C", -- Primary
	eld_xp2_psychic_shield					= "I", -- Primary
	eld_xp2_channeling_rune				= "M", -- Primary
	
	-- Autarch
	eld_xp2_command						= "Q", -- Primary
	eld_xp2_leap								= "W", -- Primary
	eld_xp2_skyleap							= "E", -- Primary
	eld_xp2_force_shield						= "R", -- Primary
	eld_xp2_illusion							= "T", -- Primary
	
	-- Farseer
	eld_xp2_spiritual_rites					= "Q", -- Primary
	eld_xp2_ward								= "W", -- Primary
	eld_xp2_time_field						= "E", -- Primary
	eld_xp2_mind_war						= "R", -- Primary
	
	-- Warlock
	eld_xp2_immolate							= "Q", -- Primary
	eld_xp2_ethereal_slash					= "W", -- Primary
	eld_xp2_meditation						= "E", -- Primary
	eld_xp2_heart_of_darkness			= "R", -- Primary
	eld_xp2_providence						= "T", -- Primary
	
	-- Ranger
	eld_xp2_infiltrate							= "Q", -- Primary
	eld_xp2_kinetic_pulse					= "W", -- Primary
	eld_xp2_sabotage						= "E", -- Primary
	
	-- XP2 Tyranid Abilities
	
	-- Hive Tyrant
	tyr_xp2_bioplasma						= "Q", -- Primary
	tyr_xp2_call_in_melee					= "W", -- Primary
	tyr_xp2_call_in_ranged					= "E", -- Primary
	tyr_xp2_psychic_scream				= "R", -- Primary
	tyr_xp2_charge							= "T", -- Primary
	tyr_xp2_shield								= "P", -- Primary
	
	-- Commander Accessories
	tyr_xp2_spore_drop						= "V", -- Primary
	tyr_xp2_reclamation						= "C", -- Primary
	tyr_xp2_regeneration					= "D", -- Primary
	tyr_xp2_mycetic_mines					= "N", -- Primary
	tyr_xp2_spore_mines					= "O", -- Primary
	tyr_xp2_teleport							= "F", -- Primary
	
	-- XP2 GLOBAL Abilities

	tyr_xp2_global_1							= "F2", -- Primary
	tyr_xp2_global_2							= "F3", -- Primary
	tyr_xp2_global_3							= "F4", -- Primary
	tyr_xp2_global_4							= "F5", -- Primary
	tyr_xp2_global_5							= "F6", -- Primary

		-------------------------------------------
	-------------- Space Marine buildings-------------
		-------------------------------------------
	
	sm_heavy_bolter_turret_tech_marine	="J",	-- Heavy Bolter Turret
	sm_techmarine_field_ops			="Y",	-- Teleporter Relay Beacon
	sm_deployable_cover			="O",
	sm_listening_post			="A",	-- Power Node
	sm_generator				="A",	-- Generator
	sm_prox_mine_pvp			="M",	-- Proximity Mines
	sm_bunker				="B",
	sm_heal_beacon				="H",
	sm_repair_beacon			="R",
	sm_lascannon_turret			="L",	-- Lascannon Turret

		


		-------------------------------------------
	-------------- Ork Unit Creation-------------
		-------------------------------------------

	ork_slugga			="S",	-- Slugga
	ork_shoota			="H",	-- Shoota
	ork_stikkbommas			="B",	-- Stikbommas
	ork_stormboy			="R",	-- Stormboy
	ork_lootas			="L",	-- Lootas
	ork_tankbustas			="T",	-- Tankbustas
	ork_deff_dread			="D",	-- Deff Dread
	ork_wartrukk			="W",	-- Wartrukk
	ork_kommandos			="K",	-- Kommandos
	ork_tank			="O",	-- Tank
	ork_nob_squad			="N",	-- Nob Squad
	ork_weirdboy			="Y",	-- Weirdboy
	ork_battlewagon			="Q",	-- Battlewagon			

		-------------------------------------------
	-------------- Ork Global Abilities-------------
		-------------------------------------------

	ork_warboss_ard_boyz		="F3",	-- 'ard boyz
	ork_warboss_use_yer_choppas	="F4",	-- Use yer choppas
	ork_waaagh			="F2",	-- Waaagh
	ork_rokks			="F5",	-- Rokks
	ork_kommando_kommandos_iz_da_sneakiest	="F4",	-- Kommando Iz Da Sneakiest
	ork_kommando_hide		="F3",	-- Hide da Boyz
	ork_mekboy_more_dakka		="F3",	-- More Dakka
	ork_mekboy_kult_of_speed	="F4",	-- Kult of Speed
	

		-------------------------------------------
	-------------- Ork unit upgrades-------------
		-------------------------------------------

	ork_burna			="B",	-- Burna
	ork_nob_leader			="N",	-- Nob Leader
	ork_big_shoota			="B",	-- Big Shoota
	ork_nob_leader_shoota		="N",	-- Shoota Nob Leader
	ork_stikkbomma_kit		="B",	-- Stikkbomma kit
	ork_stormboy_jump_upgrade	="K",	-- Jump
	ork_deffgun_beamy		="B",	-- Beamy Deffgun
	ork_tank_armor			="P",	-- Reinforced Plating
	ork_nob_leader_kommando		="N",	-- Kommando Nob Leader
	ork_nob_kit			="G",	-- Meaner an' Greener
	ork_nob_hammers			="H",	-- 'Uge hammers
	ork_nob_leader_nobz		="N",	-- Nob Leader
	ork_nob_leader_stormboy		="N",	-- Stormboy Nob Leader
	ork_deff_dread_burna		="B",	-- Burnaz 'n Bitz
	ork_weirdboy_foot		="F",	-- Warphead
	ork_weirdboy_bigga_brains		="B",	-- Bigga Brains
	ork_weirdboy_warpath 		="W",	-- Warpath


		-------------------------------------------
	-------------- Ork hero upgrades-------------
		-------------------------------------------

	wp1_mekboy_deffgun		="D",	-- Deffgun
	wp1_ork_mekboy_beamy_deffgun	="R",	-- Beamy Deffgun
	wp1_mekboy_big_shoota			="H",  -- mek big shoota
	arm_mekboy_electric_armor	="E",	-- Electric Armor
	arm_mekboy_earthquake_machine	="G",	-- Mega-Rumblah
	arm_mekboy_battery_pack		="T",	-- Battery Pack
	acc_mekboy_force_field		="F",	-- Kustom Force Field
	acc_mekboy_prox_mines		="M",	-- Proximity Mines
	acc_mekboy_uber_generator	="B",	-- Supa Tuff Beam
	wp1_ork_bang_bang_hammer	="H",	-- Bang Bang Hammer
	wp1_ork_kustom_shoota		="M",	-- Kustom Shoota
	wp1_ork_warboss_power_claw	="W",	-- Power Klaw
	arm_ork_warboss_cybork_bits	="C",	-- Cyborg Implants
	arm_warboss_spiky_armor		="I",	-- Spiky Armor
	arm_warboss_mega_armor		="O",	-- 'eavy Armor
	acc_warboss_angry_bits		="Y",	-- Angry Bits
	acc_warboss_boss_pole		="B",	-- Boss Pole
	acc_warboss_trophy_rack		="K",	-- Trophy Rack
	wp1_kommando_spechul_shoota	="L",	-- Speshul Shoota
	wp1_ork_kommando_hero_assassin_knife	="N",	-- Assashun's Knife
	wp1_kommando_rokkit_launcha	="H",	-- Rokkit Launcha
	arm_kommando_extra_equipment	="E",	-- Extra Equipment
	arm_kommando_boom_time		="O",	-- Boom Time!
	arm_kommando_camo_armor 	="C",	-- Improved Camouflage
	acc_kommando_grenade		="T",	-- Stikkbombz
	acc_kommando_booby_trap		="P",	-- Booby Traps
	acc_kommando_kaboom		="K",	-- Kaboom!


		-------------------------------------------
	-------------- Ork unit abilities-------------
		-------------------------------------------
	
	ork_burna_bomb			="B",	-- Burna Bomb
	ork_deff_dread_rampage		="E",	-- Rampage
	ork_infiltration		="I",	-- Infiltrate
	ork_kommando_ambush		="D",	-- Ambush
	ork_nob_frenzy			="E",	-- Frenzy
	ork_recklessness		="E",	-- Recklessness
	ork_smoke_bomb			="E",	-- Smoke Bomb
	ork_steady_firing		="D",	-- Aiming? Wotz Dat?
	ork_stikkbomb_stikkbommas	="T",	-- Stikkbomb
	ork_stikkbomma_stun_grenade	="M",	-- Stun Grenade
	ork_stormboy_jump		="J",	-- Jump
	ork_stormboy_jump_improved	="J",	-- Improved Jump
	ork_stormboy_suicide_bomba	="B",	-- Bommaboyz
	ork_tank_high_powered_shot	="B",	-- Boomgun
	ork_tankbusta_mortar_shots	="B",	-- Rokkit Barrage
	ork_waaagh_shout		="W",	-- Waaagh!!!
	ork_repair			="P",	-- Repair
	ork_weirdboy_throw		="B",	-- Over Dere!
	ork_foot_of_gork		="F",	-- Foot of Gork
	ork_warpath			="W",	-- Warpath
	ork_zzap				="T",	-- Zzap
	ork_warp_vomit			="V",	-- warp Vomit
	ork_damage_aoe_battlewagon	="B", -- Battlewagon Boomshot
	ork_battlewagon_knockback_timed	="T", -- deff rolla


		-------------------------------------------
	-------------- Ork hero abilities-------------
		-------------------------------------------
	
	ork_assassinate_melee		="N",	-- Assassinate
	ork_infiltration_kommando	="I",	-- Infiltrate
	ork_infiltration_kommando_improved	="I",	-- Improved Infiltrate
	ork_kommando_explosive_shells	="V",	-- High Explosive Shells
	ork_kommando_kaboom		="K",	-- Kaboom!
	ork_kommando_mark_target_shot	="H",	-- Right in Me Crosshairs
	ork_kommando_remote_detonation	="P",	-- Plant Booby Trap
	ork_kommando_stun_grenade	="B",	-- Stunbomb
	ork_stikkbomb			="T",	-- Stikkbomb
	ork_mekboy_earthquake		="G",	-- Mega-Rumblah
	ork_mekboy_energy_transfer	="T",	-- 'ave a taste
	ork_force_field			="F",	-- Kustom Force Field
	ork_mekboy_force_field_overcharge	="O",	-- Force Field Overcharge
	ork_mekboy_prox_mine_scatter	="M",	-- Proximity Mines
	ork_mekboy_teleport		="J",	-- Teleport
	ork_mekboy_uber_shield		="B",	-- Supa Tuff Beam
	ork_mekboy_electric_armor	="E",	-- Electric Armor
	ork_warboss_big_stomp		="C",	-- Big Stomp
	ork_warboss_stomp		="T",	-- Stomp
	ork_warboss_now_im_angry	="Y",	-- Now I'm Angry
	ork_warboss_shooting		="F",	-- Shoot em Good

		-------------------------------------------
	-------------- Ork buildings-------------
		-------------------------------------------
	
	ork_orky_turret_mek		="Y",	-- Mekboy Turret
	ork_waaagh_banner		="W",	-- Waaagh Banner
	ork_listening_post		="A",	-- Power Node
	ork_generator			="A",	-- Power Generator
	ork_repair_addon		="R",
	ork_reinforce_addon		="F",
	ork_bunker			="U",


		-------------------------------------------
	-------------- Eldar Unit Creation-------------
		-------------------------------------------

	eld_guardian			="G",	-- Guardian
	eld_guardian_shuriken_cannon	="S",	-- Shuriken Cannon Platform
	eld_ranger			="N",	-- Ranger
	eld_banshee			="B",	-- Banshee
	eld_warp_spider			="W",	-- Warp Spider
	eld_guardian_brightlance	="L",	-- Brightlance Cannon Platform
	eld_wraithlord			="D",	-- Wraithlord
	eld_falcon			="F",	-- Falcon
	eld_fire_prism			="P",	-- Fire Prism
	eld_lesser_avatar		="A",	-- Avatar
	eld_guardian_d_cannon		="C",	-- D-Cannon Platform
	eld_wraithguard			="H",	-- Wraithguard



		-------------------------------------------
	-------------- Eldar Global Abilities-------------
		-------------------------------------------

	eld_webway_gate			="F2",	-- Webway Gate
	eld_eldritch_storm		="F5",	-- Eldritch Storm
	eld_farseer_farsight		="F3",	-- Farsight
	eld_farseer_build_seer_council	="F4",	-- Seer Council
	eld_warlock_swift_movement	="F3",	-- Swift Movement
	eld_warlock_conceal_global	="F4",	-- Distort Field
	eld_warp_spider_crack_shot	="F3",	-- Crack Shot
	eld_warp_spider_spiders_brood	="F4",	-- Spider's Brood



		-------------------------------------------
	-------------- Eldar Unit Upgrades-------------
		-------------------------------------------

	eld_warlock			="L",	-- Warlock
	battle_equipment		="B",	-- Battle Equipment
	pathfinder_gear			="P",	-- Pathfinder Gear
	eld_banshee_exarch		="L",	-- Banshee Exarch
	aspect_of_banshee		="C",	-- Aspect of Banshee
	eld_warpspider_exarch		="L",	-- Warp Spider Exarch
	aspect_of_warp_spider		="C",	-- Aspect of Warp Spider
	wraithbone_synergy		="B",	-- Wraithbone
	eld_shuriken_cannon_wl		="C",	-- Shuriken Cannon Upgrade
	eld_brightlance			="L",	-- Brightlance Upgrade
	falcon_holofield		="H",	-- Energy Field
	eld_autarch_shield		="P",	-- Energy Shield
	eld_autarch_gun			="N",	-- Fusion Gun
	eld_autarch_executioner		="E", 	-- Executioner
	
		-------------------------------------------
	-------------- Eldar hero wargear-------------
		-------------------------------------------

	wp_farse_witchblade_doombringer	="D",	-- Doombringer
	wp_farse_witchblade_singing_spear	="P",	-- Singing Spear
	wp_farse_witchblade_sky_gauntlets	="V",	-- Gravity Blade
	arm_farse_rune_armour		="N",	-- Rune Armor
	arm_farse_armour_of_fortune	="O",	-- Armor of Fortune
	arm_farse_aegis_of_ages		="T",	-- Armor of Asuryan
	acc_farse_spirit_stones		="I",	-- Spirit Stones
	acc_farse_runes_of_reaping	="E",	-- Runes of Reaping
	acc_farse_ghosthelm		="M",	-- Ghosthelm
	wp_warlock_witchblade_dimensional_blade	="E",	-- Witchblade of Kurnous
	wp_warlock_witchblade_enervator	="L",	-- Merciless Witchblade
	wp_warlock_witchblade_immolator	="I",	-- Immolator
	arm_warlock_champions_robe	="P",	-- Champion's Robe
	arm_warlock_providence		="V",	-- Providence
	arm_warlock_cloak_of_shadows	="C",	-- Cloak of Shadows
	acc_warlock_force_gauntlets	="W",	-- Warp Throw
	acc_warlock_channeling_runes	="N",	-- Channeling Runes
	acc_warlock_heart_of_darkness	="D",	-- Heart of Darkness
	wp_heavy_gauge_filament		="V",	-- Heavy Gauge Death Spinner
	wp_warp_entangling_web		="E",	-- Entangling Web
	wp_warp_powerblades		="L",	-- Powerblades
	arm_warp_phase_armour		="P",	-- Phase Armor
	arm_warp_improved_warp_generator="N",	-- Improved Warp Generator
	arm_warp_enhanced_warp_stabilizers	="I",	-- Enhanced Warp Jump Generator
	acc_warp_improved_targeters	="T",	-- Improved Targeters
	acc_warp_shimmer_orb		="B",	-- Shimmer Orb
	acc_warp_anti_grav_grenade	="G",	-- Anti-Grav Grenade


		-------------------------------------------
	-------------- Eldar Unit abilities-------------
		-------------------------------------------

	eld_avatar_wailing_doom		="D",	-- The Wailing Doom
	eld_brightlance_focused_beam	="B",	-- Beam Scorch
	eld_d_cannon_black_hole		="B",	-- Singularity
	eld_d_cannon_normal		="D",	-- Normal Shot
	eld_embolden			="E",	-- Embolden
	eld_fire_prism_explosive_shot	="T",	-- Switch to Dispersed Beam
	eld_fire_prism_focused_shot	="T",	-- Switch to Focused Beam
	eld_fleet_of_foot		="F",	-- Fleet of Foot
	eld_haywire_grenade		="G",	-- Haywire Grenade
	eld_jump_warpspider		="J",	-- Teleport
	eld_plasma_grenade		="G",	-- Plasma Grenade
	eld_ranger_infiltration		="I",	-- Infiltration
	eld_suppressive_volley		="V",	-- Suppressive Fire
	eld_war_shout			="W",	-- War Shout
	eld_wraithlord_regenerate	="W",	-- Wriathbone
	eld_holofield_falcon		="F",	-- Energy Field
	eld_holofield_ranger		="D",	-- Holo-Field
	eld_avatar_khaines_wrath	="W",	-- Khaine's Wrath
	eld_repair			="P",	-- Repair
	eld_holo_field		="Y", -- webway holofield 
	eld_avatar_hymm = "R",
	eld_autarch_jump				="J", -- Autarch Jump
	eld_autarch_skyleap_away		="C",
	
		-------------------------------------------
	-------------- Eldar hero abilities-------------
		-------------------------------------------

	eld_anti_grav_grenade		="G",	-- Anti-Grav Grenade
	eld_entangle			="E",	-- Entangle
	eld_group_teleport		="Y",	-- Group Teleport
	eld_phase_shift			="P",	-- Phase Shift
	eld_shimmer_orb			="B",	-- Shimmer Orb
	eld_heavy_gauge_filament	="V",	-- Heavy Gauge Filament
	eld_warlock_channeling		="N",		-- Channeling
	eld_cloaking_shroud		="C",	-- Cloaking Shroud
	eld_destructor			="T",	-- Destructor
	eld_warlock_ethereal_slash	="E",	-- Ethereal Slash
	eld_force_pull			="W",	-- Warp Throw
	eld_heart_of_darkness		="D",	-- Heart of Darkness
	eld_immolate			="I",	-- Immolate
	eld_providence			="V",	-- Providence
	eld_shield_projector		="P",	-- Psychic Shield
	eld_doom			="D",	-- Doom
	eld_fortune			="O",	-- Fortune
	eld_guide			="G",	-- Guide
	eld_levitation_field		="V",	-- Levitation Field
	eld_mind_war			="M",	-- Mind War
	eld_spiritual_rites		="I",	-- Spiritual Rites
	eld_time_field			="T",	-- Time Field


		-------------------------------------------
	-------------- Eldar buildings-------------
		-------------------------------------------
	
	eld_energy_shield		="D",	-- Energy Shield
	eld_generator			="A",	-- Generator
	eld_listening_post		="A",	-- Power Node
	eld_bunker			="U",	
	eld_cloak_addon			="C",
	eld_energy_addon		="E",
	

		-------------------------------------------
	-------------- Tyranid Unit Creation-------------
		-------------------------------------------

	tyr_ripper			="R",	-- Ripper
	tyr_hormagaunt			="H",	-- Hormagaunt
	tyr_termagaunt			="T",	-- Termagant
	tyr_warrior			="W",	-- Warrior
	tyr_warrior_venom		="N",	-- Venom Warrior
	tyr_spore_mines			="S",	-- Spore Mines
	tyr_lictor			="L",	-- Lictor
	tyr_ravener			="V",	-- Ravener
	tyr_carnifex			="C",	-- Carnifex
	tyr_carnifex_barbed		="D",	-- Carnifex (Barbed Strangler)
	tyr_zoanthrope			="Z",	-- Zoanthrope
	tyr_genestealer			="G",	-- Genestealer
	tyr_tyrant_guard		="Y",	-- Tyrant Guard
	tyr_swarmlord			="M",   -- Swarmlord
		
		-------------------------------------------
	-------------- Tyranid Global Abilities-------------
		-------------------------------------------

	tyr_spawning_pool		="F2",	-- Brood Nest
	tyr_hive_tyrant_mycetic_spore_warriors	="F3",	-- Mycetic Spores
	tyr_without_number		="F4",	-- Without Number
	tyr_tyrannoformation		="F5",	-- Tyrannoformation
	tyr_ravener_catalyst		="F2",	-- Catalyst
	tyr_ravener_drop_spore_mines	="F3",	-- Spore Mines
	tyr_lictor_stalk		="F2",	-- Stalk
	tyr_call_mycetic_spore_reinforce	="F3",	-- Mycetic Spores
	
		-------------------------------------------
	-------------- Tyranid unit upgrades-------------
		-------------------------------------------

	tyr_venom_cannon_warrior 	="V",	-- Venom Cannon
	tyr_barbed_strangler_warrior	="B",	-- Barbed Strangler
	tyr_warrior_adrenal_glands	="G",	-- Adrenal Glands
	tyr_lictor_upgrade		="v",	-- Vanguard
	tyr_devourer			="D",	-- Devourer
	tyr_ravener_stun		="E",	-- Enhanced Muscle Coil
	tyr_bonded_exoskeleton		="T",	-- Thornback
	tyr_barbed_strangler_carnifex	="B",	-- Bardbed Strangler (Carnifex)
	tyr_venom_cannon_carnifex	="V",	-- Venom Cannon (Carnifex)
	tyr_termagaunt_poison		="T",	-- Toxin Sacs

		-------------------------------------------
	-------------- Tyranid hero upgrades-------------
		-------------------------------------------

	wp_lictor_corrosive_claws	="V",	-- Corrosive Claws
	wp_lictor_feeder_tendrils	="T",	-- Feeder Tendrils
	wp_lictor_scything_talons	="Y",	-- Scything Talons
	wp_lictor_toxic_miasma		="N",	-- Toxic Miasma
	tyr_arm_lictor_poison_cloud	="C",	-- Toxic Cysts
	tyr_arm_lictor_energy_glands	="D",	-- Adrenal Glands
	tyr_arm_lictor_elite_jump	="J",	-- Deadly Jump
	acc_lictor_loner		="L",	-- The Lone Hunter
	acc_lictor_pheremone		="E",	-- Pheromone
	acc_lictor_retreat		="M",	-- Menacing Visage
	tyr_ravener_acid_splatter	="L",	-- Acid Splatter
	tyr_ravener_crippling_talon	="I",	-- Crippline Talon
	tyr_ravener_devourer_ap		="V",	-- Corrosive Devourer
	tyr_arm_ravener_regeneration_carapace	="H",	-- Hardened Carapace
	tyr_arm_ravener_reflective_carapace	="N",	-- Reinforced Chitin
	tyr_arm_ravener_revive_carapace	="G",	-- Regenerate
	acc_ravener_burrow_trap		="P",	-- Burrow Trap
	acc_ravener_poison_cloud	="C",	-- Toxic Miasma
	acc_ravener_synapse_aura_damage	="Y",	-- Synapse Aura (Damage)
	acc_ravener_synapse_aura_speed	="W",	-- Strengthened Sinew
	wp_hive_heavy_claw		="W",	-- Crushing Claw
	wp_hive_knockback		="D",	-- Rending Talons
	wp_hive_venom_cannon		="V",	-- Venom Cannon
	arm_hive_synapse_aura_health	="I",	-- Improved Synapse
	tyr_arm_hive_extended_carapace	="C",	-- Extended Carapace
	tyr_arm_hive_invulnerable	="E",	-- Bonded Exoskeleton
	acc_hive_psychic_shield		="F",	-- Warp Field
	acc_hive_bioplasma		="B",	-- Bio-Plasma
	acc_hive_scream			="Y",	-- Psychic Scream


		-------------------------------------------
	-------------- Tyranid unit abilities-------------
		-------------------------------------------
	
	tyr_bioplasma_carnifex		="B",	-- Bio-Plasma
	tyr_burrow_ravener		="B",	-- Burrow
	tyr_charge_carnifex		="C",	-- Charge
	tyr_flesh_hook_lictor		="F",		-- Flesh Hook
	tyr_infiltration		="I",	-- Infiltrate
	tyr_psychic_shield_zoanthrope	="F",	-- Warp Field
	tyr_zoanthrope_focused_blast	="B",	-- Focused Warp Blast
	tyr_spawn_spore_mines		="C",	-- Spore Cysts
	tyr_spawn_ripper		="P",	-- Pheromone Cysts
	tyr_spore_mine_detonate		="D",	-- Spore Detonation
	tyr_spore_mine_detonate_big	="B",	-- Bio-Plasma Detonation
	tyr_termagaunt_poisonshot	="C",	-- Crippling Poison
	tyr_spore_cloud			="C",	-- Spore Cloud
	tyr_shieldwall			="W",	-- shieldwall tyrant guard
	

		-------------------------------------------
	-------------- Tyranid hero abilities-------------
		-------------------------------------------

	tyr_ap_shots_ravener		="V",	-- Corrosive Devourer
	tyr_burrow_ravener_hero		="B",	-- Burrow
	tyr_burrow_trap			="P",	-- Burrow Trap
	tyr_poison_cloud_ravener	="C",	-- Toxic Miasma
	tyr_rapid_fire_ravener		="D",	-- Rapid Fire
	tyr_ravener_speed_boost		="F",	-- Speed Boost
	tyr_ravener_tunnel		="T",	-- Tunnel
	tyr_bioplasma_armour		="B",	-- Bio-Plasma
	tyr_charge_tyrant		="C",	-- Charge
	tyr_seismic_roar		="D",	-- Seismic Roar
	tyr_invulnerable_hive		="E",	-- Invulnerability
	tyr_psychic_shield		="F",	-- Warp Field
	tyr_scream_hive			="Y",	-- Psychic Scream
	tyr_corrosion_lictor		="V",
	tyr_cripple_lictor		="N",
	tyr_elite_jump_lictor		="J",	-- Assault Leap
	tyr_jump_lictor			="J",	-- Deadly Jump
	tyr_flesh_hook			="F",	-- Flesh Hook
	tyr_lictor_pheromone_attack	="E",	-- Pheromone Cloud
	tyr_poison_cloud_lictor		="C",	-- Toxic Miasma
	tyr_retreat			="R",	-- Terrify
	tyr_suppression_lictor		="Y",	
	
	
		-------------------------------------------
	-------------- Tyranid buildings-------------
		-------------------------------------------

	tyr_generator			="A",	-- Generator
	tyr_listening_post		="A",	-- Power Node
	tyr_bunker			="B",
	tyr_heal_addon			="H",
	tyr_slow_addon			="S",
	tyr_hive_node			="O",	-- Brood Nest
	tyr_tunnel			="T",	-- Tunnel



		-------------------------------------------
	-------------- Chaos Unit Creation-------------
		-------------------------------------------

	
	csm_chaos_cultist		="C",	-- Cultist
	csm_tactical_chaos_marine	="S",	-- Tactical Chaos Marine
	csm_chaos_havoc_marine		="H",	-- Chaos Havoc
	csm_chaos_havoc_marine_lascannon	="L",	-- Chaos Lascannon Havoc 
	csm_bloodletter			="B",	-- Bloodletter
	csm_chaos_dreadnought		="D",	-- Chaos Dreadnought
	csm_juggernaught		="J",	-- Juggernaut
	csm_chaos_plague_marine		="G",	-- Plague Marine
	csm_chaos_predator		="T",	-- Predator
	csm_unclean_one			="U",	-- Great Unclean One
	csm_noise_marines		="N",	-- Noise Marines



		-------------------------------------------
	-------------- Chaos Global Abilities-------------
		-------------------------------------------

	csm_global_blind		="F2",	-- Malignant Blindness
	csm_global_bloodlust		="F3",	-- Bloodlust
	csm_global_corrosion		="F4",	-- 
	csm_global_level		="F2",
	csm_global_cooldown		="F3",
	csm_global_recall		="F3",	-- Mass Warp
	csm_global_life_steal		="F2",
	csm_global_taunt		="F3",	
	csm_global_reduce_damage	="F4",
	csm_global_blood_sacrifice	="F4",	-- Blood Sacrifice
	csm_global_chaos_nuke		="F5",	-- Empyreal Abyss
	csm_global_noxious_cloud	="F3",	-- Noxious Cloud
	csm_global_plague_of_undeath ="F4",	-- Plague of Undeath
	csm_global_touch_of_nurgle	="F2",	-- Touch of Nurgle
	csm_global_line_of_fire		="F2",	-- Dark Flames
	csm_global_chaos_icon	="F4",	-- Daemonic Summoning


		-------------------------------------------
	-------------- Chaos Unit Upgrades-------------
		-------------------------------------------
	
	csm_bloodletter_sword		="V",	-- Fury of Khorne
	csm_aspiring_champion		="C",	-- Aspiring Champion
	csm_grenade_launchers		="L",	-- Grenade Launchers
	csm_cultist_infiltration	="I",	-- Infiltration
	csm_dreadnought_plasma_cannon	="C",	-- Mark of Tzeentch
	csm_dreadnought_dual_claw	="W",	
	csm_flamer			="F",	-- Flamer
	csm_plasma_gun			="P",	-- Plague Missile Launchers
	csm_bolter_upgrade		="E",	-- Eternal War
	csm_swords			="W",	-- Axes
	csm_lascannon			="L",
	csm_autocannon			="C",
	csm_lascannon_predator		="C",
	mark_of_nurgle			="N",	-- Mark of Nurgle
	mark_of_khorne			="K",	-- Mark of Khorne
	mark_of_tzeentch		="T",	-- Mark of Tzeentch
	csm_blastmasters		="B",	-- Blastmasters
	csm_havok_lascannon		="L",


	
		-------------------------------------------
	-------------- Chaos Hero Upgrades-------------
		-------------------------------------------

	acc_chaos_lord_iron_halo	="I",	-- Dark Halo
	acc_chaos_lord_blood_runes	="N",	-- Icon of Khorne
	acc_chaos_lord_daemonic_visage	="V",	-- Daemonic Visage
	arm_chaos_lord_enrage		="E",	-- Harness of Rage
	arm_chaos_lord_god		="F",	-- Armor of the Inferno
	arm_chaos_lord_taunt		="T",
	arm_chaos_lord_girdle_of_possession ="D",	-- Mantle of Hate
	wp_chaos_lord_maul		="B",	-- Blood Maul
	wp_chaos_lord_claws		="W",	-- Lightning Claws
	wp_chaos_lord_combie		="C",	-- Combi-Flamer
	acc_plaguemarine_blight_grenade	="L",	-- Blight Grenades
	acc_plaguemarine_speed		="M",	-- Mucus Discharge
	acc_plaguemarine_heal		="H",	-- Icon of Nurgle
	arm_plaguemarine_girth		="T",	-- Armor of Pestilence
	arm_plaguemarine_rot		="E",	-- Fetid Armor
	wp_plaguemarine_flamer		="B",	-- Bile Spewer
	wp_plaguemarine_sword		="W",	-- Plague Sword
	wp_plaguemarine_fist		="F",	-- Plague Fist
	acc_sorceror_doom		="I",	-- Icon of Tzeentch
	acc_sorceror_mind_control	="M",	-- Tome of Subjugation
	acc_sorceror_rift		="L",	-- Sigil of the Rift
	arm_sorceror_chains		="T",	-- Robes of Torment
	arm_sorceror_consume		="J",	-- Vestments of the Warp
	arm_sorceror_dome		="D",	-- Daemon Armor
	wp_sorceror_sword		="F",	-- Sword of Flame
	wp_sorceror_staff		="W",	-- Rod of Warpfire
	

		-------------------------------------------
	-------------- Chaos Unit Abilities-------------
		-------------------------------------------
	
	csm_blight_grenade		="L",	-- Blight Grenade
	csm_bloodletter_av		="V",	-- Fury of Khorne
	csm_frag_grenade		="G",	-- Frag Grenade
	csm_meat_hook			="F",	-- Foul Snare
	csm_unclean_one_poison_cloud	="C",	-- Noxious Stomp
	csm_unclean_swarm		="W",	-- Swarm of Flies
	csm_unclean_one_vomit		="V",	-- Vomit
	csm_buff_self_speed		="B",	-- Berserk Fury
	csm_buff_self_damage		="E",	-- Deadly Accuracy
	csm_debuff_aoe_roar		="R",	-- Daemonic Roar
	csm_charge_juggernaut		="C",	-- Furious Charge
	csm_buff_self_worship		="W",	-- Worship
	csm_doom_blast				="T",   -- doom blast heretics
	csm_build_shrine		="H",
	csm_grenade_barrage		="B",	-- Grenade Barrage
	csm_warp_shift			="W",	-- Warp Shift
	csm_blood_frenzy		="B",	-- Blood Rage
	csm_teleport			="J",	-- Bloodletter Jump
	
	

		-------------------------------------------
	-------------- Chaos Hero Abilities-------------
		-------------------------------------------

	chaos_lord_combie_flame		="C",	-- Immolate
	chaos_lord_maul_smash		="B",	-- Fearsome Strike
	chaos_lord_damage_increase	="D",	-- Rage of Khorne
	chaos_lord_invulnerable		="G",	-- Worship Me!
	chaos_lord_iron_halo		="I",	-- Dark Halo
	chaos_lord_taunt		="T",
	chaos_lord_khorne_slash		="K",	-- Kill the Weak
	chaos_lord_lightning_slash	="W",	-- Destructive Slash
	chaos_lord_fireball		="F",	-- Let the Galaxy burn!
	chaos_lord_drain_life		="D",	--Drain Life
	plaguemarine_blight_grenade	="L",	-- Blight Grenade
	plaguemarine_cloud_of_flies	="F",	-- Pestilent Strike
	plaguemarine_stench_cloud	="E",	-- Unholy Stench
	plaguemarine_defense_cloud	="N",	-- Breath of Nurgle
	plaguemarine_bile_flamer	="B",	-- Bilious Discharge
	sorceror_immolate		="F",	-- Coruscating Flame
	sorceror_chains			="T",	-- Chains of Torment
	sorceror_consume		="C",	-- Consume
	sorceror_doom			="I",	-- Curse of Tzeentch
	sorceror_lava_slash		="W",	-- Warpfire
	sorceror_mind_control		="M",	-- Subjugate
	sorceror_rift			="L",	-- Warp Rift
	sorceror_dome			="D",	-- Daemonic Shield
	sorceror_doombolt		="B",	-- Doombolt
	sorceror_teleport		="J",	-- Teleport
	
	-------------------------------------------
	-------------- IG Unit Creation-------------
	-------------------------------------------

	ig_assault_squad		="A",
	ig_guardsmen_squad		="G",
	ig_heavy_weapon_squad		="H",
	ig_sniper_squad			="S",
	ig_commissar			="I",
	ig_ogryn_squad			="O",
	ig_stormtrooper_squad		="T",
	ig_priest			="P",
	ig_baneblade			="N",
	ig_manticore			="M",
	ig_chimera			="C",
	ig_leman_russ			="L",
	ig_sentinel			="E",



	
	-------------------------------------------
	-------------- IG Global Abilities-------------
	-------------------------------------------

	ig_bunker						="F2",
	ig_super_turret						="F3",
	ig_gas_attack						="F3",
	ig_basilisk_flare					="F3",
	ig_valk_mine_drop					="F4",
	ig_spawn_stormtroopers					="F4",
	ig_creeping_barrage					="F4",
	ig_spawn_valk_attack					="F5",
	ig_spawn_banewolf					="F5",
	ig_spawn_leman_russ					="F5",
	ig_inspired_zeal					="F5",
	ig_bombing_run						="F6",


	-------------------------------------------
	-------------- IG Unit Upgrades-------------
	-------------------------------------------

	ig_assault_squad_leader				="L",
	ig_assault_squad_commissar			="C",
	ig_assault_squad_priest				="P",
	ig_chimera_flamer				="F",
	ig_assault_squad_vox_operator			="V",
	ig_chimera_melta				="M",
	ig_chimera_mobile_hq				="H",
	ig_guardsmen_leader				="L",
	ig_guardsmen_plasma_gun				="M",
	ig_guardsmen_squad_commissar			="C",
	ig_guardsmen_vox_operator			="V",
	ig_heavy_weapon_squad_lascannon		 ="N",
	ig_heavy_weapon_squad_autocannon	="C",
	ig_heavy_weapon_squad_leader			="L",
	ig_leman_russ_anti_infantry_upgrade ="I",	
	ig_leman_russ_gatling				="T",
	ig_leman_russ_anti_vehicle_upgrade	="V",
	ig_leman_russ_plasma_cannon			="P",
	ig_ogryn_squad_leader				="L",
	ig_sentinel_armor				="B",
	ig_sentinel_autocannon				="C",
	ig_sentinel_multilaser				="M",
	ig_sentinel_heavy_flamer			="F",
	ig_sentinel_autocannon				="C",
	ig_sentinel_missile				="M",
	ig_sniper_squad_greande_launchers		="N",
	ig_sniper_squad_melta_guns			="M",
	ig_sniper_squad_sniper_rifles			="F",
	ig_sniper_squad_leader				="L",
	ig_stormtrooper_squad_leader			="L",
	ig_stormtrooper_squad_plasma_gun		="P",
	ig_stormtrooper_squad_vox_operator		="V",
	ig_devils_demoman				="D",
	
	-------------------------------------------
	-------------- IG Hero Upgrades-------------
	-------------------------------------------

	ig_acc_commander_guardsmen				="G",
	ig_acc_commander_commissar				="C",
	ig_acc_commander_vox_operator				="V",
	ig_acc_commander_sergeant				="L",
	ig_acc_inquisitor_assail				="T",
	ig_acc_inquisitor_flames				="E",
	ig_acc_inquisitor_light					="Q",
	ig_acc_inquisitor_speed					="P",
	ig_acc_inquisitor_refractor_field			="F",
	ig_acc_commissar_martyr					="D",
	ig_acc_commissar_competence				="C",
	ig_acc_commissar_inspiring				="O",
	ig_weapon_commander_plasma_gun 				="T",	
	ig_weapon_commander_meltagun				="E",
	ig_weapon_commander_grenade_launcher			="F",
	ig_weapon_commissar_battlecry				="B",
	ig_weapon_commissar_lord_power_sword 			="W",
	ig_weapon_commissar_lord_power_fist			="F",
	ig_weapon_commissar_lord_power_fist_2			="M",
	ig_weapon_inquisitor_crossbow				="C",
	ig_weapon_inquisitor_inferno_pistol			="I",
	ig_weapon_inquisitor_bolter				="B",
	ig_weapon_inquisitor_force_sword			="W",
	ig_armor_commander_healing				="M",
	ig_armor_commander_defensive				="J",
	ig_armor_commander_stationary				="L",
	ig_armor_commander_emperor				="E",
	ig_armor_commander_ranged_buff				="B",
	ig_armor_commissar_stand				="T",
	ig_armor_commissar_double				="E",
	ig_armor_commissar_for_the_emp				="L",
	ig_armor_inquisitor_silently				="L",
	ig_armor_inquisitor_invulnerable			="V",
	ig_armor_inquisitor_purgatus				="P",
	

	-------------------------------------------
	-------------- IG Unit Abilities-------------
	-------------------------------------------
	

	ig_devils_smoke					="M",
	ig_build_turret					="Y",
	ig_bunker_repair				="R",
	ig_bunker_medical				="M",
	ig_bunker_boobytrap				="B",
	ig_guardsmen_leader_active_ranged_buff		="D",
	ig_guardsmen_commissar_active_ranged_buff	="T",
	ig_guardsmen_vox_active_speed_buff		="F",
	ig_guardsmen_scatter				="C",
	ig_grenade_launch_triple			="B",
	ig_active_entrench				="E",
	ig_sniper_squad_targeted_mark_target		="T",
	ig_sniper_squad_toggle_infiltrate		="I",
	ig_sniper_squad_targeted_flare			="F",
	ig_sniper_squad_targeted_grenades		="B",
	ig_assault_squad_active_charge			="F",
	ig_commissar_targeted_execute			="E",
	ig_chimera_toggle_deploy			="D",
	ig_manticore_shot				="B",
	ig_stormtrooper_squad_targeted_emp		="M",
	ig_stormtrooper_squad_active_shock		="F",
	ig_stormtrooper_squad_infiltrate				="I",
	ig_stormtrooper_squad_active_assault		="T",
	ig_baneblade_targeted_supershot			="B",
	ig_baneblade_targeted_main_cannon		="C",
	ig_ogryn_targeted_charge			="C",
	ig_sentinel_active_stomp			="P",
	ig_active_toggle_to_krak			="T",
	ig_active_toggle_to_frag			="T",
	ig_commissar_lord_break_ret			="E",
	ig_commander_use_medkit 			="U",
	ig_stun_aoe_knockback					="V", -- explosive shot
	ig_stormtrooper_squad_sprint			="M",
	ig_debuff_aoe_chemicals				="B",  -- banewolf chem bomb

	-------------------------------------------
	-------------- IG Hero Abilities-------------
	-------------------------------------------
	
	ig_commander_medkit				="D",
	ig_commander_valkyrie_reinforce			="Y",
	ig_commander_emperor				="I",
	ig_commander_ranged_buff			="O",	
	ig_commander_stationary				="L",
	ig_commander_defensive				="N",	
	ig_commander_double_time			="F",
	ig_commander_fire_on_my_target	="T",
	ig_commander_fight_harder			="E",
	ig_commander_back_in_the_fight	="M",
	ig_commissar_for_the_emp			="H",
	ig_commissar_nuke						="N",
	ig_commissar_discipline					="D",		
	ig_commissar_kill_target_execute	="Q",
	ig_commissar_buff_self_shield			="I",
	ig_commissar_lord_battlecry			="B",
	ig_inquisitor_targeted_assail			="T",
	ig_inquisitor_targeted_hammer			="H",
	ig_inquisitor_targeted_crossbow_shot		="C",
	ig_inquisitor_targeted_inferno_pistol_shot	="I",
	ig_inquisitor_targeted_bolter_shot		="B",
	ig_inquisitor_targeted_rend			="W",
	ig_inquisitor_targeted_infiltrate_squad		="L",
	ig_inquisitor_targeted_invulnerable		="V",
	ig_inquisitor_toggled_shield			="F",
	ig_inquisitor_self_purgatus			="P",
	
	-------------------------------------------
	-------------- IG Buildings-------------
	-------------------------------------------

	ig_bunker				="F2",
	
		
	-------------------------------------------
	-------------- Observer panel----------------
	-------------------------------------------
	
	infantry_fow			="G",
	ui_arrow				="A",
	jumbo_cursor			="W",
	fow_options				="F",
	observer_panel_visibility ="H",
	

	-------------------------------------------
	-------------- Playback panel----------------
	-------------------------------------------
	
	playback_speed_toggle	="T",
	
	
	---------------------------------------------
	-------------- Gridkeys - on /off via game option --------------
	---------------------------------------------
	grid_keys = 
	{
		-- Basic keys for each ability slot
		AB_key_1 = "Q", 
		AB_key_2 = "W",
		AB_key_3 = "E",
		AB_key_4 = "R",
		AB_key_5 = "T",
		AB_key_6 = "Y",
		AB_key_7 = "H",
		
		-- Keys for Unit Upgrades
        UU_key_1 = "U",
		UU_key_2 = "J",
		UU_key_3 = "M",
		UU_key_4 = "P",		
		
		-- Keys for Hero Weapon, Armor, and Accessory Upgrades
		HU_Row1_Col1 = "U",		
		HU_Row1_Col2 = "I",		
		HU_Row1_Col3 = "O",	
		
		HU_Row2_Col1 = "J",
		HU_Row2_Col2 = "K",
		HU_Row2_Col3 = "L",	
		
		HU_Row3_Col1 = "M",
		HU_Row3_Col2 = "Comma",
		HU_Row3_Col3 = "Period",	
		
		HU_Row4_Col1 = "P",				
		HU_Row4_Col2 = "LBracket",		
		HU_Row4_Col3 = "RBracket",

		-- Keys for Unit Construction
		UC_Row1_Col1 = "Q",
		UC_Row1_Col2 = "W",
		UC_Row1_Col3 = "E",
		UC_Row1_Col4 = "R",
		UC_Row1_Col5 = "T",
		UC_Row1_Col6 = "Y",
		UC_Row1_Col7 = "U",
		
		UC_Row2_Col1 = "A",
		UC_Row2_Col2 = "S",
		UC_Row2_Col3 = "D",
		UC_Row2_Col4 = "F",
		UC_Row2_Col5 = "G",
		UC_Row2_Col6 = "H",
		UC_Row2_Col7 = "J",
		
		UC_Row3_Col1 = "Z",
		UC_Row3_Col2 = "X",
		UC_Row3_Col3 = "C",
		UC_Row3_Col4 = "V",
		UC_Row3_Col5 = "B",
		UC_Row3_Col6 = "N",
		UC_Row3_Col7 = "M",

		
		-- Re-assign hotkeys to resolve conflicts with grid keys.
		reinforce = "Z", --"R"
		attackmelee	="D", --"Z"
		stance		="F", --"Backslash"
		repair		="R", --"E"
		
	},

	---------------------------------------------
	--------------Plain Old Letters--------------
	---------------------------------------------
	a = "A",
	A = "A",
	b = "B",
	B = "B",
	c = "C",
	C = "C",
	d = "D",
	D = "D",
	e = "E",
	E = "E",
	f = "F",
	F = "F",
	g = "G",
	G = "G",
	h = "H",
	H = "H",
	i = "I",
	I = "I",
	j = "J",
	J = "J",
	k = "K",
	K = "K",
	l = "L",
	L = "L",
	m = "M",
	M = "M",
	n = "N",
	N = "N",
	o = "O",
	O = "O",
	p = "P",
	P = "P",
	q = "Q",
	Q = "Q",
	r = "R",
	R = "R",
	s = "S",
	S = "S",
	t = "T",
	T = "T",
	u = "U",
	U = "U",
	v = "V",
	V = "V",
	w = "W",
	W = "W",
	x = "X",
	X = "X",
	y = "Y",
	Y = "Y",
	z = "Z",
	Z = "Z",
--~ 	, = "comma",
--~ 	. = "period",
--~ 	/ = "slash",
}
