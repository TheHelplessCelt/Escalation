-- hero =
-- hero = "sbps\\pvp\\race_marine\\heroes\\sm_apothecary",
-- hero = "sbps\\pvp\\race_marine\\heroes\\sm_force_commander",
-- hero = "sbps\\pvp\\race_marine\\heroes\\sm_techmarine",

-- hero = "sbps\\pvp\\race_eldar\\heroes\\eld_farseer",
-- hero = "sbps\\pvp\\race_eldar\\heroes\\eld_warlock",
-- hero = "sbps\\pvp\\race_eldar\\heroes\\eld_warp_spider",

-- hero = "sbps\\pvp\\race_ork\\heroes\\ork_hero_kommando",
-- hero = "sbps\\pvp\\race_ork\\heroes\\ork_hero_mekboy",
-- hero = "sbps\\pvp\\race_ork\\heroes\\ork_warboss",

-- hero = "sbps\\pvp\\race_tyranid\\heroes\\tyr_hero_lictor",
-- hero = "sbps\\pvp\\race_tyranid\\heroes\\tyr_hero_ravener",
-- hero = "sbps\\pvp\\race_tyranid\\heroes\\tyr_hive_tyrant",

-- Please don't forget the double backslashing or it won't work.
-- If hero is left blank the tip will have a chance to show up regardless of the hero you selected (aka it will be a generic tip).

-- race_name = "space_marines"
-- race_name = "eldar"
-- race_name = "orks"
-- race_name = "tyranids"


-- ///////// PVP GAMEPLAY TIPS \\\\\\\\\\ 

