-- load up some util functions
dofile("dev/autoutil.lua")
dofile("dev/autoentityinfo.lua")
dofile("dev/debug_spawn.lua")
dofile("dev/aidebug.lua")


-- cache value: is this an MP game
 g_isMPGame = (isMultiPlayerGametype == nil or isMultiPlayerGametype())

 if (g_isMPGame) then
	print( "This is an MP game" )
else
	print( "This is not an MP game" )
end
 

function ShowFXBoundVolumes()
	viz_toggle_cullsphere()
	viz_enable_cullspherefx(true)
	viz_enable_cullsphereobject(false)
end

function ShowFXOverdraw( bEnable )
	
	fx_usedebugshader(bEnable)
	-- turn off postprocessing when overdraw is enabled because it gives misleading (overbright) results
	postprocess_toggle_blur(not bEnable)
	postprocess_toggle_exposure(not bEnable)

end

-------------------------------------------
-- DEMO Menu toggle to Hide UI ------------
-------------------------------------------
hideUI_IsEnabled = true
function hideUI_GetEnabled()

	return hideUI_IsEnabled

end


function hideUI_SetEnabled(enabled)

	game_showui(enabled)
	if (enabled) then
		cursor_show()
	else
		cursor_hide()
		dr_clear("buildnumber")
		Game_SetSystemShowInfoMessage(Loc_Empty())
	end
	hideUI_IsEnabled = enabled
	
end
-------------------------------------------

bind("SHIFT+F11", [[UI_LoadTaskbar( "DATA:game/taskbar.lua" )]] )
bind("SHIFT+F12", [[UI_LoadTaskbar( "DATA:game/taskbar2.lua" )]] )
bind("SHIFT+PAGEUP", "RulesProfiler_ScrollUp(3)")
bind("SHIFT+PAGEDOWN", "RulesProfiler_ScrollDown(3)")

if (not g_isMPGame) then
	bind("CONTROL+SHIFT+INSERT", "superscreenshot()" )
	bind("CONTROL+J", "jasonFXSpawnUnits()")
	
	if (getgametype() == GT_SINGLEPLAYER_CAMPAIGN) then
		bind("SHIFT+Q", "Scar_DoString( \"Rule_EndQuest()\" )")
		bind("ALT+0", "Scar_DoString( \"abilities_UberKillMode()\" )")
        bind("ALT+1", "Scar_DoString( \"Player_AddResource(ScarGameBackend.GetHostPlayer(), RT_Requisition, 100)\" )")
        bind("ALT+2", "Scar_DoString( \"Player_AddResource(ScarGameBackend.GetHostPlayer(), RT_Power, 100)\" )")
        bind("Alt+3", "Scar_DoString( \"FOW_RevealAll()\" )")
        bind("Alt+4", "Scar_DoString( \"FOW_UnRevealAll()\" )")
	end
end


------------------------------------------------
-- Reserved for NIS shortcut
--
-- ALT+1
-- ALT+2
-- ALT+3
-- ALT+4
-- ALT+5
-- ALT+6
-- ALT+7
-- ALT+8
-- ALT+9
-- ALT+0
------------------------------------------------


------------------------------------------------
-- If an item below has a NO_MP label on it, that
-- means it is not available in MP games. This
-- is here to prevent users from using commands
-- that might alter the simulation which would 
-- cause a sync error
------------------------------------------------
NO_MP = 1


function HealEntireTeam()
	if not Game_HasLocalPlayer() then
		return
	end
	
	p = Game_GetLocalPlayer()
	squads = Player_GetSquads( p )
	function _DoHeal( gid, idx, sid )
		Squad_SetHealth( sid, 1.0 )		
	end
	SGroup_ForEachEx( squads, _DoHeal, true, false )
end

------------------------------------------------
--
--

function animator_toggle( mode )

	animator_debug_mask(mode) 
	
end

function get_animatorDebugLock()
	return s_animatorDebugLock ~= 0
end

function get_animatorDebugMask()
	return s_animatorDebugMask
end

function set_animatorDebugDisabled()
	animator_debug_mask(0)
	if ( s_animatorDebugLock == 1 ) then
		animator_debug_lock_selection()
	end
	animator_debug_enable(false)
end

------------------------------------------------
--
--

function Weapon_Debug()
	Weapon_ScatterInfo()
	Weapon_Info()
	Weapon_Tracking()
	Weapon_AttackRadii()
end


------------------------------------------------
--
--
cheatmenu_spawnenemyability = false
function GetAbilityMenuTable()
	local ability_menu = {}
	
	local ability_types =
	{
		"abilities\\reinforcements_ability",
		"abilities\\attrition_ability",
		"abilities\\resource_power_player_default",
		"abilities\\resource_power_upgrade",
		"abilities\\resource_power_upgrade_advanced",
		"abilities\\resource_power_upgrade_more_advanced",
		"abilities\\resource_power_player_default",
		"abilities\\resource_power_upgrade",
		"abilities\\resource_power_upgrade_advanced",
	}   
	
	for i=1, table.getn(ability_types) do
		local name = ability_types[i]
		if World_IsPropertyBagGroupValid( name ) then
			local abilityid = World_GetPropertyBagGroupID( name )
			table.insert(ability_menu, newelement( name, "", "MousedAbility(\""..abilityid.."\", cheatmenu_spawnenemyability)", NO_MP ))
		end
	end
	
	-- sort the table alphabetically
	local function sortabilities(a,b) 
		return a.name<b.name 
	end

	table.sort(ability_menu, sortabilities)
	
	return ability_menu
end

