-------------------------------------------------------------------------------------------------
-- 			NOTE
--
--			LocString formatting is supported via strict index mapping.
--
--			Example:
--			%1FORCECOMMANDER% is always the name of the force commander.
--			The FORCECOMMANDER portion of the definition is for readability only.
--			It has no bearing on what is actually put into that spot.
--			Only the '1' matters.
--
--			The following indicies are currently supported:
--			
--				1: is the player-provided name of the campaign/racial leader.
--
-------------------------------------------------------------------------------------------------
	

gameplay_tips =
{

		
	{
		title = 9104855, -- LOCDB [9104855] 'Death From Above'
		description_text_array =
		{
			9104856, -- LOCDB [9104856] 'Use the Assault Jump ability to knock down enemy infantry and buy time for your other squads to get into position. Or if the enemy is dug in, jump in close to break formations.'
		},
		icon = 
		{
		[[data:UI\textures\generic\icon_quick_tips\jump]],
		},
	},
	
	{
		title = 9104857, -- LOCDB [9104857] 'Jump Ahead, Just Not Too Far'
		description_text_array =
		{
			9104858, -- LOCDB [9104858] 'Assault Jump is great for getting into the fray, but make sure you back up those units lest they fall to overwhelming forces. '
			9104859, -- LOCDB [9104859] 'Of course, if your Assault Squad is taking heavy damage, remember you can jump away!'
		},
		icon = 
		{
		[[data:UI\textures\generic\icon_quick_tips\jump]],
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
		[[data:UI\textures\generic\icon_quick_tips\cover_dots]],
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
		[[data:UI\textures\space_marines\icon_wargear\sm_acc_frag_grenade_pack]],
		[[data:UI\textures\space_marines\icon_wargear\sm_wp1_flamer_common]],
		[[data:UI\textures\space_marines\icon_wargear\sm_acc_signum]],
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
		[[data:UI\textures\space_marines\icon_wargear\sm_wp1_combat_shotgun_common]],
		[[data:UI\textures\space_marines\icon_wargear\sm_wp1_flamer_common]],
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
		title = 9104868, -- LOCDB [9104868] 'Attack from Range; Close in for the Kill'
		description_text_array =
		{
			9104869, -- LOCDB [9104869] 'Attacking with a long-range unit or a suppressor, and then closing with a short range unit is a good tactic. '
		},
		icon = 
		{
		},
	},
	
	{
		title = 9104870, -- LOCDB [9104870] 'Queue 'Em Up'
		description_text_array =
		{
			9104871, -- LOCDB [9104871] 'Hold Shift when issuing orders to queue up commands. Your units will follow your orders in the sequence you choose.'
		},
		icon = 
		{
		[[data:UI\textures\generic\icon_quick_tips\shift_key]],
		[[data:UI\textures\generic\icon_quick_tips\mouse_button_right]],
		},
	},
	
	{
		title = 9104872, -- LOCDB [9104872] 'Defeating Cover'
		description_text_array =
		{
			9104873, -- LOCDB [9104873] 'Direct assaults against units in heavy cover can be suicide. Use grenades and flamers to counter the benefits of cover.'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_wargear\sm_acc_frag_grenade_pack]],
		[[data:UI\textures\space_marines\icon_wargear\sm_wp1_flamer_common]],
		},
	},
	
	{
		title = 9104874, -- LOCDB [9104874] 'Keep Them in the Line of Fire'
		description_text_array =
		{
			9104875, -- LOCDB [9104875] 'Suppression fire slows units down, forcing them to remain in your area of fire for longer. '
		},
		icon = 
		{
		[[data:UI\textures\generic\icon_quick_tips\suppression_effect]],
		[[data:UI\textures\generic\icon_quick_tips\suppression_kicker]],
		},
	},
	
	{
		title = 9104876, -- LOCDB [9104876] 'Use Your Ears'
		description_text_array =
		{
			9104877, -- LOCDB [9104877] 'You can hear enemy vehicles and infantry approach even through the fog of war.'
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
		[[data:UI\textures\space_marines\icon_wargear\sm_wp1_heavy_bolter_common]],
		[[data:UI\textures\space_marines\icon_wargear\sm_wp1_plasma_cannon_common]],
		},
	},
	
	{
		title = 9104880, -- LOCDB [9104880] 'Control Groups'
		description_text_array =
		{
			9104881, -- LOCDB [9104881] 'Use control groups to manage your forces. Press Control + [a keyboard number] to assign all currently selected units to a group, then press the number to reselect it later.'
		},
		icon = 
		{
		[[data:UI\textures\generic\icon_quick_tips\band_box]],
		},
	},
	
	{
		title = 9104882, -- LOCDB [9104882] 'Careful What You Blow Up'
		description_text_array =
		{
			9104883, -- LOCDB [9104883] 'Be mindful when destroying cover. Even though you have denied it to your enemy, you may find yourself without any cover if you have to fall back to that location.'
		},
		icon = 
		{
		},
	},
	
	{
		title = 9104884, -- LOCDB [9104884] 'Burn Them Alive'
		description_text_array =
		{
			9104885, -- LOCDB [9104885] 'Flamers deal extra damage to units in buildings and also ignore the defensive bonuses of cover.'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_wargear\sm_wp1_flamer_common]],
		},
	},
	
	{
		title = 9104886, -- LOCDB [9104886] 'Over and Across'
		description_text_array =
		{
			9104887, -- LOCDB [9104887] 'Clear impassable chasms and walls with the Assault Jump ability. Be careful not to leave your Assault Marines without any support on the other side, however.'
		},
		icon = 
		{
		[[data:UI\textures\generic\icon_quick_tips\jump]],
		},
	},
	
	{
		title = 9104888, -- LOCDB [9104888] 'Up, Up and Away'
		description_text_array =
		{
			9104889, -- LOCDB [9104889] 'Assault Jump can just as easily be used as a retreat mechanism as it can for an attack. '
		},
		icon = 
		{
		[[data:UI\textures\generic\icon_quick_tips\jump]],
		},
	},
	
	{
		title = 9104890, -- LOCDB [9104890] 'Eldar Fleetness'
		description_text_array =
		{
			9104891, -- LOCDB [9104891] 'Ranged Eldar Squads will do their best to keep you at range while fighting.'
		},
		icon = 
		{
		[[data:UI\textures\eldar\icon_squads\eld_guardian]],
		[[data:UI\textures\eldar\icon_squads\eld_warp_spider]],
		},
	},
	
	{
		title = 9104892, -- LOCDB [9104892] 'The Space Marine's Best Friend'
		description_text_array =
		{
			9104893, -- LOCDB [9104893] 'Frag grenades are an effective way to manage an overwhelming situation.'
		},
		icon = 
		{
		[[data:UI\textures\generic\icon_quick_tips\frag_grenades]],
		},
	},
	
	{
		title = 9104894, -- LOCDB [9104894] 'Swing that Sword'
		description_text_array =
		{
			9104895, -- LOCDB [9104895] 'Power weapons may be great versus vehicles and other high-value targets, but they attack more slowly than chainswords. Against hordes of Orks or Tyranids, speed will pay greater dividends.'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_wargear\sm_wp2_power_axe_common]],
		[[data:UI\textures\space_marines\icon_wargear\sm_wp2_chainsword_common]],
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
		title = 9104898, -- LOCDB [9104898] 'Cover Flashes'
		description_text_array =
		{
			9104899, -- LOCDB [9104899] 'If objects flash after you give a move order, that means those objects will provide cover to the squad when it gets into position.'
		},
		icon = 
		{
		},
	},
	
	{
		title = 9104902, -- LOCDB [9104902] 'No Stopping the First Company'
		description_text_array =
		{
			9104903, -- LOCDB [9104903] 'Units in Terminator armor cannot be suppressed by enemy fire.'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_squads\sm_terminator]],
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
		[[data:UI\textures\generic\icon_quick_tips\frag_grenades]],
		[[data:UI\textures\generic\icon_quick_tips\retreat]],
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
		[[data:UI\textures\space_marines\icon_wargear\sm_wp1_missile_launcher_common]],
		[[data:UI\textures\space_marines\icon_wargear\sm_acc_melta_bomb_pack]],		
		},
	},
	
	{
		title = 9104908, -- LOCDB [9104908] 'Friends Don't Let Friends Eat Shrapnel'
		description_text_array =
		{
			9104909, -- LOCDB [9104909] 'Watch where you throw grenades. Allies caught in the blast can still be knocked back.'
		},
		icon = 
		{
		[[data:UI\textures\generic\icon_quick_tips\frag_grenades]],
		},
	},
	
	{
		title = 9104910, -- LOCDB [9104910] 'Middle Click'
		description_text_array =
		{
			9104911, -- LOCDB [9104911] 'Click and hold the mouse scroll wheel to pan the camera around without having to scroll over to the screen edge or reach for the keyboard.'
		},
		icon = 
		{
		[[data:UI\textures\generic\icon_quick_tips\camera_movement]],
		[[data:UI\textures\generic\icon_quick_tips\mouse_button_scrollwheel]],
		},
	},
	
	{
		title = 9108059, -- LOCDB [9108059] 'Go to Hand-to-Hand!'
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
		title = 9104914, -- LOCDB [9104914] 'Keep the Scout Alive '
		description_text_array =
		{
			9104915, -- LOCDB [9104915] 'Keep Cyrus protected. His strengths are sabotage, infiltration and quick high-damage attacks. Don't leave him on the frontline for long.'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\portraits\sm_scout_marine_cyrus]],
		},
	},
	
	{
		title = 9104916, -- LOCDB [9104916] 'The Benefits of Armor'
		description_text_array =
		{
			9104917, -- LOCDB [9104917] 'A higher Armor Rating makes a squad leader more resistant to enemy fire.'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_wargear\sm_arm_power_armour_e_common]],
		},
	},
	
	{
		title = 9104918, -- LOCDB [9104918] 'The Whole Story'
		description_text_array =
		{
			9104919, -- LOCDB [9104919] 'When choosing wargear, take a look at benefits beyond level and raw damage. '
			9104920, -- LOCDB [9104920] 'When fighting masses of enemies, for example, a high-damage sniper rifle or power fist won't be as effective as a faster-hitting bolter or chainsword. Weapons that do knockback or stun opponents may also be much more effective than their raw damage would suggest.'
		},
		icon = 
		{
		},
	},
	
	{
		title = 9104921, -- LOCDB [9104921] 'A Safe Place'
		description_text_array =
		{
			9104922, -- LOCDB [9104922] 'Securing a well-defended Communication Array, Automated Foundry or Imperial Shrine is often worth the risk. Once in your hands, that location will heal your units even if the enemy still has some troops trying to dislodge you.'
		},
		icon = 
		{
		[[data:UI\textures\neutral\portraits\stratagem_intel]],
		[[data:UI\textures\neutral\portraits\stratagem_supply]],
		[[data:UI\textures\neutral\portraits\stratagem_psycher]],
		},
	},
	
	{
		title = 9104923, -- LOCDB [9104923] 'Cut off the Head. . . '
		description_text_array =
		{
			9104924, -- LOCDB [9104924] 'Many enemy squads have strong leaders and dangerous heavy weapons. Take them out with a high powered shot, and you can finish off the rest of the squad with relative ease.'
		},
		icon = 
		{
		},
	},
	
	{
		title = 9104925, -- LOCDB [9104925] 'Ancient Power'
		description_text_array =
		{
			9104926, -- LOCDB [9104926] 'A Dreadnought is undoubtedly a mighty force on the battlefield, but they are difficult to repair in the field without the right tools. '
			9104927, -- LOCDB [9104927] 'And those enemies with missile launchers? They will do far more than disrupt a Dreadnought. . .'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\portraits\sm_dreadnought_davian]],
		},
	},
	
	{
		title = 9104928, -- LOCDB [9104928] 'Try Out Something New'
		description_text_array =
		{
			9104929, -- LOCDB [9104929] 'Don't be afraid to experiment! '
			9104930, -- LOCDB [9104930] 'Just because Tarkus starts with grenades doesn't mean that you can't move them to a unit that might make more use of them. You may find combinations that work better with your play style.'
		},
		icon = 
		{
		},
	},
	
	{
		title = 9104931, -- LOCDB [9104931] 'Plan B'
		description_text_array =
		{
			9104932, -- LOCDB [9104932] 'Facing vehicles without melta bombs or a missile launcher doesn't have to mean defeat. There are plenty of other options.'
			9104933, -- LOCDB [9104933] 'Plasma guns and power weapons (swords, axes, fists) both do respectable damage to vehicles and monstrous beasts. Avitus's Focus Fire and Cyrus's Explosive Rounds abilities can also make infantry weapons like Heavy Bolters and Combat Shotguns viable solutions as well.'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_wargear\sm_wp1_plasma_gun_common]],
		[[data:UI\textures\space_marines\icon_wargear\sm_wp2_powersword_common]],
		},
	},
	
	{
		title = 9104934, -- LOCDB [9104934] 'That Special Cyrus Touch'
		description_text_array =
		{
			9104935, -- LOCDB [9104935] 'With the right combat training, Cyrus can gain special abilities with different ranged weapons. High Powered Shot makes his sniper rifle a lethal solution to single targets, while explosive shots make a combat shotgun able to fight vehicles and blow troops out of cover.'
			9104936, -- LOCDB [9104936] 'He may be lightly armored, but Cyrus can be one of your deadliest warriors.'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_abilities\attack\sniper_shot]],
		[[data:UI\textures\space_marines\icon_abilities\attack\sm_explosive_shot]],
		},
	},
	
	{
		title = 9104937, -- LOCDB [9104937] 'Learn a New Way'
		description_text_array =
		{
			9104938, -- LOCDB [9104938] 'With a little investment in the right combat disciplines, Tarkus can learn how to use chainswords, Thaddeus can learn how to use medium ranged weapons, and the Force Commander can learn how to use heavy weapons. This allows you to reshape your strike force to fit your favorite tactics.'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_traits\str_close_combat_apti_large]],
		[[data:UI\textures\space_marines\icon_traits\ran_bolter_aptitude_large]],
		[[data:UI\textures\space_marines\icon_traits\ran_heavy_weapons_apt_large]],
		},
	},
	
	{
		title = 9104939, -- LOCDB [9104939] 'Demolition in the Land of the Blind'
		description_text_array =
		{
			9104940, -- LOCDB [9104940] 'Demolition charges have a long detonation timer and so may not be very effective against moving targets. When combined with a blind grenade or another stun weapon, however, they can be devastating.'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_wargear\sm_acc_frash_grenade_pack]],
		[[data:UI\textures\space_marines\icon_wargear\sm_acc_demolition_charge_pack]],
		[[data:UI\textures\space_marines\icon_wargear\sm_acc_medkit_pack]],
		},
	},
	
	{
		title = 9104941, -- LOCDB [9104941] 'Focus Fire Is Your Friend '
		description_text_array =
		{
			9104942, -- LOCDB [9104942] 'Avitus can use Focus Fire to make any ranged weapon more powerful, not just the heavy bolter.'
		},
		icon = 
		{
		[[data:UI\textures\generic\icon_quick_tips\focus_fire]],
		},
	},
	
	{
		title = 9104943, -- LOCDB [9104943] 'The Magic Formula '
		description_text_array =
		{
			9104944, -- LOCDB [9104944] 'With the right accessories equipped, you can bring your strike force back from the brink in just a few seconds. '
			9104945, -- LOCDB [9104945] 'Use your Drop Pod Beacon to call in a drop pod, and then use a Combat Stimulant during the delay before it arrives. You will instantly revive any incapacitated squad leaders, and the drop pod will reinforce their squads.'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_wargear\sm_acc_drop_pod]],
		[[data:UI\textures\space_marines\icon_wargear\sm_acc_medkit_pack]],
		},
	},
	
	{
		title = 9104946, -- LOCDB [9104946] 'Did You See Something?'
		description_text_array =
		{
			9104947, -- LOCDB [9104947] 'If Cyrus flashes while infiltrated, it means the enemy has spotted him. This can leave him exposed to enemy fire, but it isn't a death sentence. Just pull back a little and Cyrus will fade from enemy view again.'
		},
		icon = 
		{
		[[data:UI\textures\generic\icon_quick_tips\portrait_cyrus]],
		[[data:UI\textures\generic\icon_quick_tips\infiltrate]],
		},
	},
	
	{
		title = 9104948, -- LOCDB [9104948] 'Open a Path'
		description_text_array =
		{
			9104949, -- LOCDB [9104949] 'Terminators, Dreadnoughts and heavy weapons can blow through almost any obstacle. Use this to outflank enemies, create new lines of fire, and deny cover to the enemy.'
			9104950, -- LOCDB [9104950] 'Thaddeus's Assault Jump and the Force Commander's charge are also effective at removing obstacles. '
		},
		icon = 
		{
		},
	},
	
	{
		title = 9104951, -- LOCDB [9104951] 'Out Go the Lights'
		description_text_array =
		{
			9104952, -- LOCDB [9104952] 'Many enemy leaders are just as susceptible to blind grenades as their minions.  Being able to stun a powerful enemy for several seconds can be very valuable.'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_wargear\sm_acc_frash_grenade_pack]],
		},
	},
	
	{
		title = 9104953, -- LOCDB [9104953] 'The Sneaky Get Sneakier'
		description_text_array =
		{
			9104954, -- LOCDB [9104954] 'Several of Cyrus's unlocks improve how he can use Infiltrate. With the right ones, you can revive squad leaders and use accessory abilities without being revealed!'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_traits\wil_advanced_infiltra_large]],
		[[data:UI\textures\space_marines\icon_traits\wil_silent_revival_large]],
		[[data:UI\textures\space_marines\icon_traits\wil_master_infiltrate_large]],
		},
	},
	
	
	{
		title = 9104957, -- LOCDB [9104957] 'Give Tarantulas Cover'
		description_text_array =
		{
			9104958, -- LOCDB [9104958] 'Try to plant your Tarantula sentry guns behind shot blocking walls. Out in the open, they are very susceptible to long range attacks (from Ork Tankbustas, for example). Putting them behind walls reduces the chance they will take damage before they can open fire.'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_wargear\sm_acc_locator_beacon]],
		},
	},
	
	{
		title = 9104959, -- LOCDB [9104959] 'Right Into My Trap'
		description_text_array =
		{
			9104960, -- LOCDB [9104960] 'The Remote Detonation Pack is an excellent choice when deploying Cyrus on a defend mission. Plant a detonator ahead of an enemy wave in order to cover an approach to the defense area. When the enemy rushes in . . . boom!'
			9104961, -- LOCDB [9104961] 'Be careful not to set the detonator too close to the generators you are defending, however. Destroy those and you've lost the mission.'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_wargear\sm_acc_remote_detonation_device]],
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
		[[data:UI\textures\space_marines\icon_wargear\sm_wp1_combat_shotgun_common]],
		},
	},
	
	{
		title = 9104964, -- LOCDB [9104964] 'Stand With Your Brothers'
		description_text_array =
		{
			9104965, -- LOCDB [9104965] 'Several special abilities can be upgraded through unlocks. Some abilities can be upgraded to affect multiple squads. This can be an excellent way to maximize your fighting force's efficiency.'
		},
		icon = 
		{
		},
	},
	
	{
		title = 9104966, -- LOCDB [9104966] 'Pick Your Upgrades'
		description_text_array =
		{
			9104967, -- LOCDB [9104967] 'You do not have enough points to get every squad upgrade. Decide which squads you prefer to use in which situations and purchase upgrades that play to those strengths.'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_traits\sta_blessing_of_zeal_large]],
		[[data:UI\textures\space_marines\icon_traits\ran_specialist_ammuni_large]],
		[[data:UI\textures\space_marines\icon_traits\str_merciless_strike_large]],
		},
	},
	
	
	{
		title = 9104971, -- LOCDB [9104971] 'Special Attacks'
		description_text_array =
		{
			9104972, -- LOCDB [9104972] 'Special attacks are improved close-combat strikes that deal knockback and hit multiple enemies.'
			9104973, -- LOCDB [9104973] 'Squads specializing in close combat (like Thaddeus or the Force Commander) execute special attacks most often, especially when fighting ranged specialists (like Ork Shoota Boyz or Eldar Guardians). '
		},
		icon = 
		{
		},
	},
	
	{
		title = 9104974, -- LOCDB [9104974] 'Tactical Advance'
		description_text_array =
		{
			9104975, -- LOCDB [9104975] 'The Tactical Advance ability lets Tarkus move up on an enemy position when there is no cover to be had. His squad takes less damage and is immune to suppression when the ability is active.'
			9104976, -- LOCDB [9104976] 'Use Tactical Advance to get up to a building protecting an enemy suppressor and let loose with grenades or a flamer.'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_abilities\buff\sm_tactical_advance]],
		},
	},
	
	{
		title = 9104977, -- LOCDB [9104977] 'The Final Countdown'
		description_text_array =
		{
			9104978, -- LOCDB [9104978] 'The enemy has grenades too.  Move away from explosives thrown at your squads before the timer above them counts down to zero.'
		},
		icon = 
		{
		[[data:UI\textures\orks\icon_wargear\ork_acc_kommando_grenade]],
		},
	},
	
	{
		title = 9104979, -- LOCDB [9104979] 'There Is No Glory in Pointless Defeat'
		description_text_array =
		{
			9104980, -- LOCDB [9104980] 'If you're having trouble finishing a mission, you can return to the Armageddon and keep your experience points and new wargear. However, you'll also lose a campaign day. . .this allows the Tyranids to get a stronger foothold in the sector.'
		},
		icon = 
		{
		},
	},
	
	{
		title = 9104981, -- LOCDB [9104981] 'You Can't See Me!'
		description_text_array =
		{
			9104982, -- LOCDB [9104982] 'Tall walls and vegetation can completely conceal your units from the enemy. Use this to ambush enemy troops, or throw grenades over the wall with impunity.'
		},
		icon = 
		{
		},
	},
	
	{
		title = 9104983, -- LOCDB [9104983] 'Tyranid Synapse'
		description_text_array =
		{
			9104984, -- LOCDB [9104984] 'Certain Tyranid units, like Warriors and Zoanthropes, have an especially strong connection to the Hive Mind. Kill these creatures to cause area of effect damage to surrounding Tyranid units.'
			9104985, -- LOCDB [9104985] 'With the synapse creature dead, the surviving Gaunts will no longer leap at you in melee combat, and will no longer leap over terrain when trying to get to you.'
		},
		icon = 
		{
		[[data:UI\textures\tyranids\icon_squads\tyr_warrior]],
		[[data:UI\textures\tyranids\icon_squads\tyr_zoanthrope]],
		},
	},
	
	{
		title = 9104986, -- LOCDB [9104986] 'Hold Them Down'
		description_text_array =
		{
			9104987, -- LOCDB [9104987] 'Use Avitus to suppress the enemy while the Force Commander or Thaddeus rushes in to finish them off.'
		},
		icon = 
		{
		[[data:UI\textures\generic\icon_quick_tips\portrait_avitus]],
		[[data:UI\textures\space_marines\icon_wargear\sm_wp1_heavy_bolter_common]],
		},
	},
	
	{
		title = 9104988, -- LOCDB [9104988] 'Come and Get Me!'
		description_text_array =
		{
			9104989, -- LOCDB [9104989] 'Activate Tarkus's Tactical Advance ability right after triggering his Taunt. All enemies will direct their attacks at him, and he will be protected against ranged damage. You can then use your other squads to bring the pain.'
			9104990, -- LOCDB [9104990] 'Taunt is also useful for helping out squads that are in trouble. Trigger it, and the enemy will forget about their current target and pile on to Tarkus (who can take it).'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_abilities\buff\sm_tactical_advance]],
		[[data:UI\textures\space_marines\icon_abilities\debuff\sm_taunt]],
		},
	},
	
	{
		title = 9104991, -- LOCDB [9104991] 'Fall Back'
		description_text_array =
		{
			9104992, -- LOCDB [9104992] 'Use the Fall Back command when outmatched by your opponent. It is easier to reinforce around a relay you have already cleared than to revive fallen squad leaders near enemy strong points.'
		},
		icon = 
		{
		[[data:UI\textures\generic\icon_quick_tips\retreat]],
		},
	},
	
	{
		title = 9104993, -- LOCDB [9104993] 'Energy'
		description_text_array =
		{
			9104994, -- LOCDB [9104994] 'When using Focus Fire, Infiltrate or Tactical Advance, watch your squad's Energy. Your Energy does not regenerate while an ability is on, so you might find yourself with lower-than-expected Energy in the next battle.'
		},
		icon = 
		{
		},
	},
	
	{
		title = 9104995, -- LOCDB [9104995] 'Eyes on the Prize'
		description_text_array =
		{
			9104996, -- LOCDB [9104996] 'Your long-term campaign goals are displayed on the bridge view at the top left of the screen. To review the associated briefing, just click on the goal counter itself.'
		},
		icon = 
		{
		},
	},
	
	{
		title = 	9105689,	-- LOCDB [9105689] 'Try It On For Size'
		description_text_array =
		{
			9105690,	-- LOCDB [9105690] 'Use the time between missions to experiment with your wargear load outs. Try different equipment on different squads and see how it affects their stats.'
		},
		icon = 
		{
		},
	},

	{
		title = 9105691,	-- LOCDB [9105691] 'One Point Shy?'
		description_text_array =
		{
			9105692,	-- LOCDB [9105692] 'Is a trait unlock just one point out of reach? Check your wargear.'
			9105693,	-- LOCDB [9105693] 'Some pieces grant extra points to a Combat Discipline, and that can be enough to unlock that trait you always wanted.'
		},
		icon = 
		{
		},
	},

	{
		title = 9105694,	-- LOCDB [9105694] 'Unlock and Key'
		description_text_array =
		{
			9105695,	-- LOCDB [9105695] 'Investing in the Combat Disciplines when your squads level up gives you two advantages.'
			9105696,	-- LOCDB [9105696] 'First, each point spent increases some of your basic combat statistics, like Health or Ranged Damage. Second, points spent unlock unique traits that allow you to enhance and refine your squads even further.'
			9105698,	-- LOCDB [9105698] 'You'll never get enough points to get all the unlocks, however, so plan ahead!'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_traits\ran_advanced_optics_large]],
		[[data:UI\textures\space_marines\icon_traits\sta_strike_from_the_s_large]],
		[[data:UI\textures\space_marines\icon_traits\str_chapters_fury_large]],
		},
	},

	{
		title = 9105699,	-- LOCDB [9105699] 'Foundry Bonus'
		description_text_array =
		{
			9105700,	-- LOCDB [9105700] 'Seeing gray icons on the screen at the end of every mission? Those are the Automated Foundries you haven't secured on the current planet.'
			9105701,	-- LOCDB [9105701] 'Secure them and you'll gain a bonus toward multiple deployments.'
		},
		icon = 
		{
		[[data:UI\textures\generic\icon_quick_tips\foundry_bonus]],
		[[data:UI\textures\generic\icon_quick_tips\stratagem_supply]],
		},
	},

	{
		title = 9105702,	-- LOCDB [9105702] 'Timing Is Everything'
		description_text_array =
		{
			9105703,	-- LOCDB [9105703] 'Many missions have a limited number of days in which to complete them. If you let them expire, you may end up regretting it. '
			9105704,	-- LOCDB [9105704] 'Let a defense expire and that strategic asset is lost until you can re-secure it. In other missions, the same boss may return stronger later on.'
			9105705,	-- LOCDB [9105705] 'But you can't get to every one. Sometimes you just have to let some missions expire...the question is which ones?'
		},
		icon = 
		{
		},
	},

	{
		title = 9105706,	-- LOCDB [9105706] 'Should He Stay or Should He Go?'
		description_text_array =
		{
			9105707,	-- LOCDB [9105707] 'Different squads have different strengths, so the choice of who to deploy on a mission can be critical. Before launching a mission, make sure the squads you want are ready to go.'
			9105708,	-- LOCDB [9105708] 'Always choosing the same squads could eventually leave the neglected squads a few levels behind...bad news when you find you want to use their special skills.'
		},
		icon = 
		{
		[[data:UI\textures\generic\icon_quick_tips\portrait_avitus]],
		[[data:UI\textures\generic\icon_quick_tips\portrait_cyrus]],
		[[data:UI\textures\generic\icon_quick_tips\portrait_thaddeus]],
		},
	},

	{
		title = 9105709,	-- LOCDB [9105709] 'Where to Fight'
		description_text_array =
		{
			9105710,	-- LOCDB [9105710] 'Once you are fighting over three worlds, be careful not to ignore one planet for the sake of the others.'
			9105711,	-- LOCDB [9105711] 'If you aren't defending it, a world will succumb to infestation and your campaign score will suffer (not to mention the poor residents of that world!).'
		},
		icon = 
		{
		[[data:UI\textures\generic\bridge\events\tab_calderis_btn]],
		[[data:UI\textures\generic\bridge\events\tab_typhon_btn]],
		[[data:UI\textures\generic\bridge\events\tab_meridian_btn]],
		},
	},

	{
		title = 9105712,	-- LOCDB [9105712] 'Fire For Effect!'
		description_text_array =
		{
			9105713,	-- LOCDB [9105713] 'Securing Communication Arrays gives you access to the Signum, a piece of wargear that allows you to call in devastating artillery strikes.'
			9105714,	-- LOCDB [9105714] 'Nothing says victory quite like the rain of Imperial artillery.'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_wargear\sm_acc_signum]],
		},
	},

	{
		title = 9105715,	-- LOCDB [9105715] 'Double Up The Guns'
		description_text_array =
		{
			9105716,	-- LOCDB [9105716] 'Securing Automated Foundries allows you to use a Locator Beacon, a special piece of wargear you can use to set up Tarantula bolter turrets.'
			9105717,	-- LOCDB [9105717] 'Turrets are always available on defend missions, but if you bring the Locator Beacon you can deploy that many more.'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_wargear\sm_acc_locator_beacon]],
		},
	},

	{
		title = 9105718,	-- LOCDB [9105718] 'We Are Invincible'
		description_text_array =
		{
			9105719,	-- LOCDB [9105719] 'Secure Imperial Shrines and you can equip the Rosarius, a wargear item that can make your entire strike force invulnerable for a brief time.'
			9105720,	-- LOCDB [9105720] 'Save the Rosarius for when you are perfectly set up to deal damage out to a particularly strong enemy. Go invulnerable and bring the pain!'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\icon_wargear\sm_acc_rosarius]],
		},
	},

	{
		title = 9105721,	-- LOCDB [9105721] 'The Hive Fleet Spreads'
		description_text_array =
		{
			9105722,	-- LOCDB [9105722] 'At the end of every campaign day, you receive updates on Tyranid activities: from new missions spawning to sightings of poisonous spore clouds in the atmosphere.'
			9105723,	-- LOCDB [9105723] 'These events all contribute to the Infestation Rating of the planet, but holding Imperial Shrines will reduce the severity of these effects.'
		},
		icon = 
		{
		[[data:UI\textures\generic\bridge\events\icon\tyranids]],
		},
	},

	{
		title = 9105724,	-- LOCDB [9105724] 'Are You a Savior or a Warrior?'
		description_text_array =
		{
			9105725,	-- LOCDB [9105725] 'Your campaign score and rank is the sum of two ratings: Savior and Warrior.'
			9105726,	-- LOCDB [9105726] 'Kill enemy leaders and your Warrior rating soars. Defend strategic assets and your Savior rating goes up.'
			9105727,	-- LOCDB [9105727] 'But can you do both?'
		},
		icon = 
		{
		[[data:UI\textures\space_marines\accolades\savior08]],
		[[data:UI\textures\space_marines\accolades\warrior07]],
		},
	},

	{
		title = 	9107399, -- LOCDB [9107399] 'The Hive Fleets'
		description_text_array =
		{
			9107400, -- LOCDB [9107400] 'The three largest Tyranid Hive Fleets to invade the galaxy were dubbed Behemoth, Kraken and Leviathan. In each case, the fleet was only turned back at the cost of billions upon billions of lives.'
			9107401, -- LOCDB [9107401] 'The Hive Fleet invading Sub-Sector Aurelia is likely a fragment of Leviathan. Indeed, even when a fleet is supposedly defeated, many of its tendrils continue on. If this tendril is not stopped, it will soon rival the original hive fleet in strength.'
		},
		icon = 
		{
		},
	},
	{
		title = 	9107404, -- LOCDB [9107404] 'The Imperium of Man '
		description_text_array =
		{
			9107405, -- LOCDB [9107405] 'Spanning the entire galaxy, the Imperium is the largest and mightiest dominion to ever hold sway over the stars. It rules over trillions upon trillions of men and women, living across millions of worlds.'
			9107406, -- LOCDB [9107406] 'But the Imperium’s golden age is long past. The Imperium is now fragmented by internal strife and instability, and it is sorely pressed by the countless aliens who assail it. '
		},
		icon = 
		{
		},
	},
	{
		title = 	9107407, -- LOCDB [9107407] 'The Emperor of Man'
		description_text_array =
		{
			9107408, -- LOCDB [9107408] 'Ten thousand years ago, when humankind was on the very brink of destroying itself during the Age of Strife, the Emperor revealed himself. He created the Space Marines from his own genetic material and led them on the Great Crusade to unify the worlds of Man. This crusade forged the mighty Imperium of Man.'
			9107493, -- LOCDB [9107493] 'The Great Crusade was eventually halted by treason from within in a great civil war known as the Horus Heresy. The usurpers were thwarted, but the Emperor was mortally wounded in the final battle by his traitorous son, Horus, and is now only kept alive by the technology of the Golden Throne. '
			9107409, -- LOCDB [9107409] 'Most humans now worship the Emperor as a God. For the Space Marines, he is more akin to a living ideal -- a father to emulate and obey.'
		},
		icon = 
		{
		},
	},
	{
		title = 	9107410, -- LOCDB [9107410] 'Suspicions Continue to Grow'
		description_text_array =
		{
			9107411, -- LOCDB [9107411] 'During the Dark Crusade the Blood Ravens annihilated an entire regiment of the Imperial Guard for refusing to abandon their mission on Kronus, a world the Blood Ravens had unilaterally quarantined. '
			9107412, -- LOCDB [9107412] 'The reasons for the quarantine were never fully explained, and some called the annihilation of the Imperial regiment outright treason. This, combined with the Blood Ravens’ mysterious past, has caused some elements of the Imperial government to view the Blood Ravens with suspicion. '
			9107494, -- LOCDB [9107494] 'The commanding officer of the Kronus expedition was Davian Thule.'
		},
		icon = 
		{
		},
	},
	{
		title = 	9107413, -- LOCDB [9107413] 'The Battle of Hadrian'
		description_text_array =
		{
			9107414, -- LOCDB [9107414] '%1COMMANDER% earned his promotion to Force Commander by leading a squad deep behind enemy lines to destroy the massive artillery batteries that were stalling the campaign to retake planet Hadrian.'
			9107495, -- LOCDB [9107495] 'The objective was inaccessible to both Thunderhawk and Drop Pod, and required weeks of careful movement through mountain passes and surgical ground strikes that did not alert the enemy to his position.'
			9107496, -- LOCDB [9107496] 'The fact that %1COMMANDER% was able to destroy the artillery batteries and bring his entire squad back unscathed was considered nothing short of miraculous.'
		},
		icon = 
		{
		},
	},
	{
		title = 	9107416, -- LOCDB [9107416] 'Tarkus Terminatus'
		description_text_array =
		{
			9107417, -- LOCDB [9107417] 'Tarkus earned Terminator Honors during the assault on the Necron Catacombs under Thur’Abis Plateau. Tarkus was among those selected to protect the detonator that brought the entire cavern down on top of the Necrons.'
			9107985, -- LOCDB [9107985] 'Tarkus managed to neutralize a Tomb Spyder in the critical moments while the detonator was being armed. With no weapon that could damage the Necron horror, Tarkus rushed into the face of the Tomb Spyder and held a frag grenade in a joint near the head. '
			9107986, -- LOCDB [9107986] 'The explosion crippled the Tomb Spyder, but resulted in the loss of Tarkus' left hand and forearm (since replaced by cybernetics) and the heavy scarring on the left side of his face. '
			9107987, -- LOCDB [9107987] 'This was a turning point in the battle and gave the detonator time to go into failsafe mode.'
		},
		icon = 
		{
		},
	},
	{
		title = 	9107419, -- LOCDB [9107419] 'Cyrus of the Deathwatch'
		description_text_array =
		{
			9107420, -- LOCDB [9107420] 'Cyrus served in the Deathwatch for nearly two centuries. While his unorthodox tactics had been considered eccentric by his fellow Blood Ravens, they were fully embraced by his squad mates in the Deathwatch.'
			9107421, -- LOCDB [9107421] 'Cyrus ended his tour of duty with the Deathwatch after the battle of Victoria Primus, and he was determined to bring all that he had learned back to the Blood Ravens.'
			9107988, -- LOCDB [9107988] 'After decades of resistance from Captain Indrick Boreale, Cyrus finally requested to serve under Captain Davian Thule. Thule was quickly convinced and soon began to implement many of Cyrus's tactics as a matter of course. '
			9107989, -- LOCDB [9107989] '"Cyrus is no fool," Thule would often remark. "There is a reason he chooses to remain a Scout Sergeant. In a few centuries there will not be a Blood Raven left who hasn't been molded by this thinking."'
		},
		icon = 
		{
		},
	},
	{
		title = 	9107423, -- LOCDB [9107423] 'The Devastator of Victory Bay'
		description_text_array =
		{
			9107424, -- LOCDB [9107424] 'Avitus grew up in a small settlement on Typhon that was terrorized by a corrupt regiment of the Imperial Guard. The settlement was extorted to near starvation by unofficial taxes and penalties, and often served as a target of the Guardsmen’s wanton cruelty.'
			9107990, -- LOCDB [9107990] 'Avitus's hatred spiked to new heights during the battle of Victory Bay on Kronus. Cracking the Guardsmen's defenses was a savage and bloody affair, which cost the lives of two of Avitus's squad mates. '
			9107425, -- LOCDB [9107425] 'Avitus has since seen Guardsmen as traitors and weaklings.'
		},
		icon = 
		{
		},
	},
	{
		title = 	9107427, -- LOCDB [9107427] 'From the Gutters'
		description_text_array =
		{
			9107991, -- LOCDB [9107991] 'Thaddeus is the first Blood Raven to be recruited from Meridian in nearly 700 years. The Blood Ravens had stopped gathering recruits from Meridian in recent centuries because all prospects from the planet had perpetually failed to place in the blood trials.'
			9107992, -- LOCDB [9107992] 'All of this changed when Davian Thule put Thaddeus forward as a candidate 80 years ago. Some have expressed doubt that a native of Meridian has the mental toughness to be a Blood Raven, but Thaddeus has continued to prove himself on the battlefield time and time again.'
		},
		icon = 
		{
		},
	},
	{
		title = 	9107430, -- LOCDB [9107430] 'Fall from Grace'
		description_text_array =
		{
			9107431, -- LOCDB [9107431] 'Davian Thule was once considered to be among the greatest of the Blood Ravens. His brilliant command of the Kronus campaign should have vaulted him even higher into the inner circle of Blood Raven leadership, but instead led to a falling out with the Blood Ravens' Chapter Master.'
			9107432, -- LOCDB [9107432] 'Many have speculated that Thule’s fall from grace was because of his unwillingness to vilify the Imperial Guardsmen slain on Kronus, a fact that was noted in the Imperial investigation on the matter. There are darker rumors, though, of secrets discovered on Kronus -- secrets that shook Thule’s faith in the Blood Ravens and caused him to withdraw from Chapter politics.'
		},
		icon = 
		{
		},
	},
	{
		title = 	9107433, -- LOCDB [9107433] 'Tartarus'
		description_text_array =
		{
			9107434, -- LOCDB [9107434] 'The Tartarus campaign is considered by many to be Gabriel Angelos's greatest triumph and a resounding victory for the Chapter. But the results of the campaign have been aggressively questioned by elements of the Inquisition.'
			9107435, -- LOCDB [9107435] 'These doubters contend that the extent of Isador Akios’s treason is still not fully known, that his treason may have spread to other elements of the Chapter. They also question Gabriel’s decision to destroy the Maledictum and claim that he was a dupe either of the Eldar or of more sinister powers.'
		},
		icon = 
		{
		},
	},
	{
		title = 	9107436, -- LOCDB [9107436] 'The Peril of Youth'
		description_text_array =
		{
			9107437, -- LOCDB [9107437] '%1COMMANDER% is the youngest Blood Raven ever to achieve the rank of Force Commander. Many in the Chapter are impressed by %1COMMANDER%’s prowess, but there are also those who feel the promotion was premature.'
			9107993, -- LOCDB [9107993] 'The promotion was mandated by the Chapter Master himself and was sustained in the face of considerable resistance, in spite of the fact that the Chapter Master had never met %1COMMANDER% in person. '
			9107994, -- LOCDB [9107994] 'Records later revealed that the promotion was first decreed a full year before the Hadrian campaign began and simply did not go into effect until after the Hadrian campaign had concluded.'
		},
		icon = 
		{
		},
	},
	{
		title = 	9107497, -- LOCDB [9107497] 'The Hive Mind'
		description_text_array =
		{
			9107498, -- LOCDB [9107498] 'A Tyranid Hive Fleet is controlled by a terrible communal intelligence known as the Hive Mind. The largest of the hive ships serves as the repository of this mind, but it spreads to every Tyranid.'
			9107499, -- LOCDB [9107499] 'Individuality does not exist among the Tyranids. All serve the hungers of the hive.'
		},
		icon = 
		{
		},
	},
	{
		title = 	9107504, -- LOCDB [9107504] 'Legendary Blood Ravens'
		description_text_array =
		{
			9107505, -- LOCDB [9107505] 'Chapter histories speak of the "Great Father" Azariah Vidya, first Blood Raven to combine the roles of Chapter Master and Chief Librarian. No official records exist of any leaders before him.'
			9107506, -- LOCDB [9107506] 'Apocryphal stories recur, however, about four great Blood Ravens who led the Chapter at an even earlier date. One is Alexian, the mightiest warrior in the chapter’s history.'
			9107507, -- LOCDB [9107507] 'Some say Alexian and Azariah are one and the same, and that their legends are simply mixed together by the millennia.'
		},
		icon = 
		{
		},
	},
	{
		title = 	9107508, -- LOCDB [9107508] 'The Penitent'
		description_text_array =
		{
			9107509, -- LOCDB [9107509] 'Tarkus was once convinced by an Eldar Ranger to lead his squad straight into an ambush. The Ranger had approached him under the guise of a truce and had proposed they temporarily work together against their common enemy, the Orks.'
			9107510, -- LOCDB [9107510] 'Tarkus was the sole survivor of the ambush and has never forgiven himself for the deaths of his men. The fact that the deceitful Eldar Ranger escaped the fight also weighs upon him and kindles a deep hatred for the Eldar that has not lessened with time. '
		},
		icon = 
		{
		},
	},
	{
		title = 	9107512, -- LOCDB [9107512] 'The Lessons of Cyrus'
		description_text_array =
		{
			9107513, -- LOCDB [9107513] 'A scout, an assassin and a warrior, Cyrus is above all a teacher. He remains a scout sergeant in order to train the young initiates who are to become Blood Ravens.'
			9107514, -- LOCDB [9107514] 'Cyrus is a demanding sergeant, but he is also patient and fair-minded, and these traits inspire fanatical devotion from his initiates. Among Blood Raven scouts, a simple nod of approval from Cyrus is said to mean more than a dozen commendations from the Chapter. '
		},
		icon = 
		{
		},
	},
	{
		title = 	9107516, -- LOCDB [9107516] 'The Burning Abbey'
		description_text_array =
		{
			9107996, -- LOCDB [9107996] 'Avitus and Davian Thule have served together since the two of them were Scout Marines centuries ago. Even when they were initiates, Thule was one of the few Marines exempt from Avitus's disdain, and that actually managed to earn his grudging respect.'
			9107517, -- LOCDB [9107517] 'Avitus was among the first Blood Ravens to arrive to support Davian Thule in his assault on the Black Abbey of Vespa. He was also one of the last to leave the abbey, having made sure the foul place burned entirely to the ground.'
			9107997, -- LOCDB [9107997] 'Thule often remarked that he would have been no match for Morgana without Avitus's suppressive fire.'
		},
		icon = 
		{
		},
	},
	{
		title = 	9107519, -- LOCDB [9107519] 'Champion of Legis'
		description_text_array =
		{
			9107520, -- LOCDB [9107520] 'During the Legis Uprising, Meridian's largest spire-city was thrown into anarchy, and adepts of various strata each declared themselves the preeminent authority and went to war.'
			9107521, -- LOCDB [9107521] 'A Blood Raven squad deployed into the worst of the chaos to secure Chapter gene-records put at risk. During this deployment, Captain Thule spotted a young Thaddeus holding off maddened rioters.'
			9107998, -- LOCDB [9107998] 'Seeing one man standing against hundreds inspired Thule. He recruited the courageous youth to be a Blood Raven.'
		},
		icon = 
		{
		},
	},
	{
		title = 	9107522, -- LOCDB [9107522] 'Davian Thule and Kasr Sonnen'
		description_text_array =
		{
			9107523, -- LOCDB [9107523] 'Just prior to the Kronus Campaign, Davian Thule led the Blood Ravens' 4th company to the fortress world of Cadia to fight off a large incursion by the traitor legions.'
			9107524, -- LOCDB [9107524] 'Thule’s arrival was spectacularly timed, and his troops dropped right into the midst a massive column of Iron Warriors bound for the city of Kasr Sonnen. Heavy losses were inflicted on the Iron Warriors, and they were thrown into disarray.'
			9107999, -- LOCDB [9107999] 'When word was received that the Black Legion was en route to support the Iron Warriors, Thule was ordered to immediately withdraw by the Blood Ravens' Chapter Master. Thule initially ignored the order and continued to press his advantage, but finally relented when the Chapter Master threatened to relieve him of his command. The Cadian Regiments withstood the second assault alone, but losses were heavy.'
		},
		icon = 
		{
		},
	},
	{
		title = 	9107525, -- LOCDB [9107525] 'Cyrene'
		description_text_array =
		{
			9107526, -- LOCDB [9107526] 'The garden world of Cyrene was once the pride of Sub-Sector Aurelia and the Blood Ravens' most important recruiting world. Gabriel Angelos was born and raised on Cyrene and was recruited to the Blood Ravens when he triumphed in the Blood Trials.'
			9107527, -- LOCDB [9107527] 'A few centuries ago, there were rumors that the nobles of Cyrene were plotting treason against the Emperor himself. The Inquisition caught wind of these rumors and eventually exterminated the entire planet as an example to neighboring sectors.'
			9107528, -- LOCDB [9107528] 'Gabriel is now among the last few survivors of Cyrene.'
		},
		icon = 
		{
		},
	},
	{
		title = 	9107529, -- LOCDB [9107529] 'The Primarchs'
		description_text_array =
		{
			9107530, -- LOCDB [9107530] 'The Primarchs were warriors created directly from the genetic template of the Emperor himself. Standing nearly ten feet in height, with superhuman strength, speed and mental capacity, the Primarchs were second only to their father in glory and might.'
			9108001, -- LOCDB [9108001] 'The original Space Marine legions were created from the genetic templates of the individual Primarchs, and all Space Marine Chapters can trace their lineage to one or more of the Primarchs.'
			9108002, -- LOCDB [9108002] 'The Blood Ravens are an exception to this rule. They have no knowledge of their Primarch, and their records only date back to the 36th millennium.'
		},
		icon = 
		{
		},
	},
	{
		title = 	9107531, -- LOCDB [9107531] 'The Golden Throne'
		description_text_array =
		{
			9107532, -- LOCDB [9107532] 'The Emperor has sat immobile on his Golden Throne for ten thousand years. Imperial authorities, however, insist that his spirit remains potent and reaches out across the Galaxy to guide his followers.'
			9108003, -- LOCDB [9108003] 'Enemies of the Imperium insist that the Emperor is actually dead and contemptuously refer to him as the "Carrion Lord" and the "Corpse God."'
			9108004, -- LOCDB [9108004] 'It is said that a thousand psykers are sacrificed daily to keep the Emperor's mind and body alive.'
		},
		icon = 
		{
		},
	},

	{
		title = 	9109416, -- LOCDB [9109416] 'Secure Those Strategic Assets'
		description_text_array =
		{
			9109417, -- LOCDB [9109417] 'Most regions contain special strategic assets which you can secure to gain valuable benefits.  This includes unique wargear and abilities, bonuses when completing missions, and extra mission intelligence. '
			9109418, -- LOCDB [9109418] 'There are three types of these assets: Communication Arrays, Automated Foundries, and Imperial Shrines.'
			9109419, -- LOCDB [9109419] 'When you secure a strategic assets, the Strike Cruiser deploys generators to power them. These generators remain on the ground after you leave and keep the asset secured.'
			9109420, -- LOCDB [9109420] 'The Strike Cruiser can only provide one set of generators per deployment, however. To secure more, you need to return to the map on a later deployment. '
			9109421, -- LOCDB [9109421] 'The enemy may launch an attack on your secured assets, prompting a distress signal for a Defense Mission. Complete these missions before they expire to ensure you do not lose the assets and the benefits it provides. '
		},
		icon = 
		{
		[[data:UI\textures\neutral\portraits\stratagem_intel]],
		[[data:UI\textures\neutral\portraits\stratagem_supply]],
		[[data:UI\textures\neutral\portraits\stratagem_psycher]],
		},
	},

	{
		title = 	9109422, -- LOCDB [9109422] 'Strategic Assets = Killer Wargear'
		description_text_array =
		{
			9109423, -- LOCDB [9109423] 'The Rosarius, Locator Beacon, and Signum are wargear items granted the first time you secure an Imperial Shrine, Automated Foundry, or Communication Array, respectively.'
			9109424, -- LOCDB [9109424] 'Each item grants a powerful ability, but they all have limited uses per deployment. Capture more of the corresponding strategic asset on the planet you are orbiting to have more uses when launching a mission. '
			9109425, -- LOCDB [9109425] 'For example, the Signum grants the Artillery Strike ability. Capturing Communication Arrays on Calderis will boost the number of artillery strikes you can use when on Calderis.'
		},
		icon = 
		{
			[[data:UI\textures\space_marines\icon_wargear\sm_acc_rosarius]],
			[[data:UI\textures\space_marines\icon_wargear\sm_acc_locator_beacon]],
			[[data:UI\textures\space_marines\icon_wargear\sm_acc_signum]],
		},
	},

	{
		title = 	9107280, -- LOCDB [9107280] 'Communication Arrays'
		description_text_array =
		{
			9109426, -- LOCDB [9109426] 'Communication Arrays grant you many benefits:'
			9109427, -- LOCDB [9109427] 'They grant you the Signum, an item that allows you to call in disruptive Artillery Strikes.  The more secured Arrays on a planet, the more uses per deployment.  '
			9109428, -- LOCDB [9109428] 'They provide bonus intelligence, such as enemy weaknesses. This intel appears on mission briefings if you control Arrays on that planet. '
			9109429, -- LOCDB [9109429] 'They provide additional ordnance during Defense mission. The more Arrays you have secured across the sector, the more special abilities you will have during Defense missions. '
		},
		icon = 
		{
		[[data:UI\textures\neutral\portraits\stratagem_intel]],
		},
	},

	{
		title = 	9107279, -- LOCDB [9107279] 'Imperial Shrines'
		description_text_array =
		{
			9109430, -- LOCDB [9109430] 'Imperial Shrines grant you many benefits:'
			9109431, -- LOCDB [9109431] 'They grant you the Rosarius, an item that allows you to make all your squads temporarily invincible.  The more secured Shrines on a planet, the more uses per deployment. '
			9109432, -- LOCDB [9109432] 'They slow the rate at which aliens are able to infest that planet, allowing you to better defend the sector.'
			9109433, -- LOCDB [9109433] 'If you secure enough Shrines across all planets, you receive bonus experience upon completing each mission. '
		},
		icon = 
		{
		[[data:UI\textures\neutral\portraits\stratagem_psycher]],
		},
	},

	{
		title = 	9107281, -- LOCDB [9107281] 'Automated Foundries'
		description_text_array =
		{
			9109434, -- LOCDB [9109434] 'Automated Foundries grant you many benefits:'
			9109435, -- LOCDB [9109435] 'They grant you the Locator Beacon, an item that allows you to deploy turrets during missions.  The more secured Foundries on a planet, the more uses per deployment.'
			9109436, -- LOCDB [9109436] 'They contribute to your chance to earn additional deployments in a solar day -- a bonus appears on the debrief screen at the end of a successful mission.'
			9109437, -- LOCDB [9109437] 'If you secure enough Foundries across all planets, the requirements for earning extra deployments is reduced for all missions. '
		},
		icon = 
		{
		[[data:UI\textures\neutral\portraits\stratagem_supply]],
		},
	},
}