gameplay_tips =
{
	
	{
		title = 9104912, -- LOCDB [9104912] 'Equip Bayonets!'
		description_text_array =
		{
			9104913, -- LOCDB [9104913] 'The Alternate Attack button in the core action panel will force a ranged unit to attack in melee. This will not do a great deal of damage to the enemy, but can tie up dangerous ranged weapons so they can no longer fire.'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_movement\melee]],
		},
	},
		
	{
		title = 9104904, -- LOCDB [9104904] 'Tie Them Down, Then Blow Them Up'
		description_text_array =
		{
			9104905, -- LOCDB [9104905] 'Use melee units to keep an enemy stationary, throw a grenade or demolition charge on them, and then fall back at the last second. '
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_movement\melee]],
		[[data:UI\textures\space_marines\icon_abilities\attack\sm_frag_grenade]],
		[[data:UI\textures\space_marines\icon_abilities\misc\retreat]],
		},
	},
	
	{
		title = 9104906, -- LOCDB [9104906] 'Right Weapons for the Job'
		description_text_array =
		{
			9104907, -- LOCDB [9104907] 'Vehicles are highly resistant to small arms fire. Bolter fire won't do much -- use anti-vehicle weapons such as melta bombs and missile launchers instead.'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_upgrades\sm_missile_launcher]],
		[[data:UI\textures\space_marines\icon_upgrades\sm_melta_bombs]],		
		},
	},
		
	{
		title = 9104962, -- LOCDB [9104962] 'Combat Shotguns '
		description_text_array =
		{
			9104963, -- LOCDB [9104963] 'Shotguns have a chance to deal knockback.  Use them to dislodge enemies from cover, making them easier to kill.'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_upgrades\sm_shotgun]],
		},
	},

	{
		title = 9104898, -- LOCDB [9104898] 'Cover Flashes'
		description_text_array =
		{
			9104899, -- LOCDB [9104899] 'If objects flash after you give a move order, that means those objects will provide cover to the squad when it gets into position.'
		},
		icon = 
		{
		[[data:UI\textures\generic\icon_quick_tips\cover_dots]],
		},
	},
		
	{
		title = 9104896, -- LOCDB [9104896] 'Hotkeys to Victory'
		description_text_array =
		{
			9104897, -- LOCDB [9104897] 'Taking the time to learn hotkeys for abilities and commands can streamline your game play and make for more efficient micro-management. Look for the hotkeys in ability icons or in roll-over tool tips.'
		},
		icon = 
		{
		},
	},
	
	{
		title = 9104878, -- LOCDB [9104878] 'Setting Up'
		description_text_array =
		{
			9104879, -- LOCDB [9104879] 'Some units need to be set up to face the right direction, such as heavy bolters and plasma cannons. Hold the right mouse button down and drag in the direction you want them to face.'
		},
		icon = 
		{
	
		},
	},

	{
		title = 9104862, -- LOCDB [9104862] 'Clearing Buildings'
		description_text_array =
		{
			9104863, -- LOCDB [9104863] 'Flamers, grenades, and artillery are useful for clearing enemies out of buildings.'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_abilities\attack\sm_frag_grenade]],
		[[data:UI\textures\space_marines\icon_upgrades\sm_flamer]],
		},
	},
	
	{
		title = 9104864, -- LOCDB [9104864] 'Use 'Em If You Got 'Em'
		description_text_array =
		{
			9104865, -- LOCDB [9104865] 'Short range weapons, like shotguns and flamers, are best used aggressively. Use cover or special abilities to get within range, and then let the enemy have it.'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_upgrades\sm_flamer]],
		[[data:UI\textures\space_marines\icon_upgrades\sm_shotgun]],
		},
	},
	
	{
		title = 9104866, -- LOCDB [9104866] 'Flanking For Fun and Victory'
		description_text_array =
		{
			9104867, -- LOCDB [9104867] 'Remember that cover is directional, so flanking enemy squads is a highly effective tactic. Once you're not firing through that vegetation or over that wall, the enemy isn't getting any cover bonus at all. '
		},
		icon = 
		{
		},
	},
	{
		title = 9104860, -- LOCDB [9104860] 'Use Cover'
		description_text_array =
		{
			9104861, -- LOCDB [9104861] 'Use the protection offered by walls, buildings and ruins for cover while you move around the battlefield. Units in cover take less damage and less suppression, and recover from suppression faster than units in the open. '
		},
		icon = 
		{
		},
	},
	
	{
		icon =
		{
		[[data:UI\textures\neutral\loading_icons\load_screen_power]],
		[[data:UI\textures\neutral\loading_icons\load_screen_requisition]],
		},
		title = 9102685, -- LOCDB [9102685] 'Earning Resources'
		description_text_array =
		{
			9102686, -- LOCDB [9102686] 'You need requisition and power to purchase units and upgrades for your army. Capture points on the map to increase the amounts of requisition and power you are earning.'
		},
	},

	{
		icon =
		{
		[[data:UI\textures\neutral\loading_icons\load_screen_requisition]],
		},
		title = 9102687, -- LOCDB [9102687] 'Requisition'
		description_text_array =
		{
			9102688, -- LOCDB [9102688] 'Requisition is the primary resource used for purchasing units. Be sure to capture requisition points.'
		},
	},
	
	{
		icon =
		{
			[[data:UI\textures\neutral\loading_icons\load_screen_power]],
		},
		title = 9102689, -- LOCDB [9102689] 'Power'
		description_text_array =
		{
			9102690, -- LOCDB [9102690] 'Power is required for advanced units and upgrades. Capture Power Nodes to increase your Power income. You can upgrade the Power Nodes to generate even more resources for you and your team.'
		},
	},
	
	{
		icon =
		{
			[[data:UI\textures\neutral\loading_icons\load_screen_power]],
			[[data:UI\textures\neutral\loading_icons\load_screen_requisition]],
		},
		title = 9102691, -- LOCDB [9102691] 'Shared Resources'
		description_text_array =
		{
			9102692, -- LOCDB [9102692] 'Your entire team benefits from capturing points and upgrading Power Nodes. If you don't have enough Requisition to upgrade your Power Nodes, ask your teammates to upgrade them. They benefit equally from a fully upgraded Power Node.'
		},
	},
	
	{
		icon =
		{
			[[data:UI\textures\space_marines\icon_abilities\Resource_power]],
		},
		title = 9102693, -- LOCDB [9102693] 'Stealing Upgrades'
		description_text_array =
		{
			9102694, -- LOCDB [9102694] 'The enemy can capture a Power Node and steal your upgrades if you aren't defending them. Be careful to protect your economy!'
		},
	},
	
	{
		icon =
		{
		
		},
		title = 9102695, -- LOCDB [9102695] 'Victory Points'
		description_text_array =
		{
			9102696, -- LOCDB [9102696] 'You can win the game by capturing Victory Points. The team that controls the most victory points will run down the opposing team's Victory Counter. Win the game by running the enemy Victory Counter down to zero points.'
		},
	},
	
	{
		icon =
		{
		},
		title = 9102697, -- LOCDB [9102697] 'Annihilate'
		description_text_array =
		{
			9102698 -- LOCDB [9102698] 'You can take the fight directly to your opponents and destroy their bases. If you eliminate all enemy bases, you will win the match.'
		},
	},
	
	
	{
		icon =
		{
			[[data:UI\textures\neutral\loading_icons\load_screen_rally_point_btn]]
		},
		title = 9102701, -- LOCDB [9102701] 'Rally Point'
		description_text_array =
		{
			9102702, -- LOCDB [9102702] 'Click the Rally Point button to set a rally location. You can designate either a location or a unit as your rally point. All newly constructed units will run to the rally location.'
		},
	},
	
	
	{
		icon =
		{
				[[data:UI\textures\neutral\loading_icons\load_screen_xp]]		
		},
		title = 9102703, -- LOCDB [9102703] 'Earning Experience'
		description_text_array =
		{
			9102704, -- LOCDB [9102704] 'You earn experience by killing enemies and supporting your team mates. As you earn experience, your army and commanders will level up and become more powerful.'
		},
	},
	
	{
		icon =
		{
			[[data:UI\textures\neutral\loading_icons\load_screen_knocked_out]]
		},
		title = 9102705, -- LOCDB [9102705] 'Knocked out'
		description_text_array =
		{
			9102706, -- LOCDB [9102706] 'When a commander falls he can be revived by his teammates. If you revive a friendly commander, you earn experience.'
		},
	},
	
	{
		icon =
		{
		},
		title = 9102707, -- LOCDB [9102707] 'Reviving your own commander'
		description_text_array =
		{
			9102708, -- LOCDB [9102708] 'Sometimes your teammates won't be able to revive your commander. Press the Revive button that appears next to your commander and he will reappear back at your base. Reviving your commander costs Requisition, but the price will fall over time.'
		},
	},
	
	{
		icon =
		{
		},
		title = 9102709, -- LOCDB [9102709] 'Work together'
		description_text_array =
		{
			9102710, -- LOCDB [9102710] 'Teams that work together will be far more powerful than those that don't. Talk to your teammates to let them know what you are doing! Make coordinated assaults against the enemy team, protect your economy, and take advantage of each of your commanders' strengths.'
		},
	},
	
	{
		icon =
		{
		},
		title = 9102711, -- LOCDB [9102711] 'Headquarters'
		description_text_array =
		{
			9102712, -- LOCDB [9102712] 'Upgrading your headquarters grants access to new unit types and can make your existing units more powerful. Your headquarters has two possible upgrades.'
		},
	},
	
	{
		icon =
		{
		},
		title = 9102713, -- LOCDB [9102713] 'Why They Fight'
		description_text_array =
		{
			9102714, -- LOCDB [9102714] 'The Space Marines defend these planets from the enemies of Man. The Eldar have foreseen a great threat and must control these worlds. The Tyranids are here to devour the entire galaxy. The Orks heard there was a good fight.'
		},
	},
	
	
	{
		icon =
		{
		},
		title = 9103596, -- LOCDB [9103596] 'Mix it up'
		description_text_array =
		{
			9103597, -- LOCDB [9103597] 'Try different combinations of troops. You will begin to learn which mixes are good for what situations and which are lacking. You can also upgrade your units to deal with different kinds of threats.'
		},
	},
	
	
	{
		icon =
		{
		},
		title = 9103598, -- LOCDB [9103598] 'Spend your money'
		description_text_array =
		{
			9103599, -- LOCDB [9103599] 'You should never have extra resources unless you are saving for something. Put those extra resources to use! Build more units or buy more upgrades.'
		},
	},
	
	--///////////SPACE MARINE TIPS\\\\\\\\\\\\\\\
	{
		icon =
		{
		[[data:UI\textures\space_marines\icon_squads\sm_terminator]],
		[[data:UI\textures\space_marines\icon_squads\sm_predator]],
		[[data:UI\textures\space_marines\icon_squads\sm_dreadnought]],
		},
		title = 9103600, -- LOCDB [9103600] 'Space Marines'
		description_text_array =
		{
			9103601, -- LOCDB [9103601] 'Space Marines have some of the strongest and most expensive units in the game. Be careful to protect your army, since each loss is that much more expensive to replace.'
		},
	},
	
	
	{
		icon =
		{
			[[data:UI\textures\space_marines\icon_abilities\global\sm_call_drop_pod]],
		},
		title = 9103602, -- LOCDB [9103602] 'Drop Pod'
		description_text_array =
		{
			9103603, -- LOCDB [9103603] 'All Space Marine commanders have access to the Drop Pod ability. Calling in a drop pod will give you a Tactical Marine Squad and will reinforce any nearby squads that have lost members. Just be careful not to drop one directly on your own troops!'
		},
	},
	
	
	{
		icon =
		{
			[[data:UI\textures\space_marines\icon_abilities\global\sm_orbital_bombardment]],
		},
		title = 9103604, -- LOCDB [9103604] 'Orbital Bombardment'
		description_text_array =
		{
			9103605, -- LOCDB [9103605] 'Orbital Bombardment will call down a massive strike from the orbiting Battle Barge. Any infantry trapped in the targeting beams will get pulled into the air and will be unable to move. Properly targeted, this attack can devastate even the largest assembled armies.'
		},
	},
	
	
	{
		icon =
		{
			[[data:UI\textures\space_marines\icon_squads\sm_terminator]],
		},
		title = 9103606, -- LOCDB [9103606] 'Terminator Squads'
		description_text_array =
		{
			9103607, -- LOCDB [9103607] 'Terminators are the most powerful infantry available to the Imperium. When upgraded with their heavy weapons, they can deal with almost any opponent. They move slowly, but are equipped with teleporters that let them move short distances instantly. Their armor is so thick they don't need to rely on cover for protection.'
		},
	},
	
	
	{
		icon =
		{
			[[data:UI\textures\space_marines\icon_squads\sm_devastator_marine]],
			[[data:UI\textures\space_marines\icon_squads\sm_devastator_marine_plasma_cannon]],
		},
		title = 9103608, -- LOCDB [9103608] 'Devastator Marine Squads'
		description_text_array =
		{
			9103609, -- LOCDB [9103609] 'Devastator squads are available with both Heavy Bolters and Plasma Cannons. Heavy Bolters can suppress large groups of infantry and Plasma Cannons are effective at dislodging units from cover. Devastators need to set up their weapons before firing, and are vulnerable to melee units.'
		},
	},
	
	--///////////////FORCE COMMANDER\\\\\\\\\\\\\\\
	{
		icon =
		{
			[[data:UI\textures\space_marines\icon_squads\sm_force_commander_hero]],
		},
		hero = "sbps\\pvp\\race_marine\\heroes\\sm_force_commander",
		title = 9103610, -- LOCDB [9103610] 'Force Commander'
		description_text_array =
		{
			9103611, -- LOCDB [9103611] 'You've selected the Force Commander. You can purchase wargear that makes him more effective at melee and armor that makes him more durable. The Force Commander can permanently upgrade to Terminator armor, which will give him powerful ranged attacks.'
		},
	},
	
	
	
	
	{
		icon =
		{
			[[data:UI\textures\neutral\loading_icons\load_screen_few_orks]],
		},
		title = 9103612, -- LOCDB [9103612] 'Orks'
		description_text_array =
		{
			9103613, -- LOCDB [9103613] 'Orks' strength comes from their numbers. Be sure to build several Ork squads before attacking your enemies.'
		},
	},
	
	
	{
		icon =
		{
			[[data:UI\textures\orks\icon_abilities\global\ork_waaagh]],
		},
		title = 9103614, -- LOCDB [9103614] 'Ork Waaagh!'
		description_text_array =
		{
			9103615, -- LOCDB [9103615] 'The Orks have a special resource called Waaagh! Earn Waaagh! points by fighting, killing, and dying. Waaagh! points are spent on special Ork abilities.'
		},
	},
	
	
	{
		icon =
		{
			[[data:UI\textures\orks\icon_abilities\global\ork_rokks]],
		},
		title = 9103616, -- LOCDB [9103616] 'Roks'
		description_text_array =
		{
			9103617, -- LOCDB [9103617] 'The Orks can drop large asteroids from orbit that devastate large parts of the battlefield. Just be careful not to drop them on your own army!'
		},
	},
	

	
	{
		icon =
		{
			[[data:UI\textures\orks\icon_squads\ork_mek_boy_hero]],
		},
		hero = "sbps\\pvp\\race_ork\\heroes\\ork_hero_mekboy",
		title = 9103618, -- LOCDB [9103618] 'Ork Mekboy likes to fix stuff'
		description_text_array =
		{
			9103619, -- LOCDB [9103619] 'The Ork Mekboy can repair allied vehicles. If your teammates build vehicles, send your Mekboy along with them into combat.'
		},
	},
	
		--////////////ELDAR TIPS\\\\\\\\\\\\\
	{
		icon =
		{
		[[data:UI\textures\eldar\icon_abilities\buff\eld_fleet_of_foot]],
		[[data:UI\textures\neutral\loading_icons\load_screen_eldar_units]],
		},
		title = 9103620, -- LOCDB [9103620] 'Eldar Units'
		description_text_array =
		{
			9103621, -- LOCDB [9103621] 'Eldar have swift and deadly warriors. You can use their superior speed to outmaneuver your enemies. Activate the Fleet of Foot ability at the right time and you can either avoid or confront your enemies that much faster.'
		},
	},
	
	
	{
		icon =
		{
			[[data:UI\textures\eldar\icon_squads\eld_farseer_hero]],
		},
		hero = "sbps\\pvp\\race_eldar\\heroes\\eld_farseer",
		title = 9103622, -- LOCDB [9103622] 'Eldar Farseer'
		description_text_array =
		{
			9103623, -- LOCDB [9103623] 'You have selected the Farseer commander. Her Levitate spell can lift entire squads and hold them in the air while other squads attack them. You will find this ability on the Levitation Blade'
		},
	},
	
	
	{
		icon =
		{
			[[data:UI\textures\eldar\icon_squads\eld_warlock]],
		},
		hero = "sbps\\pvp\\race_eldar\\heroes\\eld_warlock",
		title = 9103624, -- LOCDB [9103624] 'Eldar Warlock'
		description_text_array =
		{
			9103625, -- LOCDB [9103625] 'You have selected the Warlock Commander. He is a hand-to-hand combat specialist that can extend his attacks from a distance. His spells knock enemies back or pull them towards him. The Warlock is also capable of cloaking nearby allies.'
		},
	},
	
	
	{
		icon =
		{
			[[data:UI\textures\eldar\icon_squads\eld_warp_spider_hero]],
		},
		hero = "sbps\\pvp\\race_eldar\\heroes\\eld_warp_spider",
		title = 9103626, -- LOCDB [9103626] 'Warp Spider Commander'
		description_text_array =
		{
			9103627, -- LOCDB [9103627] 'You have chosen the Warp Spider Commander. His ranged weapons are effective against infantry. He is also capable of equipping a powerful teleporter that can move allied units along with him. Coordinate with your teammates and you can quickly move your armies into a more advantageous position.'
		},
	},
	
	
	--/////////////TYRANIDS\\\\\\\\\\\\\\\
	
	{
		icon =
		{
			[[data:UI\textures\neutral\loading_icons\load_screen_synapse]],
		},
		title = 9103628, -- LOCDB [9103628] 'Synapse'
		description_text_array =
		{
			9103629, -- LOCDB [9103629] 'Warriors and the larger Tyranid units emanate synapse auras. Synapse auras cause nearby Termagants and Hormagaunts to be far more effective in combat. Be careful, though -- a synapse creature sends out a psychic shockwave when it dies, causing nearby lesser tyranids to temporarily go into shock.'
		},
	},
	
	
	{
		icon =
		{
			[[data:UI\textures\tyranids\icon_squads\tyr_hormagaunt]],
			[[data:UI\textures\tyranids\icon_squads\tyr_warrior]],
		},
		title = 9103632, -- LOCDB [9103632] 'Tyranids Units'
		description_text_array =
		{
			9103633, -- LOCDB [9103633] 'Tyranids can overrun their enemies by sheer numbers. Build several gaunt squads to attack your enemies from all sides. Use the more expensive Tyranids units to deal with specialized threats.'
		},
	},
	
	{
		icon =
		{
			[[data:UI\textures\tyranids\icon_squads\tyr_hormagaunt]],
		},
		title = 9103636, -- LOCDB [9103636] 'Hormagaunts'
		description_text_array =
		{
			9103637, -- LOCDB [9103637] 'Hormagaunts are a great starting unit. Their low cost allows you to overwhelm more powerful units with raw numbers. Lone squads can quickly capture points, or you can build more than one squad and use them to outflank entrenched enemies.'
		},
	},
	
	
	{
		icon =
		{
			[[data:UI\textures\tyranids\icon_squads\tyr_hive_tyrant_hero]],
		},
		hero = "sbps\\pvp\\race_tyranid\\heroes\\tyr_hive_tyrant",
		title = 9103638, -- LOCDB [9103638] 'Hive Tyrant'
		description_text_array =
		{
			9103639, -- LOCDB [9103639] 'You have selected the Hive Tyrant commander. The Hive Tyrant has powerful synapse abilities and is capable at both melee and ranged combat. You can use the Hive Tyrant's Psychic Scream ability to weaken enemy units.'
		},
	},
	
	
	{
		icon =
		{
		[[data:UI\textures\tyranids\icon_squads\tyr_hive_tyrant_hero]],
		[[data:UI\textures\tyranids\icon_abilities\global\tyr_brood_nest]],
		},
		hero = "sbps\\pvp\\race_tyranid\\heroes\\tyr_hive_tyrant",
		title = 9103640, -- LOCDB [9103640] 'Hive Tyrant Brood Nest'
		description_text_array =
		{
			9103641, -- LOCDB [9103641] 'Build a Brood Nest near your forward lines. This will allow you to fall back, reinforce, and get back into the fight quickly.'
		},
	},
	
	
	{
		icon =
		{
			[[data:UI\textures\tyranids\icon_squads\tyr_hive_tyrant_hero]],
			[[data:UI\textures\tyranids\icon_abilities\attack\tyr_bioplasma]],
		},
		hero = "sbps\\pvp\\race_tyranid\\heroes\\tyr_hive_tyrant",
		title = 9103642, -- LOCDB [9103642] 'Hive Tyrant Bio-Plasma'
		description_text_array =
		{
			9103643, -- LOCDB [9103643] 'Upgrade your Hive Tyrant with the bio-plasma biomorph.  It has a large area of effect attack perfect for disrupting large amounts of infantry.'
		},
	},
	
	
	{
		icon =
		{
			[[data:UI\textures\tyranids\icon_squads\tyr_hive_tyrant_hero]],
			[[data:UI\textures\tyranids\icon_abilities\buff\tyr_psychic_shield]],
		},
		hero = "sbps\\pvp\\race_tyranid\\heroes\\tyr_hive_tyrant",
		title = 9103644, -- LOCDB [9103644] 'Warp Field'
		description_text_array =
		{
			9103645, -- LOCDB [9103645] 'The Warp field ability drains energy instead of health when activated. This can drastically extend the life of your Hive Tyrant in combat.'
		},
	},
	
	
	{
		icon =
		{
			[[data:UI\textures\tyranids\icon_abilities\attack\tyr_flesh_hook]],
			[[data:UI\textures\tyranids\icon_squads\tyr_lictor_hero]],
		},
		hero = "sbps\\pvp\\race_tyranid\\heroes\\tyr_hero_lictor",
		title = 9103646, -- LOCDB [9103646] 'Lictor Alpha'
		description_text_array =
		{
			9103647, -- LOCDB [9103647] 'You have chosen the Lictor Alpha commander. The Lictor Alpha has access to the Flesh hook ability, which lets him pull a targeted unit closer. Use the Lictor Alpha for hit and run melee attacks.'
		},
	},
	
	

	
	
	{
		icon =
		{
			[[data:UI\textures\tyranids\icon_squads\tyr_lictor_hero]],
			[[data:UI\textures\tyranids\icon_abilities\debuff\tyr_force_retreat]],
		},
		hero = "sbps\\pvp\\race_tyranid\\heroes\\tyr_hero_lictor",
		title = 9103648, -- LOCDB [9103648] 'Lictors are scary'
		description_text_array =
		{
			9103649, -- LOCDB [9103649] 'If you equip the Lictor with the Force Retreat bio-morph you can make your opponent's commander fall back, and then finish off the rest of his army.'
		},
	},
	
	
	{
		icon =
		{
			[[data:UI\textures\tyranids\icon_squads\tyr_lictor_hero]],
			
		},
		hero = "sbps\\pvp\\race_tyranid\\heroes\\tyr_hero_lictor",
		title = 9103650, -- LOCDB [9103650] 'I mostly work alone'
		description_text_array =
		{
			9103651, -- LOCDB [9103651] 'If you equip the Lictor with the Loner bio-morph, he will receive a bonus when he is away from allies. This will make him more effective behind enemy lines.'
		},
	},
	
	
	{
		icon =
		{
			[[data:UI\textures\tyranids\icon_squads\tyr_lictor_hero]],
			[[data:UI\textures\tyranids\icon_abilities\buff\tyr_infiltrate]],
		},
		hero = "sbps\\pvp\\race_tyranid\\heroes\\tyr_hero_lictor",
		title = 9103652, -- LOCDB [9103652] 'Lictor Infiltration'
		description_text_array =
		{
			9103653, -- LOCDB [9103653] 'Use the Lictor's Infiltrate ability to ambush enemy troops. Lictor commanders need to be infiltrated to take full advantage of their weapon biomorphs.'
		},
	},
	
	
	{
		icon =
		{
			[[data:UI\textures\tyranids\icon_squads\tyr_ravener_hero]],
			[[data:UI\textures\tyranids\icon_abilities\buff\tyr_burrow]],
			[[data:UI\textures\tyranids\icon_abilities\build\tyr_tunnel]],
		},
		hero = "sbps\\pvp\\race_tyranid\\heroes\\tyr_hero_ravener",
		title = 9103654, -- LOCDB [9103654] 'Ravener Alpha'
		description_text_array =
		{
			9103655, -- LOCDB [9103655] 'You have chosen the Ravener Alpha commander. The Ravener can burrow, which will conceal it from enemy units. You can also build tunnels which will allow friendly units to travel across the map. Use the Ravener's burrow ability to disrupt entrenched enemy units.'
		},
	},
	
	
	{
		icon =
		{
			[[data:UI\textures\tyranids\icon_squads\tyr_ravener_hero]],
			[[data:UI\textures\tyranids\icon_wargear\tyr_acc_ravener_poison_cloud]],
		},
		hero = "sbps\\pvp\\race_tyranid\\heroes\\tyr_hero_ravener",
		title = 9103656, -- LOCDB [9103656] 'Ravener Poison Cloud'
		description_text_array =
		{
			9103657, -- LOCDB [9103657] 'The Ravener's Poison Cloud biomorph is great for taking out concentrated groups of infantry.'
		},
	},
	
	
	{
		icon =
		{
		
		},
		title = 9103658, -- LOCDB [9103658] 'Tyranids'
		description_text_array =
		{
			9103659, -- LOCDB [9103659] 'The Tyranids are a nomadic alien race comprised of several genetically-engineered warrior creatures, all grown from harvested bio-mass. They have come from beyond the galaxy's edge and are by far the deadliest threat to the Imperium.'
		},
	},
	
	
	
	
	