function CheatMenuDropWargearAtMousePositionForCurrentPlayer(wargearName)

	local commandString = [[World_DropWargearAtMousePositionForCurrentPlayer(']]
	commandString = commandString..wargearName
	commandString = commandString..[[')]]
	
	Scar_DoString(commandString)
	
end 

------------------------------------------------
--

function GetWeaponHitMenuTable()

	local weaponhit_menu = 
	{
		-- add common weapon hit here
		--
		-- number in the beginning so they would sorted correctly in the list
		-- newelement( "01. Eldar Shuriken Catapult Cannon", "", "WeaponHitMousedEntity(World_GetPropertyBagGroupID( 'weapons/weapon/eld_shuriken_catapult_shuriken_cannon' ), false)", NO_MP ),
	}
	
	-- find the number of weapon bags
	local count = World_GetPropertyBagGroupCount( PBG_Weapon )
	local id = 0

	-- fill out the table with the all weapon bags
	for id = 0, count-1 do
		local name = World_GetPropertyBagGroupPathName( PBG_Weapon, id )
		
		name = string.lower(name)
		name = string.gsub(name, "\\", "/")
		
		local a,b = string.find( name, "/" ) 
		
		while (b ~= nil) do 
			name = string.sub( name, b + 1 )
			a, b = string.find( name, "/" )
		end
		
		table.insert(weaponhit_menu, newelement( name, "", "WeaponHitMousedEntity("..id..")", NO_MP ))
	end

			-- sort the table alphabetically
	table.sort(weaponhit_menu, function(a,b) return a.name<b.name end)

	return weaponhit_menu	
end

------------------------------------------------
--

function CheatMenuDropSlotItemOnSelectedSquads(slotitemName)

	local cmdStr = [[if (Misc_GetMouseOverEntity() ~= nil and Entity_GetSquad(Misc_GetMouseOverEntity()) ~= nil) then ]]
	cmdStr = cmdStr .. [[Squad_GiveSlotItem(Entity_GetSquad(Misc_GetMouseOverEntity()),Util_GetEntityBlueprintID(']]..slotitemName..[[')) ]]
	
	cmdStr = cmdStr .. [[ end]]
	
	Scar_DoString(cmdStr)	
end 

function GetWargearDropTable( filter )

	local wargear_menu = {}
	-- find the number of squad blueprint bags
	local count = World_GetPropertyBagGroupCount( PBG_Wargear )
	local id = 0
	local index = 1
	
	-- fill out the table with the all squad blueprint bags
	for id = 0, count-1 do
		local name = World_GetPropertyBagGroupPathName( PBG_Wargear, id )
		
		name = string.lower(name)
		
		local a,b = string.find( name, filter )
		
		-- only allow certain types of entities on the list
		if ( b ~= nil ) then
			local shortname = string.sub( name, b + 1 )
			local newname = string.gsub(name,"\\","/")
			
			wargear_menu[index] = newelement( shortname, "", [[CheatMenuDropWargearAtMousePositionForCurrentPlayer(']]..newname..[[')]], NO_MP );
			index = index + 1
		end
		
	end

	-- sort the table alphabetically
	table.sort(wargear_menu, function(a,b) return a.name<b.name end)
	
	return wargear_menu
	
end

function GetSlotItemDropTable( filter )

	local slotitem_menu = {}
	-- find the number of squad blueprint bags
	local count = World_GetPropertyBagGroupCount( PBG_SlotItem )
	local id = 0
	local index = 1
	
	-- fill out the table with the all squad blueprint bags
	for id = 0, count-1 do
		local name = World_GetPropertyBagGroupPathName( PBG_SlotItem, id )
		
		name = string.lower(name)
		
		local a,b = string.find( name, filter )
		
		-- only allow certain types of entities on the list
		if ( b ~= nil ) then
			local shortname = string.sub( name, b + 1 )
			local newname = string.gsub(name,"\\","/")
			
			slotitem_menu[index] = newelement( shortname, "", [[CheatMenuDropSlotItemOnSelectedSquads(']]..newname..[[')]], NO_MP );
			index = index + 1
		end
		
	end

	-- sort the table alphabetically
	table.sort(slotitem_menu, function(a,b) return a.name<b.name end)
	
	return slotitem_menu
	
end


function CheatMenuGrantWargearOnSelectedSquads(wargearName)

	local commandString = [[SGroup_EquipWargearOnSelectedSquads(']]
	commandString = commandString..wargearName
	commandString = commandString..[[')]]
	
	Scar_DoString(commandString)
	
end

function GetWargearGrantTable( filter )

	local wargear_menu = {}
	-- find the number of squad blueprint bags
	local count = World_GetPropertyBagGroupCount( PBG_Wargear )
	local id = 0
	local index = 1
	
	-- fill out the table with the all squad blueprint bags
	for id = 0, count-1 do
		local name = World_GetPropertyBagGroupPathName( PBG_Wargear, id )
		
		name = string.lower(name)
		
		local a,b = string.find( name, filter )
		
		-- only allow certain types of entities on the list
		if ( b ~= nil ) then
			local shortname = string.sub( name, b + 1 )
			local newname = string.gsub(name,"\\","/")
			
			wargear_menu[index] = newelement( shortname, "", [[CheatMenuGrantWargearOnSelectedSquads(']]..newname..[[')]], NO_MP );
			index = index + 1
		end
		
	end

	-- sort the table alphabetically
	table.sort(wargear_menu, function(a,b) return a.name<b.name end)
	
	return wargear_menu
	
end

------------------------------------------------
--
--
function GetSquadIDList( filter )

	local squadIDList = {}
	-- find the number of squad blueprint bags
	local count = World_GetPropertyBagGroupCount( PBG_SquadProperties )
	local id = 0
	
	-- fill out the table with the all squad blueprint bags
	for id = 0, count-1 do
		local name = World_GetPropertyBagGroupPathName( PBG_SquadProperties, id )
		
		name = string.lower(name)
		
		local a,b = string.find( name, filter )
		
		-- only allow certain types of entities on the list
		if ( b ~= nil ) then
			table.insert(squadIDList, id)
		end
		
	end
	
	return squadIDList
	
end


------------------------------------------------
--
--
function GetSpawnSquadMenuTable( filter )

	local squadblueprint_menu = {}
	-- find the number of squad blueprint bags
	local count = World_GetPropertyBagGroupCount( PBG_SquadProperties )
	local id = 0
	local index = 1
	
	-- fill out the table with the all squad blueprint bags
	for id = 0, count-1 do
		local name = World_GetPropertyBagGroupPathName( PBG_SquadProperties, id )
		
		name = string.lower(name)
		
		local a,b = string.find( name, filter )
		
		-- only allow certain types of entities on the list
		if ( b ~= nil ) then
			local newname = string.sub( name, b + 1 )
			squadblueprint_menu[index] = newelement( newname, "", "SpawnSquadAtMouse("..id..")", NO_MP );
			index = index + 1
		end
		
	end

	-- sort the table alphabetically
	table.sort(squadblueprint_menu, function(a,b) return a.name<b.name end)
	
	return squadblueprint_menu
	
end

------------------------------------------------
--
--
function GetSpawnEntityMenuTable( filter )

	local entityblueprint_menu = {}
	
	-- find the number of squad blueprint bags
	local count = World_GetPropertyBagGroupCount( PBG_EntityProperties )
	local id = 0
	local offset = table.getn(entityblueprint_menu)
	local index = offset+1
	
	-- fill out the table with the all squad blueprint bags
	for id = 0, count-1 do
		local name = World_GetPropertyBagGroupPathName( PBG_EntityProperties, id )
		
		name = string.lower(name)
		
		local a,b = string.find( name, filter )
		
		
		-- only allow certain types of entities on the list
		if ( b ~= nil ) then
			local newname = string.sub( name, b + 1 ) 
			entityblueprint_menu[index] = newelement( newname, "", "SpawnEntityAtMouse("..id..")", NO_MP )
			index = index + 1
			
		end
	end

	-- sort the table alphabetically
	table.sort(entityblueprint_menu, function(a,b) return a.name<b.name end)
	
	return entityblueprint_menu
	
end

------------------------------------------------
--
--
function GetSpawnEBPMenu( filter, filterb )

	local entityblueprint_menu = {}

	-- find the number of squad blueprint bags
	local count = World_GetPropertyBagGroupCount( PBG_EntityProperties )
	local id = 0
	local index = 1
	
	-- fill out the table with the all squad blueprint bags
	for id = 0, count-1 do
		local name = World_GetPropertyBagGroupPathName( PBG_EntityProperties, id )
		
		name = string.lower(name)
		
		local a,b = string.find( name, filter )
		
		if (a==nil and filterb) then
			a,b = string.find( name, filterb )
		end
		
		-- only allow certain types of entities on the list
		if ( b ~= nil ) then
			local newname = string.sub( name, b + 1 )
			entityblueprint_menu[index] = newelement( newname, "", "SpawnEntityAtMouse("..id..")", NO_MP )
			index = index + 1
		end
	end

	-- sort the table alphabetically
	table.sort(entityblueprint_menu, function(a,b) return a.name<b.name end)
	
	return entityblueprint_menu
	
end

function GetSpawnEBPMenuWithCover( filter, bCoverCheck )

	local entityblueprint_menu = {}

	-- find the number of squad blueprint bags
	local count = World_GetPropertyBagGroupCount( PBG_EntityProperties )
	local id = 0
	local index = 1
	
	-- fill out the table with the all squad blueprint bags
	for id = 0, count-1 do
		local name = World_GetPropertyBagGroupPathName( PBG_EntityProperties, id )
		
		name = string.lower(name)
		
		local a,b = string.find( name, filter )
		
		-- only allow certain types of entities on the list
		if ( b ~= nil ) then
			
			local hasCover = Entity_IsEBPObjCover( id );
			
			if (hasCover == bCoverCheck) then
				local newname = string.sub( name, b + 1 )
				entityblueprint_menu[index] = newelement( newname, "", "SpawnEntityAtMouse("..id..")", NO_MP )
				index = index + 1
			end
			
		end
	end

	-- sort the table alphabetically
	table.sort(entityblueprint_menu, function(a,b) return a.name<b.name end)
	
	return entityblueprint_menu
	
end

function TakeSuperScreenShot()

	if ( not g_isMPGame) then
		togglescreenshothelp( false )
		Misc_SuperScreenshot()
		togglescreenshothelp( true )
	else
		Misc_SuperScreenshot()
	end
	
end

function SpawnSquadsMatchingFilter(filter)
	local idTable = GetSquadIDList(filter)
	for key, id in pairs(idTable) do
		SpawnSquadAtMouse(id)
	end
end

function CreateAIMenu()

	local ai_table = {}
	local ai_index = 1
	
	--ai_table[1] = newelement( "Toggle All AI", "", "AI_EnableAll(false)" )
	
	local pcount = World_GetPlayerCount()
	for pi=1, pcount do
		
		local playerid = World_GetPlayerAt( pi )
		
		if (AI_IsAIPlayer( playerid )==true) then
			ai_table[ai_index] = CreateAISubMenu( pi )
			ai_index = ai_index + 1
		end
	end
	
	return ai_table
end

function CreateAISubMenu( playerId )

	return 
	{
		name = "AI"..Player_GetID(World_GetPlayerAt(playerId)).." LOD:"..AI_GetDifficulty(World_GetPlayerAt(playerId)),
		type = SubMenu,
		
		SubMenuItems = 
		{
			{
				name = "Enable AI",
				type = Variable,
				get = "AI_IsEnabled(World_GetPlayerAt("..playerId.."))",
				set = "AI_Enable(World_GetPlayerAt("..playerId.."), %s)",
				var_type = Boolean,
			},
			{
				name = "Components",
				type = SubMenu,
				SubMenuItems = 
				{
					{
						name = "COMPONENT_Attacking",
						type = Variable,
						get = "AI_IsComponentEnabled(World_GetPlayerAt("..playerId.."), COMPONENT_Attacking)",
						set = "AI_EnableComponent(World_GetPlayerAt("..playerId.."), %s, COMPONENT_Attacking)",
						var_type = Boolean,
					},
					{
						name = "COMPONENT_Defending",
						type = Variable,
						get = "AI_IsComponentEnabled(World_GetPlayerAt("..playerId.."), COMPONENT_Defending)",
						set = "AI_EnableComponent(World_GetPlayerAt("..playerId.."), %s, COMPONENT_Defending)",
						var_type = Boolean,
					},
					{
						name = "COMPONENT_ForwardDefending",
						type = Variable,
						get = "AI_IsComponentEnabled(World_GetPlayerAt("..playerId.."), COMPONENT_ForwardDefending)",
						set = "AI_EnableComponent(World_GetPlayerAt("..playerId.."), %s, COMPONENT_ForwardDefending)",
						var_type = Boolean,
					},
					{
						name = "COMPONENT_Resourcing",
						type = Variable,
						get = "AI_IsComponentEnabled(World_GetPlayerAt("..playerId.."), COMPONENT_Resourcing)",
						set = "AI_EnableComponent(World_GetPlayerAt("..playerId.."), %s, COMPONENT_Resourcing)",
						var_type = Boolean,
					},
					{
						name = "COMPONENT_BuildUnits",
						type = Variable,
						get = "AI_IsComponentEnabled(World_GetPlayerAt("..playerId.."), COMPONENT_BuildUnits)",
						set = "AI_EnableComponent(World_GetPlayerAt("..playerId.."), %s, COMPONENT_BuildUnits)",
						var_type = Boolean,
					},
					{
						name = "COMPONENT_BuildStructures",
						type = Variable,
						get = "AI_IsComponentEnabled(World_GetPlayerAt("..playerId.."), COMPONENT_BuildStructures)",
						set = "AI_EnableComponent(World_GetPlayerAt("..playerId.."), %s, COMPONENT_BuildStructures)",
						var_type = Boolean,
					},
					{
						name = "COMPONENT_BuildResearch",
						type = Variable,
						get = "AI_IsComponentEnabled(World_GetPlayerAt("..playerId.."), COMPONENT_BuildResearch)",
						set = "AI_EnableComponent(World_GetPlayerAt("..playerId.."), %s, COMPONENT_BuildResearch)",
						var_type = Boolean,
					},
					{
						name = "COMPONENT_BuildAddOns",
						type = Variable,
						get = "AI_IsComponentEnabled(World_GetPlayerAt("..playerId.."), COMPONENT_BuildAddOns)",
						set = "AI_EnableComponent(World_GetPlayerAt("..playerId.."), %s, COMPONENT_BuildAddOns)",
						var_type = Boolean,
					},
					{
						name = "COMPONENT_Securing",
						type = Variable,
						get = "AI_IsComponentEnabled(World_GetPlayerAt("..playerId.."), COMPONENT_Securing)",
						set = "AI_EnableComponent(World_GetPlayerAt("..playerId.."), %s, COMPONENT_Securing)",
						var_type = Boolean,
					},
					{
						name = "COMPONENT_Tactics",
						type = Variable,
						get = "AI_IsComponentEnabled(World_GetPlayerAt("..playerId.."), COMPONENT_Tactics)",
						set = "AI_EnableComponent(World_GetPlayerAt("..playerId.."), %s, COMPONENT_Tactics)",
						var_type = Boolean,
					},
					{
						name = "COMPONENT_Designer",
						type = Variable,
						get = "AI_IsComponentEnabled(World_GetPlayerAt("..playerId.."), COMPONENT_Designer)",
						set = "AI_EnableComponent(World_GetPlayerAt("..playerId.."), %s, COMPONENT_Designer)",
						var_type = Boolean,
					},
				},
			},
			{
				name = "Threat Map",
				type = Variable,
				get = "AI_GetThreatMap()",
				set = "AIThreatMap(World_GetPlayerAt("..playerId.."), %s)",
				var_type = Boolean,
			},
			{
				name = "Threat History",
				type = Variable,
				get = "AI_GetRenderThreatHistory()",
				set = "AIRenderThreatHistory(World_GetPlayerAt("..playerId.."), %s)",
				var_type = Boolean,
			},
			{
				name = "Threat Clumps",
				type = Variable,
				get = "AI_GetRenderClumps()",
				set = "AIRenderClumps(World_GetPlayerAt("..playerId.."), %s)",
				var_type = Boolean,
			},
			{
				name = "Enable Rules Profiler",
				type = Variable,
				get = "RulesProfiler_IsActive()",
				set = "RulesProfiler_Activate(%s)",
				var_type = Boolean,
			},
			newelement( "AI DB View", "", "AIViewEnable(World_GetPlayerAt("..playerId.."))" ),
		},
	}

end

------------------------------------------------
--
--

rawset( _G, "ToggleDamageBuildingHotkeys", nil )

s_damage_hotkey_toggle = 0
function ToggleDamageBuildingHotkeys()
	
	local t = 
	{
		{"CONTROL+1", "DamageBuildingUnderMouse(0,0)"},
		{"CONTROL+2", "DamageBuildingUnderMouse(1,0)"},
		{"CONTROL+3", "DamageBuildingUnderMouse(2,0)"},
		{"CONTROL+4", "DamageBuildingUnderMouse(3,10)"},
		{"CONTROL+5", "DamageBuildingUnderMouse(4,10)"},
		{"CONTROL+6", "DamageBuildingUnderMouse(5,10)"},
	}
	function bindaction( a,b )
		bind( b[1], b[2] )
	end
	function unbindaction( a,b )
		unbind( b[1] )
	end
	
	s_damage_hotkey_toggle = 1-s_damage_hotkey_toggle
	if (s_damage_hotkey_toggle == 1) then
		table.foreach( t, bindaction )
	else
		table.foreach( t, unbindaction )
	end
	
end


function newboolean( label, getstr, setstr )
	return {
		name = label,
		type = Variable,
		get = getstr,
		set = setstr,
		var_type = Boolean,
	}
end

function newelement( txt, hotkey, cmdstring, enableInMP )
	
	-- is enabled if NOT an MP game or if it is, then this is only enabled if the NO_MP flag has not been specified
	local bEnabled = (not g_isMPGame or enableInMP ~= NO_MP);
	
	local tempcmd = nil
	local fullname = txt
	if (bEnabled) then
		-- is there a hotkey define - if so bind it and append it to the name
		if (hotkey ~= nil and hotkey ~= "") then 
			bind( hotkey, cmdstring )
			fullname = fullname .. "......." .. hotkey
		end
		tempcmd = cmdstring
		
	end
			
	return {name = fullname, type = Command, command = tempcmd}
	
end

function newseperator()
	return {name = "----------------",	type = Separator,}
end

function statgraph_item(channel_name, full_name)
	
	local tempname = "Toggle "..channel_name
	if (full_name) then
		tempname = full_name
	end
	
	return {
						name = tempname,
						type = Variable,
						get = "statgraph_channel_get_enabled(\""..channel_name.."\")",
						set = "statgraph_channel_set_enabled(\""..channel_name.."\", %s)",
						var_type = Boolean,
				}
end

SubMenuItems =
{
	-----------------------------
	{
		name = "Basic",
		type = SubMenu,
		
		SubMenuItems = 
		{
			newelement( "Toggle Mod Debug Test (SLOW)", "", "Debug_ToggleDebugTest()" ),
			newelement( "Next Player", "CONTROL+RBRACKET", "next_player(); CheatMenu_Reload()", NO_MP ),
			newelement( "Previous Player", "CONTROL+LBRACKET", "previous_player(); CheatMenu_Reload()", NO_MP ),
			newelement( "Turn off AI", "CONTROL+F3", "aitoggle()", NO_MP ),
			newelement( "Toggle Anim and BVol","CONTROL+F4", "toggle_anim_and_boundvol()" ),
			newelement( "Terrain Overlay", "CONTROL+F5", "toggle_terrainoverlay()" ),
			newelement( "Use Entity Cam", "CONTROL+F7", "useentitycamera(1)" ),
			newelement( "Turn off Entity Cam", "CONTROL+F8", "useentitycamera(0)" ),
			newelement( "Turn off render", "CONTROL+F9", "render()" ),
			newelement( "Expand Cam Height", "CONTROL+C", "Camera_ToggleDebugMode()" ),
			newseperator(),
			newelement( "Weapon Info", "CONTROL+SHIFT+A",  "Weapon_Info()"),
			newelement( "CleanUpTheDead", "ALT+D", "CleanUpTheDead()", NO_MP ),
			newelement( "Knock back mouse over entity", "SHIFT+H",	"Sim_KnockBackMouseOverEntity()", NO_MP),
			newelement( "Teleport Selected", "CONTROL+Z", "TeleportSelected(false)", NO_MP),
			newelement( "Teleport Selected (despawn)", "CONTROL+ALT+Z", "TeleportSelected(true)", NO_MP),
			newelement( "Level Up Squad", "CONTROL+L", "LevelUpMouseOverSquadOrEntity()", NO_MP ),
			newelement( "Drop Artillery", "CONTROL+O", "DropMortarAtMousePosition()", NO_MP),
			newseperator(),
			newelement( "Kill mouse over entity", "CONTROL+D",	"KillMouseOverEntity()", NO_MP),
			newelement( "Kill mouse over entity with ragdoll", "CONTROL+ALT+G",	"KillMouseOverEntityRagdoll()", NO_MP),
			newelement( "Kill mouse over entity with gibbing", "CONTROL+G",	"KillMouseOverEntityGibbing()", NO_MP),
			newelement( "Kill mouse over entity", "CONTROL+SHIFT+Y", "Sim_KillAllEntitiesOnScreen()", NO_MP),
			newelement( "Kill mouse over squad", "CONTROL+SHIFT+K", "KillMouseOverSquad()", NO_MP),
			newelement( "Kill all enemy squads", "ALT+SHIFT+K", "KillAllEnemySquads()", NO_MP),
            newelement( "Kill all non-base entities", "CONTROL+H", "KillAllNonBaseEntities()", NO_MP ),
			newelement( "Damage mouse over entity", "CONTROL+K", "DamageMousedEntity()", NO_MP),
			newelement( "Burn mouse over entity", "CONTROL+B", "BurnMousedEntity()", NO_MP),
			newelement( "Make Wreck mouse over entity", "SHIFT+ALT+D", "MakeWreckMousedEntity()", NO_MP ),
			newelement( "Make Casualty mouse over entity", "SHIFT+D", "MakeCasualtyMousedEntity()", NO_MP ),
			newelement( "Send mouse over entity Out Of Control", "CONTROL+M", "OOCMousedEntity()", NO_MP ),
			newseperator(),
			newelement( "Give morale to squad", "CONTROL+SHIFT+V", "ModifyMoraleMousedSquad(1)", NO_MP),
			newelement( "Take morale from squad", "SHIFT+V", "ModifyMoraleMousedSquad(-1)", NO_MP),
			newelement( "Give suppression to squad", "CONTROL+SHIFT+0", "GiveSuppressionToSquad()", NO_MP),
			newelement( "0 Courage", "CONTROL+N", "ZeroCourage()", NO_MP),
			newelement( "Make squad invunerable", "CONTROL+SHIFT+U", "MakeSquadInvunerable()", NO_MP),
			newelement( "Make player invulnerable (network friendly)", "CONTROL+ALT+U", "MakePlayerInvulnerable()" ),
			newelement( "Give Squad Infinite Energy", "CONTROL+ALT+I", "GiveSquadInfiniteEnergy()"),
			newelement( "Heal entire team", "CONTROL+EQUAL", "HealEntireTeam()"),
			newseperator(),
			newelement( "Toggle Entity Info", "CONTROL+E",	"ToggleEntityInfo()"),
			newelement( "Toggle Entity State Info", "CONTROL+R", "ToggleEntityStateInfo()" ),
			newelement( "Tag Debug Entity", "CONTROL+F12", "TagDebugEntity()"),
			newseperator(),
			newelement( "QUIT", "ALT+F4", "quit()" ),
		},
	},
	{
		name = "Spawn",
		type = SubMenu,
		SubMenuItems = 
		{
			newboolean( "Spawn as Enemy", "g_cheatmenu_spawn_as_enemy", "g_cheatmenu_spawn_as_enemy=%s" ),
			{
				name = "Squads",
				type = SubMenu,
				SubMenuItems = 
				{
					{
						name = "Hotkeys",
						type = SubMenu,
						SubMenuItems = 
						{
							newelement( "1. Warboss", "CONTROL+SHIFT+1", "SpawnSquadAtMouse( World_GetPropertyBagGroupID( 'sbps/xp2/campaign/race_ork/heroes/ork_warboss' ))", NO_MP ),
							newelement( "2. Mekboy", "CONTROL+SHIFT+2", "SpawnSquadAtMouse( World_GetPropertyBagGroupID( 'sbps/xp2/campaign/race_ork/heroes/ork_hero_mekboy' ))", NO_MP ),
							newelement( "3. Kommando", "CONTROL+SHIFT+3", "SpawnSquadAtMouse( World_GetPropertyBagGroupID( 'sbps/xp2/campaign/race_ork/heroes/ork_hero_kommando' ))", NO_MP ),
							newelement( "4. StormNob", "CONTROL+SHIFT+4", "SpawnSquadAtMouse( World_GetPropertyBagGroupID( 'sbps/xp2/campaign/race_ork/heroes/ork_hero_slugga' ))", NO_MP ),
							newelement( "-----------------------------------------", "", "", NO_MP ),
							newelement( "5. Eliphas - Chaos Lord", "CONTROL+SHIFT+5", "SpawnSquadAtMouse( World_GetPropertyBagGroupID( 'sbps/xp2/campaign/race_chaos/heroes/csm_chaos_lord_hero' ))", NO_MP ),
							newelement( "6. Varius - Plague Champion", "CONTROL+SHIFT+6", "SpawnSquadAtMouse( World_GetPropertyBagGroupID( 'sbps/xp2/campaign/race_chaos/heroes/csm_plague_marine_champion_hero' ))", NO_MP ),
							newelement( "7. Kain - Aspiring Champion", "CONTROL+SHIFT+7", "SpawnSquadAtMouse( World_GetPropertyBagGroupID( 'sbps/xp2/campaign/race_chaos/heroes/csm_aspiring_champion_hero' ))", NO_MP ),
							newelement( "8. Neroth - Sorcerer", "CONTROL+SHIFT+8", "SpawnSquadAtMouse( World_GetPropertyBagGroupID( 'sbps/xp2/campaign/race_chaos/heroes/csm_sorcerer_hero' ))", NO_MP ),
							newelement( "-----------------------------------------", "", "", NO_MP ),
							newelement( "9. Ork Shoota", "CONTROL+SHIFT+9", "SpawnSquadAtMouse( World_GetPropertyBagGroupID( 'sbps/xp2/campaign/race_ork/troops/ork_shoota' ))", NO_MP ),
						},
					},
					{
						name = "XP2 Squads",
						type = SubMenu,
						SubMenuItems = 
						{
							{
								name = "Space Marine",
								type = SubMenu,
								SubMenuItems = 
								{
									newelement( "Spawn All Playable SM Heroes", "", [[SpawnSquadsMatchingFilter("sbps\\xp2\\campaign\\race_marine\\heroes\\")]], NO_MP ),
									newelement( "Spawn All Playable SM Troops", "", [[SpawnSquadsMatchingFilter("sbps\\xp2\\campaign\\race_marine\\troops\\\")]], NO_MP ),
									newelement( "Spawn All Playable SM Vehicles", "", [[SpawnSquadsMatchingFilter("sbps\\xp2\\campaign\\race_marine\\vehicles\\")]], NO_MP ),
									{
										name = "Heroes",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\xp2\\campaign\\race_marine\\heroes\\"),
									},
									{
										name = "Troops",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\xp2\\campaign\\race_marine\\troops\\"),
									},
									{
										name = "Vehicles",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\xp2\\campaign\\race_marine\\vehicles\\"),
									},
									{
										name = "Army",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\xp2\\campaign\\race_marine\\army\\"),
									},
								},
							},
							{
								name = "Eldar",
								type = SubMenu,
								SubMenuItems = 
								{
									newelement( "Spawn All Playable Eldar Heroes", "", [[SpawnSquadsMatchingFilter("sbps\\xp2\\campaign\\race_eldar\\heroes\\")]], NO_MP ),
									newelement( "Spawn All Playable Eldar Troops", "", [[SpawnSquadsMatchingFilter("sbps\\xp2\\campaign\\race_eldar\\troops\\\")]], NO_MP ),
									newelement( "Spawn All Playable Eldar Vehicles", "", [[SpawnSquadsMatchingFilter("sbps\\xp2\\campaign\\race_eldar\\vehicles\\")]], NO_MP ),
									{
										name = "Heroes",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\xp2\\campaign\\race_eldar\\heroes\\"),
									},
									{
										name = "Troops",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\xp2\\campaign\\race_eldar\\troops\\"),
									},
									{
										name = "Vehicles",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\xp2\\campaign\\race_eldar\\vehicles\\"),
									},
									{
										name = "Army",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\xp2\\campaign\\race_eldar\\army\\"),
									},
								},
							},
							{
								name = "Ork",
								type = SubMenu,
								SubMenuItems = 
								{
									newelement( "Spawn All Playable Ork Heroes", "", [[SpawnSquadsMatchingFilter("sbps\\xp2\\campaign\\race_ork\\heroes\\")]], NO_MP ),
									newelement( "Spawn All Playable Ork Troops", "", [[SpawnSquadsMatchingFilter("sbps\\xp2\\campaign\\race_ork\\troops\\\")]], NO_MP ),
									newelement( "Spawn All Playable Ork Vehicles", "", [[SpawnSquadsMatchingFilter("sbps\\xp2\\campaign\\race_ork\\vehicles\\")]], NO_MP ),
									{
										name = "Heroes",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\xp2\\campaign\\race_ork\\heroes\\"),
									},
									{
										name = "Troops",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\xp2\\campaign\\race_ork\\troops\\"),
									},
									{
										name = "Vehicles",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\xp2\\campaign\\race_ork\\vehicles\\"),
									},
									{
										name = "Army",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\xp2\\campaign\\race_ork\\army\\"),
									},
								},
							},
							{
								name = "Tyranid",
								type = SubMenu,
								SubMenuItems = 
								{
									newelement( "Spawn All Playable Tyranid Heroes", "", [[SpawnSquadsMatchingFilter("sbps\\xp2\\campaign\\race_tyranid\\heroes\\")]], NO_MP ),
									newelement( "Spawn All Playable Tyranid Troops", "", [[SpawnSquadsMatchingFilter("sbps\\xp2\\campaign\\race_tyranid\\troops\\\")]], NO_MP ),
									newelement( "Spawn All Playable Tyranid Vehicles", "", [[SpawnSquadsMatchingFilter("sbps\\xp2\\campaign\\race_tyranid\\vehicles\\")]], NO_MP ),
									{
										name = "Heroes",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\xp2\\campaign\\race_tyranid\\heroes\\"),
									},
									{
										name = "Troops",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\xp2\\campaign\\race_tyranid\\troops\\"),
									},
									{
										name = "Vehicles",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\xp2\\campaign\\race_tyranid\\vehicles\\"),
									},
									{
										name = "Army",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\xp2\\campaign\\race_tyranid\\army\\"),
									},
								},
							},
							{
								name = "Chaos",
								type = SubMenu,
								SubMenuItems = 
								{
									newelement( "Spawn All Playable Chaos Heroes", "", [[SpawnSquadsMatchingFilter("sbps\\xp2\\campaign\\race_chaos\\heroes\\")]], NO_MP ),
									newelement( "Spawn All Playable Chaos Troops", "", [[SpawnSquadsMatchingFilter("sbps\\xp2\\campaign\\race_chaos\\troops\\\")]], NO_MP ),
									newelement( "Spawn All Playable Chaos Vehicles", "", [[SpawnSquadsMatchingFilter("sbps\\xp2\\campaign\\race_chaos\\vehicles\\")]], NO_MP ),
									{
										name = "Heroes",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\xp2\\campaign\\race_chaos\\heroes\\"),
									},
									{
										name = "Troops",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\xp2\\campaign\\race_chaos\\troops\\"),
									},
									{
										name = "Vehicles",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\xp2\\campaign\\race_chaos\\vehicles\\"),
									},
									{
										name = "Army",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\xp2\\campaign\\race_chaos\\army\\"),
									},
								},
							},
							{
								name = "Imperial Guard",
								type = SubMenu,
								SubMenuItems = 
								{
									newelement( "Spawn All Playable Imperial Guard Heroes", "", [[SpawnSquadsMatchingFilter("sbps\\xp2\\campaign\\race_imperial_guard\\heroes\\")]], NO_MP ),
									newelement( "Spawn All Playable Imperial Guard Troops", "", [[SpawnSquadsMatchingFilter("sbps\\xp2\\campaign\\race_imperial_guard\\troops\\\")]], NO_MP ),
									newelement( "Spawn All Playable Imperial Guard Vehicles", "", [[SpawnSquadsMatchingFilter("sbps\\xp2\\campaign\\race_imperial_guard\\vehicles\\")]], NO_MP ),
									{
										name = "Heroes",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\xp2\\campaign\\race_imperial_guard\\heroes\\"),
									},
									{
										name = "Troops",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\xp2\\campaign\\race_imperial_guard\\troops\\"),
									},
									{
										name = "Vehicles",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\xp2\\campaign\\race_imperial_guard\\vehicles\\"),
									},
									{
										name = "Army",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\xp2\\campaign\\race_imperial_guard\\army\\"),
									},
								},
							},
						},
					},
					{
						name = "Dev",
						type = SubMenu,
						SubMenuItems = 
						{
							newelement( "Spawn All Dev Units", "", [[SpawnSquadsMatchingFilter("sbps\\dev\\")]], NO_MP ),
							{
								name = "Dev Units",
								type = SubMenu,
								SubMenuItems = GetSpawnSquadMenuTable("sbps\\dev\\"),
							},
						},
					},
					{
						name = "PvP Squads",
						type = SubMenu,
						SubMenuItems = 
						{
							{
								name = "Space Marine",
								type = SubMenu,
								SubMenuItems = 
								{
									newelement( "Spawn All Playable SM Heroes", "", [[SpawnSquadsMatchingFilter("sbps\\pvp\\race_marine\\heroes\\")]], NO_MP ),
									newelement( "Spawn All Playable SM Troops", "", [[SpawnSquadsMatchingFilter("sbps\\pvp\\race_marine\\troops\\\")]], NO_MP ),
									newelement( "Spawn All Playable SM Vehicles", "", [[SpawnSquadsMatchingFilter("sbps\\pvp\\race_marine\\vehicles\\")]], NO_MP ),
									{
										name = "Heroes",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\pvp\\race_marine\\heroes\\"),
									},
									{
										name = "Troops",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\pvp\\race_marine\\troops\\"),
									},
									{
										name = "Vehicles",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\pvp\\race_marine\\vehicles\\"),
									},
								},
							},
							{
								name = "Eldar",
								type = SubMenu,
								SubMenuItems = 
								{
									newelement( "Spawn All Playable Eldar Heroes", "", [[SpawnSquadsMatchingFilter("sbps\\pvp\\race_eldar\\heroes\\")]], NO_MP ),
									newelement( "Spawn All Playable Eldar Troops", "", [[SpawnSquadsMatchingFilter("sbps\\pvp\\race_eldar\\troops\\\")]], NO_MP ),
									newelement( "Spawn All Playable Eldar Vehicles", "", [[SpawnSquadsMatchingFilter("sbps\\pvp\\race_eldar\\vehicles\\")]], NO_MP ),
									{
										name = "Heroes",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\pvp\\race_eldar\\heroes\\"),
									},
									{
										name = "Troops",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\pvp\\race_eldar\\troops\\"),
									},
									{
										name = "Vehicles",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\pvp\\race_eldar\\vehicles\\"),
									},
								},
							},
							{
								name = "Ork",
								type = SubMenu,
								SubMenuItems = 
								{
									newelement( "Spawn All Playable Ork Heroes", "", [[SpawnSquadsMatchingFilter("sbps\\pvp\\race_ork\\heroes\\")]], NO_MP ),
									newelement( "Spawn All Playable Ork Troops", "", [[SpawnSquadsMatchingFilter("sbps\\pvp\\race_ork\\troops\\\")]], NO_MP ),
									newelement( "Spawn All Playable Ork Vehicles", "", [[SpawnSquadsMatchingFilter("sbps\\pvp\\race_ork\\vehicles\\")]], NO_MP ),
									{
										name = "Heroes",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\pvp\\race_ork\\heroes\\"),
									},
									{
										name = "Troops",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\pvp\\race_ork\\troops\\"),
									},
									{
										name = "Vehicles",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\pvp\\race_ork\\vehicles\\"),
									},
								},
							},
							{
								name = "Tyranid",
								type = SubMenu,
								SubMenuItems = 
								{
									newelement( "Spawn All Playable Tyranid Heroes", "", [[SpawnSquadsMatchingFilter("sbps\\pvp\\race_tyranid\\heroes\\")]], NO_MP ),
									newelement( "Spawn All Playable Tyranid Troops", "", [[SpawnSquadsMatchingFilter("sbps\\pvp\\race_tyranid\\troops\\\")]], NO_MP ),
									newelement( "Spawn All Playable Tyranid Vehicles", "", [[SpawnSquadsMatchingFilter("sbps\\pvp\\race_tyranid\\vehicles\\")]], NO_MP ),
									{
										name = "Heroes",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\pvp\\race_tyranid\\heroes\\"),
									},
									{
										name = "Troops",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\pvp\\race_tyranid\\troops\\"),
									},
									{
										name = "Vehicles",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\pvp\\race_tyranid\\vehicles\\"),
									},
								},
							},
							{
								name = "Chaos",
								type = SubMenu,
								SubMenuItems = 
								{
									newelement( "Spawn All Playable Chaos Heroes", "", [[SpawnSquadsMatchingFilter("sbps\\pvp\\race_chaos\\heroes\\")]], NO_MP ),
									newelement( "Spawn All Playable Chaos Troops", "", [[SpawnSquadsMatchingFilter("sbps\\pvp\\race_chaos\\troops\\\")]], NO_MP ),
									newelement( "Spawn All Playable Chaos Vehicles", "", [[SpawnSquadsMatchingFilter("sbps\\pvp\\race_chaos\\vehicles\\")]], NO_MP ),
									{
										name = "Heroes",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\pvp\\race_chaos\\heroes\\"),
									},
									{
										name = "Troops",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\pvp\\race_chaos\\troops\\"),
									},
									{
										name = "Vehicles",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\pvp\\race_chaos\\vehicles\\"),
									},
								},
							},
							{
								name = "Imperial Guards", 
								type = SubMenu,
								SubMenuItems = 
								{
									newelement( "Spawn All Playable IG Heroes", "", [[SpawnSquadsMatchingFilter("sbps\\pvp\\race_imperial_guard\\heroes\\")]], NO_MP ),
									newelement( "Spawn All Playable IG Troops", "", [[SpawnSquadsMatchingFilter("sbps\\pvp\\race_imperial_guard\\troops\\\")]], NO_MP ),
									newelement( "Spawn All Playable IG Vehicles", "", [[SpawnSquadsMatchingFilter("sbps\\pvp\\race_imperial_guard\\vehicles\\")]], NO_MP ),
									{
										name = "Heroes",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\pvp\\race_imperial_guard\\heroes\\"),
									},
									{
										name = "Troops",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\pvp\\race_imperial_guard\\troops\\"),
									},
									{
										name = "Vehicles",
										type = SubMenu,
										SubMenuItems = GetSpawnSquadMenuTable("sbps\\pvp\\race_imperial_guard\\vehicles\\"),
									},
								},
							},
							
						},
					},
					{
						name = "Core Units",
						type = SubMenu,
						SubMenuItems = 
						{
							{
								name = "Ork",
								type = SubMenu,
								SubMenuItems = GetSpawnSquadMenuTable("sbps\\core\\race_ork\\"),
							},
							{
								name = "Eldar",
								type = SubMenu,
								SubMenuItems = GetSpawnSquadMenuTable("sbps\\core\\race_eldar\\"),
							},
							{
								name = "Imperial Guard",
									type = SubMenu,
								SubMenuItems = GetSpawnSquadMenuTable("sbps\\core\\race_imperial_guard\\"),
							},
							{
								name = "Space Marines",
								type = SubMenu,
								SubMenuItems = GetSpawnSquadMenuTable("sbps\\core\\race_marine\\"),
							},
							{
								name = "Tyranid",
								type = SubMenu,
								SubMenuItems = GetSpawnSquadMenuTable("sbps\\core\\race_tyranid\\"),
							},
							{
								name = "Chaos",
								type = SubMenu,
								SubMenuItems = GetSpawnSquadMenuTable("sbps\\core\\race_chaos\\"),
							},
						},
					},
					{
						name = "All Squad Blueprints",
						type = SubMenu,
						SubMenuItems = 
						{
							newelement( "Spawn All Existing Squads", "", [[SpawnSquadsMatchingFilter("sbps\\race_ork\\troops\\")]], NO_MP ),
							{
								name = "Squads",
								type = SubMenu,
								SubMenuItems = GetSpawnSquadMenuTable("sbps\\"),
							},
						},
					},
				},
			},
			{
				name = "Entities",
				type = SubMenu,
				SubMenuItems = 
				{
					newboolean( "Force Spawn with Player", "g_cheatmenu_spawn_with_owner", "g_cheatmenu_spawn_with_owner=%s" ),
					{
						name = "XP2",
						type = SubMenu,
						SubMenuItems = GetSpawnEntityMenuTable("ebps\\xp2\\campaign\\"),
					},
					{
						name = "Campaign",
						type = SubMenu,
						SubMenuItems = 
						{
							{
								name = "Gameplay",
								type = SubMenu,
								SubMenuItems = GetSpawnEntityMenuTable("ebps\\campaign\\gameplay\\"),
							},
							{
								name = "NPC",
								type = SubMenu,
								SubMenuItems = GetSpawnEntityMenuTable("ebps\\campaign\\npc\\"),
							},
							{
								name = "Playable",
								type = SubMenu,
								SubMenuItems = GetSpawnEntityMenuTable("ebps\\campaign\\playable\\"),
							},
						}
					},
					{
						name = "Core",
						type = SubMenu,
						SubMenuItems = GetSpawnEntityMenuTable("ebps\\core\\"),
					},
					{
						name = "Dev",
						type = SubMenu,
						SubMenuItems = GetSpawnEntityMenuTable("ebps\\dev\\"),
					},
					{
						name = "Projectiles",
						type = SubMenu,
						SubMenuItems = GetSpawnEntityMenuTable("ebps\\projectiles\\"),
					},
					{
						name = "PvP",
						type = SubMenu,
						SubMenuItems = GetSpawnEntityMenuTable("ebps\\pvp\\"),
					},
					{
						name = "UI",
						type = SubMenu,
						SubMenuItems = GetSpawnEntityMenuTable("ebps\\ui\\"),
					},
					{
						name = "WorldObjects",
						type = SubMenu,
						SubMenuItems = GetSpawnEntityMenuTable("ebps\\world_objects\\"),
					},
				},
			},
			{
				name = "Gameplay",
				type = SubMenu,
				SubMenuItems = GetSpawnEBPMenu("ebps\\gameplay\\", "ebps\\props\\" ),
			},
		},
	},

	{
		name = "Wargear",
		type = SubMenu,
		SubMenuItems = 
		{
			{
				name = "Grant Wargear To Selected Squads",
				type = SubMenu,
				SubMenuItems =
				{
					{
						name = "XP2 Wargear",
						type = SubMenu,
						SubMenuItems =
						{
							{ -- Space Marines
								name = "Space Marines",
								type = SubMenu,
								SubMenuItems =
								{
									{
										name = "Accessories",
										type = SubMenu,
										SubMenuItems = GetWargearGrantTable("wargear\\wargear\\xp2\\campaign\\race_marine\\accessories")
									},
									{
										name = "Armor",
										type = SubMenu,
										SubMenuItems = GetWargearGrantTable("wargear\\wargear\\xp2\\campaign\\race_marine\\armour"),
									},
									{
										name = "Weapons - Melee",
										type = SubMenu,
										SubMenuItems = GetWargearGrantTable("wargear\\wargear\\xp2\\campaign\\race_marine\\weapons_melee"),
									},
									{
										name = "Weapons - Ranged",
										type = SubMenu,
										SubMenuItems = GetWargearGrantTable("wargear\\wargear\\xp2\\campaign\\race_marine\\weapons_ranged"),
									},
								},
							},
							{ -- Orks
								name = "Orks",
								type = SubMenu,
								SubMenuItems =
								{
									{
										name = "Accessories",
										type = SubMenu,
										SubMenuItems = GetWargearGrantTable("wargear\\wargear\\xp2\\campaign\\race_ork\\accessories")
									},
									{
										name = "Armor",
										type = SubMenu,
										SubMenuItems = GetWargearGrantTable("wargear\\wargear\\xp2\\campaign\\race_ork\\armour"),
									},
									{
										name = "Weapons - Melee",
										type = SubMenu,
										SubMenuItems = GetWargearGrantTable("wargear\\wargear\\xp2\\campaign\\race_ork\\weapons_melee"),
									},
									{
										name = "Weapons - Ranged",
										type = SubMenu,
										SubMenuItems = GetWargearGrantTable("wargear\\wargear\\xp2\\campaign\\race_ork\\weapons_ranged"),
									},
								},
							},
							{ -- Eldar
								name = "Eldar",
								type = SubMenu,
								SubMenuItems =
								{
									{
										name = "Accessories",
										type = SubMenu,
										SubMenuItems = GetWargearGrantTable("wargear\\wargear\\xp2\\campaign\\race_eldar\\accessories")
									},
									{
										name = "Armor",
										type = SubMenu,
										SubMenuItems = GetWargearGrantTable("wargear\\wargear\\xp2\\campaign\\race_eldar\\armour"),
									},
									{
										name = "Weapons - Melee",
										type = SubMenu,
										SubMenuItems = GetWargearGrantTable("wargear\\wargear\\xp2\\campaign\\race_eldar\\weapons_melee"),
									},
									{
										name = "Weapons - Ranged",
										type = SubMenu,
										SubMenuItems = GetWargearGrantTable("wargear\\wargear\\xp2\\campaign\\race_eldar\\weapons_ranged"),
									},
								},
							},
							{ -- Tyranid
								name = "Tyranid",
								type = SubMenu,
								SubMenuItems =
								{
									{
										name = "Accessories",
										type = SubMenu,
										SubMenuItems = GetWargearGrantTable("wargear\\wargear\\xp2\\campaign\\race_tyranid\\accessories")
									},
									{
										name = "Armor",
										type = SubMenu,
										SubMenuItems = GetWargearGrantTable("wargear\\wargear\\xp2\\campaign\\race_tyranid\\armour"),
									},
									{
										name = "Weapons - Melee",
										type = SubMenu,
										SubMenuItems = GetWargearGrantTable("wargear\\wargear\\xp2\\campaign\\race_tyranid\\weapons_melee"),
									},
									{
										name = "Weapons - Ranged",
										type = SubMenu,
										SubMenuItems = GetWargearGrantTable("wargear\\wargear\\xp2\\campaign\\race_tyranid\\weapons_ranged"),
									},
								},
							},
							{ -- Chaos
								name = "Chaos",
								type = SubMenu,
								SubMenuItems =
								{
									{
										name = "Accessories",
										type = SubMenu,
										SubMenuItems = GetWargearGrantTable("wargear\\wargear\\xp2\\campaign\\race_chaos\\accessories")
									},
									{
										name = "Armor",
										type = SubMenu,
										SubMenuItems = GetWargearGrantTable("wargear\\wargear\\xp2\\campaign\\race_chaos\\armour"),
									},
									{
										name = "Weapons - Melee",
										type = SubMenu,
										SubMenuItems = GetWargearGrantTable("wargear\\wargear\\xp2\\campaign\\race_chaos\\weapons_melee"),
									},
									{
										name = "Weapons - Ranged",
										type = SubMenu,
										SubMenuItems = GetWargearGrantTable("wargear\\wargear\\xp2\\campaign\\race_chaos\\weapons_ranged"),
									},
								},
							},
							{ -- Imperial Guard
								name = "Imperial Guard",
								type = SubMenu,
								SubMenuItems =
								{
									{
										name = "Accessories",
										type = SubMenu,
										SubMenuItems = GetWargearGrantTable("wargear\\wargear\\xp2\\campaign\\race_imperial_guard\\accessories")
									},
									{
										name = "Armor",
										type = SubMenu,
										SubMenuItems = GetWargearGrantTable("wargear\\wargear\\xp2\\campaign\\race_imperial_guard\\armour"),
									},
									{
										name = "Weapons - Melee",
										type = SubMenu,
										SubMenuItems = GetWargearGrantTable("wargear\\wargear\\xp2\\campaign\\race_imperial_guard\\weapons_melee"),
									},
									{
										name = "Weapons - Ranged",
										type = SubMenu,
										SubMenuItems = GetWargearGrantTable("wargear\\wargear\\xp2\\campaign\\race_imperial_guard\\weapons_ranged"),
									},
								},
							},
						},
					},
					{
						name = "PVP Space Marine Wargear",
						type = SubMenu,
						SubMenuItems = GetWargearGrantTable("wargear\\wargear\\pvp\\race_marine\\")
					},
					{
						name = "PVP Ork Wargear",
						type = SubMenu,
						SubMenuItems = GetWargearGrantTable("wargear\\wargear\\pvp\\race_ork\\")
					},
					{
						name = "PVP Eldar Wargear",
						type = SubMenu,
						SubMenuItems = GetWargearGrantTable("wargear\\wargear\\pvp\\race_eldar\\")
					},
						{
						name = "PVP Tyranid Wargear",
						type = SubMenu,
						SubMenuItems = GetWargearGrantTable("wargear\\wargear\\pvp\\race_tyranid\\")
					},
					{
						name = "Consumables Wargear",
						type = SubMenu,
						SubMenuItems = GetWargearGrantTable("wargear\\wargear\\consumables\\")
					},
					{
						name = "Core Wargear",
						type = SubMenu,
						SubMenuItems = GetWargearGrantTable("wargear\\wargear\\core\\")
					},
					{
						name = "Dev Wargear",
						type = SubMenu,
						SubMenuItems = GetWargearGrantTable("wargear\\wargear\\dev\\")
					},
				}
			},
			{
				name = "Drop Wargear At Mouse Position",
				type = SubMenu,
				SubMenuItems =
				{
					{
						name = "XP2 Wargear",
						type = SubMenu,
						SubMenuItems =
						{
							{ -- Space Marines
								name = "Space Marines",
								type = SubMenu,
								SubMenuItems =
								{
									{
										name = "Accessories",
										type = SubMenu,
										SubMenuItems = GetWargearDropTable("wargear\\wargear\\xp2\\campaign\\race_marine\\accessories")
									},
									{
										name = "Armor",
										type = SubMenu,
										SubMenuItems = GetWargearDropTable("wargear\\wargear\\xp2\\campaign\\race_marine\\armour"),
									},
									{
										name = "Weapons - Melee",
										type = SubMenu,
										SubMenuItems = GetWargearDropTable("wargear\\wargear\\xp2\\campaign\\race_marine\\weapons_melee"),
									},
									{
										name = "Weapons - Ranged",
										type = SubMenu,
										SubMenuItems = GetWargearDropTable("wargear\\wargear\\xp2\\campaign\\race_marine\\weapons_ranged"),
									},
								},
							},
							{ -- Orks
								name = "Orks",
								type = SubMenu,
								SubMenuItems =
								{
									{
										name = "Accessories",
										type = SubMenu,
										SubMenuItems = GetWargearDropTable("wargear\\wargear\\xp2\\campaign\\race_ork\\accessories")
									},
									{
										name = "Armor",
										type = SubMenu,
										SubMenuItems = GetWargearDropTable("wargear\\wargear\\xp2\\campaign\\race_ork\\armour"),
									},
									{
										name = "Weapons - Melee",
										type = SubMenu,
										SubMenuItems = GetWargearDropTable("wargear\\wargear\\xp2\\campaign\\race_ork\\weapons_melee"),
									},
									{
										name = "Weapons - Ranged",
										type = SubMenu,
										SubMenuItems = GetWargearDropTable("wargear\\wargear\\xp2\\campaign\\race_ork\\weapons_ranged"),
									},
								},
							},
							{ -- Eldar
								name = "Eldar",
								type = SubMenu,
								SubMenuItems =
								{
									{
										name = "Accessories",
										type = SubMenu,
										SubMenuItems = GetWargearDropTable("wargear\\wargear\\xp2\\campaign\\race_eldar\\accessories")
									},
									{
										name = "Armor",
										type = SubMenu,
										SubMenuItems = GetWargearDropTable("wargear\\wargear\\xp2\\campaign\\race_eldar\\armour"),
									},
									{
										name = "Weapons - Melee",
										type = SubMenu,
										SubMenuItems = GetWargearDropTable("wargear\\wargear\\xp2\\campaign\\race_eldar\\weapons_melee"),
									},
									{
										name = "Weapons - Ranged",
										type = SubMenu,
										SubMenuItems = GetWargearDropTable("wargear\\wargear\\xp2\\campaign\\race_eldar\\weapons_ranged"),
									},
								},
							},
							{ -- Tyranid
								name = "Tyranid",
								type = SubMenu,
								SubMenuItems =
								{
									{
										name = "Accessories",
										type = SubMenu,
										SubMenuItems = GetWargearDropTable("wargear\\wargear\\xp2\\campaign\\race_tyranid\\accessories")
									},
									{
										name = "Armor",
										type = SubMenu,
										SubMenuItems = GetWargearDropTable("wargear\\wargear\\xp2\\campaign\\race_tyranid\\armour"),
									},
									{
										name = "Weapons - Melee",
										type = SubMenu,
										SubMenuItems = GetWargearDropTable("wargear\\wargear\\xp2\\campaign\\race_tyranid\\weapons_melee"),
									},
									{
										name = "Weapons - Ranged",
										type = SubMenu,
										SubMenuItems = GetWargearDropTable("wargear\\wargear\\xp2\\campaign\\race_tyranid\\weapons_ranged"),
									},
								},
							},
							{ -- Chaos
								name = "Chaos",
								type = SubMenu,
								SubMenuItems =
								{
									{
										name = "Accessories",
										type = SubMenu,
										SubMenuItems = GetWargearDropTable("wargear\\wargear\\xp2\\campaign\\race_chaos\\accessories")
									},
									{
										name = "Armor",
										type = SubMenu,
										SubMenuItems = GetWargearDropTable("wargear\\wargear\\xp2\\campaign\\race_chaos\\armour"),
									},
									{
										name = "Weapons - Melee",
										type = SubMenu,
										SubMenuItems = GetWargearDropTable("wargear\\wargear\\xp2\\campaign\\race_chaos\\weapons_melee"),
									},
									{
										name = "Weapons - Ranged",
										type = SubMenu,
										SubMenuItems = GetWargearDropTable("wargear\\wargear\\xp2\\campaign\\race_chaos\\weapons_ranged"),
									},
								},
							},
							{ -- Imperial Guard
								name = "Imperial Guard",
								type = SubMenu,
								SubMenuItems =
								{
									{
										name = "Accessories",
										type = SubMenu,
										SubMenuItems = GetWargearDropTable("wargear\\wargear\\xp2\\campaign\\race_imperial_guard\\accessories")
									},
									{
										name = "Armor",
										type = SubMenu,
										SubMenuItems = GetWargearDropTable("wargear\\wargear\\xp2\\campaign\\race_imperial_guard\\armour"),
									},
									{
										name = "Weapons - Melee",
										type = SubMenu,
										SubMenuItems = GetWargearDropTable("wargear\\wargear\\xp2\\campaign\\race_imperial_guard\\weapons_melee"),
									},
									{
										name = "Weapons - Ranged",
										type = SubMenu,
										SubMenuItems = GetWargearDropTable("wargear\\wargear\\xp2\\campaign\\race_imperial_guard\\weapons_ranged"),
									},
								},
							},
						},
					},
					{
						name = "PVP Space Marine Wargear",
						type = SubMenu,
						SubMenuItems = GetWargearDropTable("wargear\\wargear\\pvp\\race_marine\\")
					},
					{
						name = "PVP Ork Wargear",
						type = SubMenu,
						SubMenuItems = GetWargearDropTable("wargear\\wargear\\pvp\\race_ork\\")
					},
					{
						name = "PVP Eldar Wargear",
						type = SubMenu,
						SubMenuItems = GetWargearDropTable("wargear\\wargear\\pvp\\race_eldar\\")
					},
					{
						name = "PVP Tyranid Wargear",
						type = SubMenu,
						SubMenuItems = GetWargearDropTable("wargear\\wargear\\pvp\\race_tyranid\\")
					},
					{
						name = "Consumables Wargear",
						type = SubMenu,
						SubMenuItems = GetWargearDropTable("wargear\\wargear\\consumables\\")
					},
					{
						name = "Core Wargear",
						type = SubMenu,
						SubMenuItems = GetWargearGrantTable("wargear\\wargear\\core\\")
					},
					{
						name = "Dev Wargear",
						type = SubMenu,
						SubMenuItems = GetWargearDropTable("wargear\\wargear\\dev\\")
					},
				}
			},
			
			newseperator(),			

			{
				name = "Drop Slot Items On Mouse Over Squad",
				type = SubMenu,
				SubMenuItems =
				{
					{
						name = "PVP Space Marine Slot Items",
						type = SubMenu,
						SubMenuItems = GetSlotItemDropTable("slot_item\\pvp\\race_marine\\")
					},
					{
						name = "PVP Ork Slot Items",
						type = SubMenu,
						SubMenuItems = GetSlotItemDropTable("slot_item\\pvp\\race_ork\\")
					},
					{
						name = "PVP Eldar Slot Items",
						type = SubMenu,
						SubMenuItems = GetSlotItemDropTable("slot_item\\pvp\\race_eldar\\")
					},
					{
						name = "PVP Tyranid Slot Items",
						type = SubMenu,
						SubMenuItems = GetSlotItemDropTable("slot_item\\pvp\\race_tyranid\\")
					},
					{
						name = "Dev Wargear",
						type = SubMenu,
						SubMenuItems = GetSlotItemDropTable("slot_item\\dev\\")
					},
				}
			},
		},
	},

	{
		name = "Abilities",
		type = SubMenu,
		SubMenuItems = 
		{
			{
				name = "Spawn Enemy Ability",
				type = Variable,
				get = "cheatmenu_spawnenemyability",
				set = "cheatmenu_spawnenemyability = %s",
				var_type = Boolean,
			},
			{
				name = "List",
				type = SubMenu,
				SubMenuItems = GetAbilityMenuTable(),
			}
		},
	},
	
	-----------------------------
	{
		name = "Scar",
		type = SubMenu,
		
		SubMenuItems = 
		{
			newelement( "Toggle profiling", "CONTROL+P", "RulesProfiler_Enable( true ); RulesProfiler_Activate(not RulesProfiler_IsActive())" ),
            newelement( "Toggle Scar Rule", "SHIFT+P", "Scar_DoString( \"Rule:Debug()\" )" ),
            newelement( "Toggle Quests Debug", "", "Scar_DoString( \"Quests:Debug()\" )" ),
			newelement( "Toggle group display", "", "Scar_GroupInfo()" ),
			newelement( "Toggle group list", "", "Scar_GroupList()" ),
			newelement( "Toggle marker display", "", "Scar_DrawMarkers()" ),
		},
	},
	
	-----------------------------
	{
		name = "AI",
		type = SubMenu,
		
		SubMenuItems = CreateAIMenu()
	},

	
	-----------------------------
	{
		name = "Pathing",
		type = SubMenu,
		
		SubMenuItems = 
		{
			newelement( "Designer mode", "CONTROL+SHIFT+D","toggle_cool_designer_debug()", NO_MP),
			newelement( "Toggle Decals", "CONTROL+ALT+F1","dirt_debugtoggle(\"nodecals\")"),
			newelement( "Draw Impass", "CONTROL+SHIFT+F2", "Path_DrawImpass(0)" ),
			newelement( "Inc Debug pass type", "CONTROL+SHIFT+F3", "inc_debug_pass_type()" ),
			newelement( "Draw Can Build", "CONTROL+SHIFT+F4", "Path_DrawCanBuild()" ),
			newseperator(),
			newelement( "Draw Sub Sector", "CONTROL+SHIFT+F5", "Path_DrawSubSector()" ),
			newelement( "Draw Sector Conn. Lines", "CONTROL+ALT+SHIFT+F5", "Path_DrawConnectivityLines()" ),
			newelement( "Draw Mouse Over Sector Conn. Lines", "CONTROL+ALT+SHIFT+F6", "Path_DrawMouseOverSectorConnectivityLines()" ),
			newelement( "Draw Precise Map Once", "CONTROL+SHIFT+F6", "Path_DrawPreciseMap(1)" ),
			newelement( "Draw Precise Map Repeatedly", "CONTROL+SHIFT+F7", "toggleupdateprecise()" ),
			newelement( "Draw Reservation Map", "CONTROL+SHIFT+F12", "Path_DrawResMap()" ),
			newseperator(),
			newelement( "Draw Path", "CONTROL+SHIFT+F8", "Path_DrawPath()" ),
			newelement( "Show Path Prediction", "", "Path_Prediction()"),
			newelement( "Draw Elements", "CONTROL+SHIFT+F", "Path_DrawElements()"),
			newelement( "Draw OOC Targets", "CONTROL+ALT+O", "Sim_EntityOOCTarget()"),
			newelement( "Show Sparse Only", "", "Path_SparseOnly()"),
			newelement( "Toggle Entity OBB Overlap Warnings", "", "Sim_WarnOverlappingEntityOBBs()"),
			newseperator(),
			newelement( "Test Pathfinding Performance", "", "Sim_TestPathfinding()"),
			newelement( "mem usage", "CONTROL+SHIFT+ALT+P", "pf_memusage()"),
			newelement( "sector count", "", "pf_sectorcount()"),
			newelement( "Toggle Path Rendering", "CONTROL+SHIFT+F9", "path_togglepathrendering()"),
			newelement( "Toggle Turn Output", "CONTROL+SHIFT+F10","path_toggleturnoutput()"),
			newelement( "Toggle A* Fill", "CONTROL+SHIFT+F11","toggle_astarfill()"),
		}
	},
	-----------------------------
	
	{
		name = "Sim",
		type = SubMenu,
		
		SubMenuItems = 
		{
			newelement("turbo", 			"CONTROL+T", 	"turbo()", NO_MP),
			newelement("slow", 				"CONTROL+S", 	"slow()", NO_MP),
			newelement("Slow Down Sim", 	"CONTROL+SHIFT+Z", "SimRateSlower()", NO_MP),
			newelement("Speed Up Sim", 		"CONTROL+SHIFT+X", "SimRateFaster()", NO_MP),
			newelement("SuperSpeed Mode", 	"CONTROL+ALT+X", "SimRateToggle()", NO_MP),
			newseperator(),
			newelement("cheat", 			"CONTROL+F1", 	"cheat_resources(10000)", NO_MP),
			newelement("cheat_buildtime",	"CONTROL+SHIFT+F1", "cheat_buildtime()", NO_MP ),

			newelement("Fow Sight Info",			"",		"toggle_fow_info()", NO_MP ),
			newelement("Fow On Terrain",			"",	"toggle_terrainoverlay(); FOW_DrawAccurate()" ),

			newseperator(),
			newelement("Focus On Selection", 	"ScrollLock", "Camera_FocusOnSelection()" ),
			newelement("Sim_SelectedOnlyToggle", 	"", 	"Sim_SelectedOnlyToggle()" ),

			newseperator(),

			newelement("Sim_SimBox",				"CONTROL+SHIFT+B", 	"Sim_SimBox()" ),
			newelement("Sim_EntityOBB",				"CONTROL+SHIFT+O",	"Sim_EntityOBB()" ),
			newelement("Sim_ShotBlockers",				"CONTROL+ALT+B",	"Sim_ShotBlockers()" ),
			newelement("Sim_EntityCoverInfo", 		"CONTROL+SHIFT+C", 	"Sim_EntityCoverInfo()" ),
			newelement("Sim_SquadInfo",				"CONTROL+SHIFT+Q", 	"Sim_SquadInfo()" ),
			newelement("Sim_SquadAI",				"CONTROL+SHIFT+G",	"Sim_SquadAI()" ),
			newelement("Sim_ClearPlanDebug",			"",			"Sim_ClearPlanDebug()" ),
			newelement("Sim_SquadStateDebugRender",	"CONTROL+SHIFT+L", 	"Sim_SquadStateDebugRender()"),
			newelement("Sim_SquadSuppression",		"CONTROL+SHIFT+N", 	"Sim_SquadSuppression()"),

			newseperator(),

			newelement("Sim_EntityInfo",			"CONTROL+SHIFT+E", 	"Sim_EntityInfo()" ),
			newelement("Sim_EntityModifier",		"CONTROL+SHIFT+M", 	"Sim_EntityModifier()" ),
			newelement("Sim_EntityAbility",			"", 	"Sim_EntityAbility()" ),
			newelement("Sim_EntityUpgrades",		"", 	"Sim_EntityUpgrades()" ),
			newelement("Sim_EntityActions",			"",		"Sim_EntityActions()" ),
			newelement("Sim_EntityTargetFiredInfo",	"CONTROL+ALT+W", "Sim_EntityTargetFiredInfo()" ),

			newseperator(),

			newelement("Sim_PlayerInfo", 			"", 	"Sim_PlayerInfo()" ),
			
			newseperator(),

			newelement("Sim_CheckRequrements",		"", 	"Sim_CheckRequrements()" ),
			newelement("Sim_DrawAttention",			"", 	"Sim_DrawAttention()" ),
			newelement("Sim_EntityDelay",			"CONTROL+ALT+D",	"Sim_EntityDelay()" ),
			newelement("Sim_DrawMeleeDist",			"", 	"Sim_DrawMeleeDist()" ),
			
			newseperator(),

			newelement("Weapon_Debug",				"CONTROL+SHIFT+W",		"Weapon_Debug()"),
			newelement("Weapon_HardPointInfo",		"CONTROL+SHIFT+H",		"Weapon_HardPointInfo()" ),
						
			newseperator(),

			newelement("Territory_DrawAccurate",	"",		"Territory_DrawAccurate()" ),
			newelement("Territory_DrawSupply",		"",		"Territory_DrawSupply()" ),	
			newelement("Territory_DrawCellInfo",	"",		"Territory_DrawCellInfo()" ),
			
			newseperator(),

			newelement("Cursor_Info",				"CONTROL+SHIFT+I",		"Cursor_Info()"),
			newelement("Cursor_CoverInfo",			"",		"Cursor_CoverInfo()"),
			newelement("Cursor_WargearInfo",		"",		"Cursor_WargearInfo()"),
			newelement("Cursor_WeaponInfo",			"",		"Cursor_WeaponInfo()"),
			newelement("Cursor_WeaponRanges",		"CONTROL+SHIFT+R",		"Cursor_WeaponRanges()" ),
			
			newseperator(),
		
			newelement("Entity/Squad Counts",		"CONTROL+ALT+E",	"toggle_unit_counts()" ),
			newelement("Area Effect Debug",	"",	"AreaEffect_Info()" ),
			newelement("Toggle Boring Melee",		"CONTROL+ALT+M",	"World_ToggleBoringMeleeMode()" ),
		},
	},
	{
		name = "Rendering",
		type = SubMenu,
		
		SubMenuItems = 
		{
			newelement( "Wireframe (world)", "CONTROL+W", "VIS_Wireframe()"),
			newelement( "Overdraw (world)", "CONTROL+X", "VIS_Overdraw()"),
			newelement( "Overdraw (terrain)", "ALT+SHIFT+X", "dirt_debugtoggle(\"overdraw\")"),
			newelement( "Action Event System", "CONTROL+SHIFT+A", "ActionEventInit()"),
			newelement( "LAO - Save Textures", "", "LAO_Dump()"),
			newelement( "LAO - Refresh Textures", "", "LAO_ForceRefresh()"),
			
			{
				name = "Animator Debug Mode",
				type = Variable,
				get = "get_animatorDebugMask()",
				set = "animator_debug_set_mask_to_key_value(%f)",
				stepsize = 1,
				min = 0,
				max = 4095,
				var_type = Float,
			},
			newelement( "Increment Animator Debug Mode", "CONTROL+ALT+A", "animator_debug_increment()" ),

			{
				name = "Toggle Animator Debug Lock Selection",
				type = Variable,
				get = "get_animatorDebugLock()",
				set = "animator_debug_lock_selection()",
				var_type = Boolean,
			},
			newelement( "Toggle Animator Debug Lock Selection", "CONTROL+ALT+Q", "animator_debug_lock_selection()" ),
			
			newelement( "Disable Animator Debug", "", "set_animatorDebugDisabled()" ),
			
			newelement( "Toggle Animator Debug Mode 1 (Motion Tree)", "CONTROL+ALT+1", "animator_toggle(1)" ),
			newelement( "Toggle Animator Debug Mode 2 (Playlist)", "CONTROL+ALT+2", "animator_toggle(2)" ),
			newelement( "Toggle Animator Debug Mode 1&2", "CONTROL+ALT+3", "animator_toggle(3)" ),
			newelement( "Toggle Animator Debug Mode 8 (DCA Data)", "CONTROL+ALT+4", "animator_toggle(8)" ),
			newelement( "Toggle Animator Debug Mode 128 (DCA Context)", "CONTROL+ALT+5", "animator_toggle(128)" ),
			newelement( "Toggle Animator Debug Mode ALL", "CONTROL+ALT+6", "animator_toggle(4095)" ),
		}
	},
	{
		name = "Sound",
		type = SubMenu,
		
		SubMenuItems = 
		{
			newboolean( "Show Sound Debug", "Misc_GetSoundDebugEnabled()", "Misc_SetSoundDebugEnabled(%s)" ),
			newboolean( "Show Speech Selector", "Misc_GetSpeechDebugEnabled(DEBUG_SELECTOR)", "Misc_SetSpeechDebugEnabled(DEBUG_SELECTOR, %s)" ),
			newboolean( "Show Combat Zones", "Misc_GetSpeechDebugEnabled(DEBUG_COMBATZONES)", "Misc_SetSpeechDebugEnabled(DEBUG_COMBATZONES, %s)" ),
			newelement( "Toggle VU Meter Stats", "", "sound_toggleVUMeterStats()" ),
			newelement( "Toggle Music Stats", "", "sound_toggleMusicStats()" ),
			newelement( "Toggle Voice Groups", "", "sound_toggleVoiceGroups()" ),
			newelement( "Toggle Volume Groups", "", "sound_toggleVolumeGroups()" ),
			newelement( "Toggle Sample Stats", "", "sound_toggleSampleStats()" ),
			newelement( "Toggle Streaming Stats", "", "sound_toggleStreamingStats()" ),
			newseperator(),
			newboolean( "Display Short Container Names", "Misc_GetSoundDebugMode(DM_UseShortNames)", "Misc_SetSoundDebugMode(DM_UseShortNames,%s)" ),
			newboolean( "Display 2D Sounds", "Misc_GetSoundDebugMode(DM_Display2D)", "Misc_SetSoundDebugMode(DM_Display2D,%s)" ),
			newboolean( "Display 3D Sounds", "Misc_GetSoundDebugMode(DM_Display3D)", "Misc_SetSoundDebugMode(DM_Display3D,%s)" ),
			newboolean( "Display Invalid Sounds", "Misc_GetSoundDebugMode(DM_DisplayInvalid)", "Misc_SetSoundDebugMode(DM_DisplayInvalid,%s)" ),
			newboolean( "Display Speech Codes", "Speech_DrawCodesEnabled()", "Speech_EnableDrawCodes(%s)" ),
			newseperator(),
			{
				name = "Debug Filter",
				type = SubMenu,
				SubMenuItems = 
				{
					
					newboolean( "Enable [speech]", "not Misc_GetSoundDebugFilter(0)", "Misc_SetSoundDebugFilter(0,not %s)" ),
					newboolean( "Enable [dca]", "not Misc_GetSoundDebugFilter(1)", "Misc_SetSoundDebugFilter(1,not %s)" ),
					newboolean( "Enable [ui]", "not Misc_GetSoundDebugFilter(2)", "Misc_SetSoundDebugFilter(2,not %s)" ),
					newboolean( "Enable [scar]", "not Misc_GetSoundDebugFilter(3)", "Misc_SetSoundDebugFilter(3,not %s)" ),
					newboolean( "Enable [bchat]", "not Misc_GetSoundDebugFilter(4)", "Misc_SetSoundDebugFilter(4,not %s)" ),
				},
			},
			newseperator(),
			newelement( "Clear Invalid List", "", "Misc_ClearSoundDebugInvalid()" ),
		}
	},
	
	{
		name = "UI",
		type = SubMenu,
		
		SubMenuItems = 
		{
			{
				name = "Scale",
				type = Variable,
				get = "UI_GetScale()",
				set = "UI_SetScale(%f)",
				stepsize = 0.05,
				min = 0.05,
				max = 3.0,
				var_type = Float,
			},
			
			{
				name = "MiniMap Rotates",
				type = Variable,
				get = "UI_GetMiniMapRotates()",
				set = "UI_SetMiniMapRotates(%s)",
				var_type = Boolean,
			},
			
			newelement( "Toggle Debug Bindings", "ALT+B", "UI_ToggleBindings()" ),
			newelement( "Collapse Current Binding", "ALT+LEFT", "UI_BindingSelectSetExpanded( false )"),
			newelement( "Expand Current Binding", "ALT+RIGHT", "UI_BindingSelectSetExpanded( true )"),
			newelement( "Toggle Enabled on Current", "ALT+E", "UI_BindingSelectToggleEnabled()" ),
			newelement( "Next Binding", "ALT+DOWN", "UI_BindingSelectNext()"),
			newelement( "Prev Binding", "ALT+UP", "UI_BindingSelectPrevious()"),
			
		}
	},
	
	{
		name = "FX",
		type = SubMenu,
		SubMenuItems =
		{
			newelement( "Toggle Render", "", "fx_toggleRendering()" ),		
			newelement( "Bound Volumes", "SHIFT+J", "ShowFXBoundVolumes()" ),
			newelement( "Repeat Weapon Hit", "ALT+W", "WeaponRepeatHitMousedEntity()" ),
			newelement( "Dump Textures", "", "fx_dumpTextures()" ),
			newelement( "Refresh (remove and reload)", "", "fx_refresh()" ),
			{
				name = "Overdraw",
				type = SubMenu,
				SubMenuItems = 
				{
					newboolean( "Enabled", "fx_getusedebugshader()", "ShowFXOverdraw(%s)" ),
					{
						name = "Opacity",
						type = Variable,
						get = "fx_getdebugopacity()",
						set = "fx_setdebugopacity(%f)",
						stepsize = 0.01,
						min = 0.01,
						max = 1.0,
						var_type = Float,
					},				
				},
			},
			{
				name = "Logging",
				type = SubMenu,
			
				SubMenuItems = 
				{
					newboolean( "Enabled", "fx_getlogenabled()", "fx_logenable(%s)" ),
 					newboolean( "Render", "fx_getlogrender()", "fx_logrender(%s)" ),
					newelement( "Dump file", "", "fx_dump()" ),					
				},
			},
			{
				name = "Weapon Hits",
				type = SubMenu,
				SubMenuItems = GetWeaponHitMenuTable();
			},
		},
	},
		
	{
		name = "NIS",
		type = SubMenu,
		
		SubMenuItems = 
		{
			newelement("----Recording Commands----",		"",	""),
			newelement( "Add Selected To Recorder", 		"CONTROL+SHIFT+A", 		"NIS_AddSelectedToRecorder()" ),
			newelement( "Start Recording", 					"CONTROL+SHIFT+HOME", 	"nis_startrecording()" ),	
			newelement( "Stop Recording", 					"CONTROL+SHIFT+END", 	"nis_stoprecording()" ),
			newelement("----Clip Playback Commands----",	"",						""),
			newelement( "Play", 							"", 					"clip_play()" ),	
			newelement( "Stop", 							"", 					"clip_stop()" ),	
			newelement("----NIS Playback Commands----",		"",						""),
			newelement( "Play", 							"CONTROL+SHIFT+P", 		"nis_play()" ),	
			newelement( "Stop", 							"CONTROL+SHIFT+S", 		"nis_stop()" ),		
			newelement("----NIS Performance----",			"",						""),
			newelement("Scenes",							"",						"scene_togglestatgraph()"),
		}
	},
	
	{
		name = "Posture",
		type = SubMenu,
		
		SubMenuItems = 
		{
			newelement( "Order to Face Mouse", "CONTROL+ALT+SHIFT+F", "FaceSelectedSquads()"),
			newelement( "Suggest Stand", "CONTROL+ALT+SHIFT+W", "SuggestPostureSelection(2, -1)" ),
			newelement( "Suggest Crouch", "CONTROL+ALT+SHIFT+S", "SuggestPostureSelection(1, -1)" ),
			newelement( "Suggest Prone", "CONTROL+ALT+SHIFT+X", "SuggestPostureSelection(0, -1)" ),
			newelement( "Clear Suggestion", "CONTROL+ALT+SHIFT+D", "ClearPostureSelection()" ),
		}
	},
	
	{
		name = "Weather",
		type = SubMenu,
		SubMenuItems =
		{
			newboolean( "Enabled", "Weather_GetEnabled()", "Weather_SetEnabled(%s)" ),
			{
				name = "SplashQuality",
				type = Variable,
				get = "Weather_GetSplashQuality()",
				set = "Weather_SetSplashQuality(%f)",
				stepsize = 1,
				min = 0,
				max = 2,
				var_type = Float,
			},				
		},
	},

	{
		name = "Terrain",
		type = SubMenu,
		SubMenuItems =
		{
			newboolean( "Overdraw", "dirt_getdebugstate([[overdraw]])", "dirt_setdebugstate([[overdraw]], %s)" ),
			newboolean( "Overall Perf", "dirt_getdebugstate([[perfinfo]])", "dirt_setdebugstate([[perfinfo]], %s)" ),
			newboolean( "Chunk Perf", "dirt_getdebugstate([[chunkperf]])", "dirt_setdebugstate([[chunkperf]], %s)" ),
		},
	},

	{
		name = "Reload",
		type = SubMenu,
		
		SubMenuItems = 
		{
			newelement("PBG_ReloadMouseOverWeapon",		"",		"PBG_ReloadMouseOverWeapon()", NO_MP ),
		}
	},
	
	{
		name = "Memory",
		type = SubMenu,
		
		SubMenuItems = 
		{
			newelement("Toggle Pool Watcher", "", "poolwatch()" ),
		}
	},
	
	{
		name = "Statgraph",
		type = SubMenu,
		
		SubMenuItems = 
		{
			{
				name = "Show Graph",
				type = Variable,
				get = "statgraph_get_visible()",
				set = "statgraph_set_visible(%s)",
				var_type = Boolean,
			},
			statgraph_item("fpsavg"),
			statgraph_item("maxcommandlag"),
			statgraph_item("simulationtime"),
			statgraph_item("simrate"),
			statgraph_item("simupdatetime"),
			statgraph_item("fx object count"),
			statgraph_item("viz_objects"),
			{
				name = "Memory",
				type = SubMenu,
			
				SubMenuItems = 
				{
					statgraph_item("mem_allocn_cur","Toggle Current Allocations"),
					statgraph_item("mem_size_cur","Toggle Current Size"),
					statgraph_item("mem_allocn_max","Toggle Max Allocations"),
					statgraph_item("mem_size_max","Toggle Max Size"),
				},
			},

			{
				name = "Physics",
				type = SubMenu,
			
				SubMenuItems = 
				{
					statgraph_item("phy_orphanmanager_numorphans","Toggle Num Orphans"),
					statgraph_item("phy_orphanmanager_numnonfixedorphans","Toggle Num Non-Fixed Orphans"),
					statgraph_item("phy_world_numbodies","Toggle Num World Bodies"),
					statgraph_item("hkphy_worldimp_numislands","Toggle Num hk Islands"),
					statgraph_item("hkphy_worldimp_numbodies","Toggle Num hk Bodies"),
					statgraph_item("hkphy_worldimp_numactiveislands","Toggle Num Active Islands"),
					statgraph_item("hkphy_worldimp_numactivebodies","Toggle Num Active Bodies"),
					statgraph_item("hkphy_worldimp_numaabbsinbroadphase","Toggle Num AABB In BroadphaseBodies"),
				},
			},

			{
				name = "Network",
				type = SubMenu,
			
				SubMenuItems = 
				{
					statgraph_item("localcommandlag"),
					statgraph_item("maxcommandlag"),
					newseperator(),
					statgraph_item("netcurrentperiod"),
					statgraph_item("nettargetperiod"),
					statgraph_item("netperfectperiod"),
					statgraph_item("nettargetqueue"),
					statgraph_item("netremotequeue"),
					statgraph_item("netlocalqueue"),
				},
			},

			{
				name = "Texture",
				type = SubMenu,
			
				SubMenuItems = 
				{
					statgraph_item("texture_change"),
					statgraph_item("texture_limit"),
					statgraph_item("texture_used"),
					statgraph_item("texture_memory"),
					statgraph_item("terraintexture_update"),
				},
			},
			
			{
				name = "FX",
				type = SubMenu,
			
				SubMenuItems = 
				{
					statgraph_item("fx_batchnum"),
					statgraph_item("fx_objectnum"),
					statgraph_item("fx_trinum"),
				},
			},

			{
				name = "Rendering",
				type = SubMenu,
			
				SubMenuItems = 
				{
					statgraph_item("sp_devicerendercalls"),
					statgraph_item("sp_dynamicverts"),
					statgraph_item("sp_rendercalls"),
					statgraph_item("sp_rendersimplecalls"),
					statgraph_item("sp_shaderchanges"),
					statgraph_item("sp_skinnedverts"),
					statgraph_item("sp_staticverts"),
					statgraph_item("sp_tris"),
					statgraph_item("sp_verts"),
				},
			},

			{
				name = "Sound",
				type = SubMenu,
			
				SubMenuItems = 
				{
					statgraph_item("snd_shark_cpu"),
					statgraph_item("snd_fmod_cpu"),
					statgraph_item("snd_total_cpu"),
					statgraph_item("snd_used_voices"),
					statgraph_item("snd_low_intensity_music"),
					statgraph_item("snd_high_intensity_music"),
				},
			},
		},
	},
	
	{
		name = "Testing",
		type = SubMenu,
		
		SubMenuItems = 
		{
		--[[
			{
				name = "Scripting",
				type = SubMenu,

				SubMenuItems = 
				{
					{
						name = "Record",
						type = Variable,
						get = "ScriptRec_IsRecording()",
						set = "ScriptRec_SetRecording(%s)",
						var_type = Boolean,
					},
				
				}
			},
			newseperator(),
			]]
			newelement( "Delete World Objects", "", [[DeleteWorldObjects()]] , NO_MP ),
			newelement( "Log World Objects", "", "LogWorldObjects()", NO_MP ),
			{
				name = "Spawn World Objects",
				type = SubMenu,

				SubMenuItems = 
				{
					newelement( "Spawn All gameplay", "", [[CreateENVObjects("ebps\\world_objects\\gameplay\\")]], NO_MP ),
					newelement( "Spawn desert_objects buildings", "", [[CreateENVObjects("ebps\\world_objects\\desert_objects\\buildings\\")]], NO_MP ),
					newelement( "Spawn ice_objects buildings", "", [[CreateENVObjects("ebps\\world_objects\\ice_objects\\buildings\\")]], NO_MP ),
					newelement( "Spawn jungle_objects buildings", "", [[CreateENVObjects("ebps\\world_objects\\jungle_objects\\buildings\\")]], NO_MP ),
					newelement( "Spawn military_objects buildings", "", [[CreateENVObjects("ebps\\world_objects\\military_objects\\buildings\\")]], NO_MP ),
					newelement( "Spawn urban_objects buildings", "", [[CreateENVObjects("ebps\\world_objects\\urban_objects\\buildings\\")]], NO_MP ),

--					newelement( "Spawn All vehicles", "", [[CreateENVObjects("ebps\\world_objects\\vehicles\\")]], NO_MP ),
--					newelement( "Spawn All vehicles_pvp", "", [[CreateENVObjects("ebps\\world_objects\\vehicles_pvp\\")]], NO_MP ),

					newelement( "Spawn All volcanic_objects", "", [[CreateENVObjects("ebps\\world_objects\\volcanic_objects\\")]], NO_MP ),
				}
			},
			
		}
	},
	
	{
		name = "Demo",
		type = SubMenu,
		SubMenuItems =
		{
			newboolean( "HideUI", "hideUI_GetEnabled()", "hideUI_SetEnabled(%s)" ),
			newelement( "Take Super Screenshot", "SHIFT+S", "TakeSuperScreenShot()" ),
			
		},
	},
}