--//////////FORCE COMMANDER TIPS\\\\\\\\\\\\\\

	{
		icon =
		{
			[[data:UI\textures\space_marines\icon_squads\sm_force_commander_hero]],
		},
		hero = "sbps\\pvp\\race_marine\\heroes\\sm_force_commander",
		title = 9102699, -- LOCDB [9102699] 'Force Commander'
		description_text_array =
		{
			9102700, -- LOCDB [9102700] 'You've selected the Force Commander. The Force Commander can use his Battle Cry ability to disrupt the enemy and inspire nearby troops. The Battle Cry causes the Force Commander to exclusively use special attacks for several seconds. Each special attack performed temporarily increases the attack strength of nearby friendly squads (the effect stacks).'
		},
	},
	


-- ///////////////////////// GENERAL GAMEPLAY TIPS \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
		
	{
		
		title = 9099437,								-- LOCDB [9099437] 'Camera Focus'
		
		description_text_array =
		{
			9099400,								-- LOCDB [9099400] 'To focus the camera on a unit, double-click (with the left mouse button) on that unit's portrait in the squad tabs. The squad tabs are located along the right side of the screen.' - 'Tutorial'
		},
		icon = { 
		
		[[data:UI\textures\generic\icon_quick_tips\mouse_button_double_left]],
		[[data:UI\textures\generic\icon_quick_tips\hero_squad_tab]],
		
		}, -- = "streamed_}, -- /placeholder_sep/05]],

	},
	
	{
		
		title = 9099441,								-- LOCDB [9099441] 'Using Cover'
		description_text_array =
		{
			9099404,								-- LOCDB [9099404] 'Cover helps to shield your units from enemy fire. Green dots represent heavy cover, yellow dots mean light cover and white dots mean that location is not in cover. To get into cover, place your mouse pointer at the desired cover location and then give your units a move order to get there.' - 'Tutorial'
		},
		icon = 
		{ 
			[[data:UI\textures\generic\icon_quick_tips\cover_dots]],
		}, 
		
	},
	
	{
		
		title = 9099445,								-- LOCDB [9099445] 'Enemies in Buildings'
		
		description_text_array =
		{
			9099408,								-- LOCDB [9099408] 'Enemies in buildings are much harder to kill. Try using frag grenades or other explosive devices to get rid of them.' - 'Tutorial'
		},
		icon = 
		{ 
			[[data:UI\textures\generic\icon_quick_tips\attack]],
			[[data:UI\textures\generic\icon_quick_tips\garrison]],
		
		}, --  = "streamed_}, -- /placeholder_sep/12]],
		
	},
		
	
	{
		
		title = 9099458,								-- LOCDB [9099458] 'Garrison Buildings'
		
		description_text_array =
		{
			9099421,								-- LOCDB [9099421] 'You can enter buildings to give your units better protection. To do so, select a unit, place the mouse pointer on the building you want to enter, and then click the right mouse button. Your units will automatically move towards the building, enter it and take up firing positions at the windows.' - 'Tutorial'
		},
		icon = { 
			[[data:UI\textures\generic\icon_quick_tips\hero_squad_tab]],
			[[data:UI\textures\generic\icon_quick_tips\garrison]],
		
		}, --  = "streamed_}, -- /placeholder_sep/20]],
		
	},
	
	{
		
		title = 9099459,								-- LOCDB [9099459] 'Ungarrison Buildings'
		
		description_text_array =
		{
			9099422,								-- LOCDB [9099422] 'To exit a building, select that building then click the Left Mouse Button on the Exit All icon.' - 'Tutorial'
		},
		icon = { 
			[[data:UI\textures\generic\icon_quick_tips\mouse_button_left]],
			[[data:UI\textures\generic\icon_quick_tips\unload_all]],
		}, --  = "streamed_}, -- /placeholder_sep/21]],
		
	},
	
	{
		
		title = 9099461,								-- LOCDB [9099461] 'Camera Zoom'
		
		description_text_array =
		{
			9099424,								-- LOCDB [9099424] 'To zoom the camera in or out, scroll up or down with the mouse wheel. Scrolling up zooms in and scrolling down zooms out. Press the keyboard's Backspace key twice rapidly to reset the camera to defaults.' - 'Tutorial'
		},
		icon = { [[data:UI\textures\generic\icon_quick_tips\mouse_button_scrollwheel]],
		[[data:UI\textures\generic\icon_quick_tips\double_backspace]],
		
		}, --  = 
		
	},
	

	
-----------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------- All of the remaining events are for quick tips that may not be used ---------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------

	

	{
		
		title = 9099446,								-- LOCDB [9099446] 'Squad Behavior'
		
		description_text_array =
		{
			9099409,								-- LOCDB [9099409] 'Your units move intelligently. They go from cover to cover, trying to get the best protection possible, without you having to tell them to do so.' - 'Tutorial'
		},
		icon = { 
		
		
		}, --  = 
		
	},
		
	{
		
		title = 9107569, -- LOCDB [9107569] 'Capture, Capture, Capture'
		
		description_text_array =
		{
			9107570, -- LOCDB [9107570] 'Your units should never be idle; if they aren't fighting they should be capturing a point.'
		},
		icon = { 
			
		}, --  = 
		
	},

	{
		
		title = 9107575, -- LOCDB [9107575] 'Get wargear'
		
		description_text_array =
		{
			9107576, -- LOCDB [9107576] 'Choose wargear items that compliment one another.'
		},
		icon = { 
		
		
		}, --  = 
		
	},
	{
		
		title = 9107577, -- LOCDB [9107577] 'Go over them!'
		
		description_text_array =
		{
			9107578, -- LOCDB [9107578] 'Units that can jump or teleport are great counters to entrenched suppression weapons.'
		},
		icon = { 
		
			[[data:UI\textures\space_marines\icon_abilities\attack\sm_assault_jump]],
		}, --  = 
		
	},
	{
		
		title = 9107579, -- LOCDB [9107579] 'Hold your ground!'
		
		description_text_array =
		{
			9107580, -- LOCDB [9107580] 'Heavy bolter devastator squads deal more damage the closer a unit gets to it.'
		},
		icon = { 
		
		[[data:UI\textures\space_marines\icon_squads\sm_devastator_marine]],
		
		}, --  = 
		
	},
	{
		
		title = 9107581, -- LOCDB [9107581] 'Let your base give a helping hand'
		
		description_text_array =
		{
			9107582, -- LOCDB [9107582] 'In multiplayer, the headquarters projects an aura that quickly heals your units. Lure your enemies there to gain the advantage if it seems like an equal fight.'
		},
		icon = { 
		
			[[data:UI\textures\neutral\loading_icons\load_screen_hq]],
		}, --  = 
		
	},
	{
		
		title = 9107583, -- LOCDB [9107583] 'Heavy cover vs. Buildings'
		
		description_text_array =
		{
			9107584, -- LOCDB [9107584] 'Infantry in buildings are vulnerable to flamers, snipers and grenades. Additionally, infantry in heavy cover get a better cover bonus than those inside a building, so you can overwhelm garrisoned troops by making use of heavy cover.'
		},
		icon = { 
			[[data:UI\textures\generic\icon_quick_tips\garrison]],
			[[data:UI\textures\generic\icon_quick_tips\cover_dots]],
		
		}, --  = 
		
	},
	{
		
		title = 9107585, -- LOCDB [9107585] 'Detector units'
		
		description_text_array =
		{
			9107586, -- LOCDB [9107586] 'Infiltrated units are only partially revealed when they attack and still have defensive bonuses. Detector units fully reveal enemy infiltrated units and can spot them from farther away.'
		},
		icon = { 
		
		[[data:UI\textures\generic\icon_quick_tips\infiltrate]],
		}, --  = 
		
	},
	{
		
		title = 9107587, -- LOCDB [9107587] 'Leaders and upgrades'
		
		description_text_array =
		{
			9107588, -- LOCDB [9107588] 'Purchase leaders and upgrades for your squads.'
		},
		icon = { 
		
		
		}, --  = 
		
	},
	{
		
		title = 9107591, -- LOCDB [9107591] 'Live to fight another day'
		
		description_text_array =
		{
			9107592, -- LOCDB [9107592] 'Having a squad Fall Back is always preferable to losing it. Units can be reinforced for cheaper cost and shorter times than it would take to buy a new squad.'
		},
		icon = { 
			[[data:UI\textures\generic\icon_quick_tips\retreat]],
		
		}, --  = 
		
	},
	{
		
		title = 9107593, -- LOCDB [9107593] 'Reviving an allied commander'
		
		description_text_array =
		{
			9107594, -- LOCDB [9107594] 'Reviving an allied commander gives your hero experience and saves your teammate from having to spend resources to revive his commander. '
		},
		icon = { 
		[[data:UI\textures\generic\icon_quick_tips\unconscious_hero]],
		[[data:UI\textures\generic\icon_quick_tips\revive]],
		
		}, --  = 
		
	},
	{
		
		title = 9107595, -- LOCDB [9107595] 'Resource your way to victory'
		
		description_text_array =
		{
			9107596, -- LOCDB [9107596] 'Securing resource points first will give the player military strength advantage to take Victory Points at will. '
		},
		icon = { 
		
			[[data:UI\textures\neutral\loading_icons\load_screen_power]],
			[[data:UI\textures\neutral\loading_icons\load_screen_requisition]],
		
		}, --  = 
		
	},
	{
		
		title = 9107597, -- LOCDB [9107597] 'Moving units quickly around the map'
		
		description_text_array =
		{
			9107598, -- LOCDB [9107598] 'Set your Rally Point to Webway Gates and Ravener tunnels to send newly built units through them.'
		},
		icon = { 
		
		[[data:UI\textures\neutral\loading_icons\load_screen_rally_point_btn]],
		}, --  = 
		
	},
	{
		
		title = 9107599, -- LOCDB [9107599] 'Heavy but slow'
		
		description_text_array =
		{
			9107600, -- LOCDB [9107600] 'Set-up weapons like Heavy Bolters and Shuriken Cannon Platforms have a limited firing arc and are vulnerable to flanking attacks.'
		},
		icon = { 
			[[data:UI\textures\eldar\icon_squads\eld_grav_platform_shuriken_cannon]],
			[[data:UI\textures\space_marines\icon_squads\sm_devastator_marine]],
		
		}, --  = 
		
	},

	{
		
		title = 9107603, -- LOCDB [9107603] 'Use Fall Back'
		
		description_text_array =
		{
			9107604, -- LOCDB [9107604] 'Fall Back when you think you are outnumbered, don't fight. By saving your troops you will be able to field a larger army later in the game.'
		},
		icon = { 
			[[data:UI\textures\generic\icon_quick_tips\retreat]],
		
		}, --  = 
		
	},
	{
		
		title = 9107607, -- LOCDB [9107607] 'Use the minimap'
		
		description_text_array =
		{
			9107608, -- LOCDB [9107608] 'You can issue move and attack move orders on the minimap just as you would in the main view.'
		},
		icon = { 
			
			[[data:UI\textures\neutral\loading_icons\load_screen_mini_map]],
		
		}, --  = 
		
	},
	{
		
		title = 9107609, -- LOCDB [9107609] 'Ravener rampage'
		hero = "sbps\\pvp\\race_tyranid\\heroes\\tyr_hero_ravener",
		description_text_array =
		{
			9107610, -- LOCDB [9107610] 'When playing as the Ravener Alpha, equip the Acid Splatter and Toxic Miasma wargear upgrades to turn your Commander into a devastating AoE melee attacker.'
		},
		icon = { 
			[[data:UI\textures\tyranids\icon_squads\tyr_ravener_hero]],
			[[data:UI\textures\tyranids\icon_wargear\tyr_acc_ravener_poison_cloud]],
			[[data:UI\textures\tyranids\icon_wargear\tyr_ravener_acid_splatter]],
		
		}, --  = 
		
	},

	{
		
		title = 9107613, -- LOCDB [9107613] 'Defend your generators'
		
		description_text_array =
		{
			9107614, -- LOCDB [9107614] 'If an enemy captures a strategic point controlling your power generators, those generators will fall into the hands of the enemy, boosting their power income. '
		},
		icon = { 
		
		
		}, --  = 
		
	},
	{
		
		title = 9107615, -- LOCDB [9107615] 'Keep your hero alive and fighting'
		
		description_text_array =
		{
			9107616, -- LOCDB [9107616] 'Every kill grants experience and helps your hero level up. A high-level hero with the right wargear can face an entire army without fear.'
		},
		icon = { 
		
		
		}, --  = 
		
	},
	{
		
		title = 9107617, -- LOCDB [9107617] 'Who says Marines don't look good in pink?'
		
		description_text_array =
		{
			9107618, -- LOCDB [9107618] 'Use the Army Painter to customize your armies with unique color schemes.'
		},
		icon = { 
		
		
		}, --  = 
		
	},
	{
		
		title = 9107619, -- LOCDB [9107619] 'Fight another day'
		
		description_text_array =
		{
			9107620, -- LOCDB [9107620] 'Avoid fighting a losing battle: use the Fall Back button to retreat your troops.'
		},
		icon = { 
		
			[[data:UI\textures\generic\icon_quick_tips\retreat]],
		}, --  = 
		
	},
	{
		
		title = 9107621, -- LOCDB [9107621] 'Mix up your team'
		
		description_text_array =
		{
			9107622, -- LOCDB [9107622] 'In team games, surprise your opponents with unique strategies using combinations of different hero types.'
		},
		icon = { 
		
		
		}, --  = 
		
	},

	{
		
		title = 9107625, -- LOCDB [9107625] 'Reinforcing your squad'
		
		description_text_array =
		{
			9107626, -- LOCDB [9107626] 'It is cheaper to reinforce your squad than build a new one. Retreat your units to your headquarters to avoid taking unnecessary losses. '
		},
		icon = { 
			[[data:UI\textures\generic\icon_quick_tips\retreat]],
			[[data:UI\textures\generic\icon_quick_tips\reinforcement]],
		
		}, --  = 
		
	},


	{
		
		title = 9107629, -- LOCDB [9107629] 'Unit Accuracy'
		
		description_text_array =
		{
			9107630, -- LOCDB [9107630] 'Units that are moving are less accurate when firing than when stationary.'
		},
		icon = { 
		
		
		}, --  = 
		
	},
	
	{
		
		title = 9107631, -- LOCDB [9107631] 'Don't fire and forget'
		
		description_text_array =
		{
			9107632, -- LOCDB [9107632] 'Assault Jump is great for getting into the fray, but make sure you back up those units lest they fall to overwhelming forces.'
		},
		icon = { 
			[[data:UI\textures\orks\icon_abilities\buff\ork_jump]],
		
		}, --  = 
		
	},

	{
		
		title = 9107637, -- LOCDB [9107637] 'Damaging vehicles the good, old-fashioned way'
		
		description_text_array =
		{
			9107638, -- LOCDB [9107638] 'Enemy tank ruining your day? Left your Melta Bombs at home? Many melee weapons, such as Power Weapons, are effective at damaging vehicles.'
		},
		icon = { 
		
		[[data:UI\textures\space_marines\icon_wargear\sm_wp_force_power_fist]],
		}, --  = 
		
	},
	{
		
		title = 9107641, -- LOCDB [9107641] 'Keep 'em distracted'
		
		description_text_array =
		{
			9107642, -- LOCDB [9107642] 'Use your melee units to keep powerful ranged weapons from firing on you.'
		},
		icon = { 
		
		
		}, --  = 
		
	},

	{
		
		title = 9107647, -- LOCDB [9107647] 'Planting turrets down behind shot-blocking walls'
		
		description_text_array =
		{
			9107648, -- LOCDB [9107648] 'When they are in the open, turrets are very susceptible to long range rocket attacks; putting them behind walls reduces the chance they will take damage.'
		},
		icon = { 
			[[data:UI\textures\generic\icon_quick_tips\tarantula_turret]],
		
		}, --  = 
		
	},
	{
		
		title = 9107651, -- LOCDB [9107651] 'Shotguns '
		
		description_text_array =
		{
			9107652, -- LOCDB [9107652] 'Shotguns have a chance to deal knockback, which can be used to dislodge enemies from cover, making them easier to kill.'
		},
		icon = { 
		
			[[data:UI\textures\space_marines\icon_upgrades\sm_shotgun]],
		}, --  = 
		
	},


	{
		
		title = 9107655, -- LOCDB [9107655] 'Measure twice, cut once'
		
		description_text_array =
		{
			9107656, -- LOCDB [9107656] 'Some abilities may appear to overlap each other. Be sure to plan ahead and see what squads you prefer to use in different situations.'
		},
		icon = { 
		
		
		}, --  = 
		
	},

	{
		
		title = 9107657, -- LOCDB [9107657] 'Cover comes in all shapes and sizes'
		
		description_text_array =
		{
			9107658, -- LOCDB [9107658] 'Tall walls and vegetation can completely block the line of sight from enemies to your units. Use this to ambush them, or throw grenades over the wall with impunity.'
		},
		icon = { 
		
		
		}, --  = 
		
	},

	{
		
		title = 9107659, -- LOCDB [9107659] 'The enemy has grenades too!'
		
		description_text_array =
		{
			9107660, -- LOCDB [9107660] 'Move away from explosives thrown at your squads before the timer above them counts down to zero.'
		},
		icon = { 
			[[data:UI\textures\space_marines\icon_abilities\attack\sm_frag_grenade]],
		
		}, --  = 
		
	},

	{
		
		title = 9107661, -- LOCDB [9107661] 'Jump abililty'
		
		description_text_array =
		{
			9107662, -- LOCDB [9107662] 'Use the Jump ability to knock down enemy infantry and buy time for your other squads to get into position. If your Assault squad is taking damage, jump away!'
		},
		icon = { 
			[[data:UI\textures\space_marines\icon_abilities\attack\sm_assault_jump]],
		
		}, --  = 
		
	},

	{
		
		title = 9107663, -- LOCDB [9107663] 'Use cover when possible'
		
		description_text_array =
		{
			9107664, -- LOCDB [9107664] 'Units in cover take less damage, less suppression, and recover from suppression faster than units in the open. '
		},
		icon = { 
		
			[[data:UI\textures\generic\icon_quick_tips\cover_dots]],
		}, --  = 
	},

	{
		
		title = 9107667, -- LOCDB [9107667] 'Divide and conquer'
		
		description_text_array =
		{
			9107668, -- LOCDB [9107668] 'Flanking enemy squads is an effective tactic; you can negate cover by firing from the side.'
		},
		icon = { 
		
		
		}, --  = 
		
	},
	{
		
		title = 9107671, -- LOCDB [9107671] 'Queue your commands'
		
		description_text_array =
		{
			9107672, -- LOCDB [9107672] 'Holding SHIFT+Right-Clicking will queue up commands for your units. Your units will follow your orders in the sequence you choose.'
		},
		icon = { 
		[[data:UI\textures\generic\icon_quick_tips\mouse_button_right]],
		[[data:UI\textures\neutral\loading_icons\load_screen_shift_held]],
		
		}, --  = 
		
	},

	{
		
		title = 9107673, -- LOCDB [9107673] 'Units in cover'
		
		description_text_array =
		{
			9107674, -- LOCDB [9107674] 'When units are in heavy cover, direct assaults are not advised. However, you can use grenades and flamers to counter the benefits of cover. '
		},
		icon = { 
		
			[[data:UI\textures\space_marines\icon_abilities\attack\sm_frag_grenade]],
			[[data:UI\textures\space_marines\icon_upgrades\sm_flamer]],
		}, --  = 
		
	},

	{
		
		title = 9107675, -- LOCDB [9107675] 'Lay down some suppression fire'
		
		description_text_array =
		{
			9107676, -- LOCDB [9107676] 'Suppression fire can slow units down, forcing them to remain in your area of fire for longer. '
		},
		icon = { 
		
		
		}, --  = 
		
	},

		{
		
		title = 9107677, -- LOCDB [9107677] 'Is that the sound of death I hear?'
		
		description_text_array =
		{
			9107678, -- LOCDB [9107678] 'You can hear enemy vehicles and infantry approach even through the Fog of War.'
		},
		icon = { 
		
		
		}, --  = 
		
	},

		{
		
		title = 9107679, -- LOCDB [9107679] 'Unit suppression'
		
		description_text_array =
		{
			9107680, -- LOCDB [9107680] 'Units garrisoned in buildings and vehicles cannot be suppressed.'
		},
		icon = { 
		
		
		}, --  = 
		
	},

		{
		
		title = 9107681, -- LOCDB [9107681] 'Unit Facing'
		
		description_text_array =
		{
			9107682, -- LOCDB [9107682] 'Some units need to be set up to face the right direction, such as heavy bolter and anti-vehicle crews. Hold the right mouse button down and drag in the direction you want them to face.'
		},
		icon = { 
		
		
		}, --  = 
		
	},

	{
		
		title = 9107683, -- LOCDB [9107683] 'Assign Control Groups to Manage Your Forces'
		
		description_text_array =
		{
			9107684, -- LOCDB [9107684] 'Press Control + [a number] to assign a group, then press the number to reselect it later.'
		},
		icon = { 
		
		
		}, --  = 
		
	},
	{
		
		title = 9107685, -- LOCDB [9107685] 'Environmental cover'
		
		description_text_array =
		{
			9107686, -- LOCDB [9107686] 'Be mindful when destroying cover. Even though you've denied it to your enemy, you may find yourself without any for yourself if you have to fall back to that location.'
		},
		icon = { 
		
		
		}, --  = 
		
	},

		{
		
		title = 9107687, -- LOCDB [9107687] 'Burn them alive'
		
		description_text_array =
		{
			9107688, -- LOCDB [9107688] 'Flamers deal extra damage to units in buildings and also ignore the defensive bonuses of cover'
		},
		icon = { 
		
			[[data:UI\textures\space_marines\icon_upgrades\sm_flamer]],
		}, --  = 
		
	},

		{
		
		title = 9107689, -- LOCDB [9107689] 'Jump packs are your friend'
		
		description_text_array =
		{
			9107690, -- LOCDB [9107690] 'Clear impassable chasms and walls with the Jump ability.'
		},
		icon = { 
		
			[[data:UI\textures\orks\icon_abilities\buff\ork_jump]]
		}, --  = 
		
	},

		{
		
		title = 9107691, -- LOCDB [9107691] 'Flanking cover'
		
		description_text_array =
		{
			9107692, -- LOCDB [9107692] 'Cover is directional. Flanking enemy positions will neutralize their cover bonuses.'
		},
		icon = { 
		
		
		}, --  = 
		
	},

		{
		
		title = 9107693, -- LOCDB [9107693] 'Eldar like runnin''
		
		description_text_array =
		{
			9107694, -- LOCDB [9107694] 'Ranged Eldar Squads will do their best to keep you at range while fighting'
		},
		icon = { 
		
			[[data:UI\textures\eldar\icon_abilities\buff\eld_fleet_of_foot]]
		}, --  = 
		
	},

		{
		
		title = 9107695, -- LOCDB [9107695] 'Is it getting warmer in here?'
		
		description_text_array =
		{
			9107696, -- LOCDB [9107696] 'Flamers are great for dealing with enemies in cover.'
		},
		icon = { 
		
			[[data:UI\textures\space_marines\icon_upgrades\sm_flamer]],
			
		}, --  = 
		
	},
	
	{
		
		title = 9107699, -- LOCDB [9107699] 'Breaking defensive formations'
		
		description_text_array =
		{
			9107700, -- LOCDB [9107700] 'Is your enemy too dug in to approach? Jump units such as Assault Marines are perfect for getting in close and breaking defensive formations.'
		},
		icon = { 
			
			[[data:UI\textures\space_marines\icon_squads\sm_assault_marine]],
			[[data:UI\textures\space_marines\icon_abilities\attack\sm_assault_jump]],
		}, --  = 
		
	},
	
	{
		
		title = 9107703, -- LOCDB [9107703] 'Defeating units in cover'
		
		description_text_array =
		{
			9107704, -- LOCDB [9107704] 'Squads in cover will take more damage from flames. '
		},
		icon = { 
			[[data:UI\textures\space_marines\icon_upgrades\sm_flamer]],
		
		}, --  = 
		
	},
	
	{
		
		title = 9107705, -- LOCDB [9107705] 'Hotkeys'
		
		description_text_array =
		{
			9107706, -- LOCDB [9107706] 'Taking the time to learn hotkeys will streamline your gameplay and make for more efficient micro-management.'
		},
		icon = { 
		
		
		}, --  = 
		
	},
	
	{
		
		title = 9107707, -- LOCDB [9107707] 'Cover bonus'
		
		description_text_array =
		{
			9107708, -- LOCDB [9107708] 'The flashing object next to a right-click move order means that object will provide cover to that squad.'
		},
		icon = { 
		
		
		}, --  = 
		
	},

	{
		
		title = 9107713, -- LOCDB [9107713] 'Oops, sorry.'
		
		description_text_array =
		{
			9107714, -- LOCDB [9107714] 'Watch where you throw grenades. Allies caught in the blast can still be knocked back.'
		},
		icon = { 
		
			[[data:UI\textures\space_marines\icon_abilities\attack\sm_frag_grenade]],
		}, --  = 
		
	},

	{
		
		title = 9107715, -- LOCDB [9107715] 'Warboss'
		hero = "sbps\\pvp\\race_ork\\heroes\\ork_warboss",
		description_text_array =
		{
			9107716, -- LOCDB [9107716] 'You've selected the Warboss. The largest and most powerful Ork, he excels at melee combat.'
		},
		icon = { 
		
		[[data:UI\textures\orks\icon_squads\ork_warboss_hero]],
		}, --  = 
		
	},

	{
		
		title = 9107717, -- LOCDB [9107717] 'Kommando'
		hero = "sbps\\pvp\\race_ork\\heroes\\ork_hero_kommando",
		
		description_text_array =
		{
			9107718, -- LOCDB [9107718] 'You've selected the Kommando. The Kommando is a stealth expert who ambushes his prey.'
		},
		icon = { 
		
			[[data:UI\textures\orks\icon_squads\ork_kommando_hero]],
		}, --  = 
		
	},

	{
		
		title = 9107719, -- LOCDB [9107719] 'Techmarine'
		hero = "sbps\\pvp\\race_marine\\heroes\\sm_techmarine",
		description_text_array =
		{
			9107720, -- LOCDB [9107720] 'You've selected the Techmarine. The Techmarine is a defensive specialist who constructs turrets to defend territory and a teleporter relay to reinforce allies.'
		},
		icon = { 
		
			[[data:UI\textures\space_marines\icon_squads\sm_tech_marine_hero]],
		}, --  = 
		
	},

	{
		
		title = 9107721, -- LOCDB [9107721] 'Apothecary'
		hero = "sbps\\pvp\\race_marine\\heroes\\sm_apothecary",
		description_text_array =
		{
			9107722, -- LOCDB [9107722] 'You've selected the Apothecary. The Apothecary specializes in healing and excels at supporting from just behind the front line with his abilities.'
		},
		icon = 
		{ 
		
			[[data:UI\textures\space_marines\icon_squads\sm_apothecary_hero]],
		}, --  = 
		
	},
	{
		
		title = 9115171, -- LOCDB [9115171] 'Sweeping Advance'
		
		description_text_array =
		{
			9115172, -- LOCDB [9115172] 'Units that are retreating take additional damage from melee attacks. Retreating when already surrounded by melee units will end badly.'
		},
		icon = { 
		
					[[data:UI\textures\space_marines\icon_abilities\misc\retreat]],
		},
		
	},

}
