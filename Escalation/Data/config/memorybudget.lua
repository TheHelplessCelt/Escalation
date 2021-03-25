-- list of known tags (at time of writing no centralize location):
--~ 	"Fixed (engine)"
--~ 	"Fixed (races/mod)"
--~ 	"User Interface"
--~ 	"FX"
--~ 	"Mission Specific"
--~ 	"NIS"

--  enumerations from MemoryBudget.h
--~ 	DL_Minimal,	//  64meg video card
--~ 	DL_Low,		// 128meg video card
--~ 	DL_Medium,	// 256meg video card
--~ 	DL_Full,	// 512meg video card

--~ 	ObjectType_RenderModel,
--~ 	ObjectType_Terrain,
--~ 	ObjectType_FX,
--~ 	ObjectType_RenderBuffer,
--~ 	ObjectType_UI,

--~ 	BP_StaticSystem,
--~ 	BP_StaticVideo,
--~ 	BP_InstanceSystem,
--~ 	BP_InstanceVideo,

DefaultMission=
{
	--DetailMinimal =
	{
		--RenderModel =
		{
			0, -- static system memory
			0, -- static video memory
			0, -- instance system memory
			0, -- instance video memory
		},
		--Terrain =
		{
			0, -- static system memory
			0, -- static video memory
			0, -- instance system memory
			0, -- instance video memory
		},
		--FX =
		{
			0, -- static system memory
			0, -- static video memory
			0, -- instance system memory
			0, -- instance video memory
		},
		--RenderBuffer =
		{
			0, -- static system memory
			0, -- static video memory
			0, -- instance system memory
			0, -- instance video memory
		},
		--UI =
		{
			0, -- static system memory
			0, -- static video memory
			0, -- instance system memory
			0, -- instance video memory
		},
	},
	--DetailLow =
	{
		--RenderModel =
		{
			0, -- static system memory
			0, -- static video memory
			0, -- instance system memory
			0, -- instance video memory
		},
		--Terrain =
		{
			0, -- static system memory
			0, -- static video memory
			0, -- instance system memory
			0, -- instance video memory
		},
		--FX =
		{
			0, -- static system memory
			0, -- static video memory
			0, -- instance system memory
			0, -- instance video memory
		},
		--RenderBuffer =
		{
			0, -- static system memory
			0, -- static video memory
			0, -- instance system memory
			0, -- instance video memory
		},
		--UI =
		{
			0, -- static system memory
			0, -- static video memory
			0, -- instance system memory
			0, -- instance video memory
		},
	},
	--DetailMedium =
	{
		--RenderModel =
		{
			0, -- static system memory
			0, -- static video memory
			0, -- instance system memory
			0, -- instance video memory
		},
		--Terrain =
		{
			0, -- static system memory
			0, -- static video memory
			0, -- instance system memory
			0, -- instance video memory
		},
		--FX =
		{
			0, -- static system memory
			0, -- static video memory
			0, -- instance system memory
			0, -- instance video memory
		},
		--RenderBuffer =
		{
			0, -- static system memory
			0, -- static video memory
			0, -- instance system memory
			0, -- instance video memory
		},
		--UI =
		{
			0, -- static system memory
			0, -- static video memory
			0, -- instance system memory
			0, -- instance video memory
		},
	},
	--DetailNormal =
	{
		--RenderModel =
		{
			48*1024*1024, -- static system memory
			145*1024*1024, -- static video memory
			16*1024*1024, -- instance system memory
			15*1024*1024, -- instance video memory
		},
		--Terrain =
		{
			0*1024*1024, -- static system memory
--We don't track this properly yet. -iant
--			32*1024*1024, -- static system memory
			32*1024*1024, -- static video memory
			0*1024*1024, -- instance system memory
			0*1024*1024, -- instance video memory
		},
		--FX =
		{
			0*1024*1024, -- static system memory
			0*1024*1024, -- static video memory
			0*1024*1024, -- instance system memory
--We don't track this properly yet. -iant
--			2*1024*1024, -- static system memory
--			28*1024*1024, -- static video memory
--			1*1024*1024, -- instance system memory
			0*1024*1024, -- instance video memory
		},
		--RenderBuffer =
		{
			0*1024*1024, -- static system memory
			0*1024*1024, -- static video memory
			0*1024*1024, -- instance system memory
			0*1024*1024, -- instance video memory
		},
		--UI =
		{
			0*1024*1024, -- static system memory
			0*1024*1024, -- static video memory
			0*1024*1024, -- instance system memory
			0*1024*1024, -- instance video memory
		},
	},
}



-- World Builder calls this function to find out the budget for a particular setting
function GetBudget( detailLevel, tag, budgetPool, objectType, missionName )
	-- allow scenario specific budget overrides
	if( "M01_D-Day" == missionName ) then
		Mission = DefaultMission;
	else
		Mission = DefaultMission;
	end

	-- look up the memory budget guidelines
	if "Fixed (engine)" == tag then
		return -1;
	elseif "Fixed (races/mod)" == tag then
		return -1
	elseif "User Interface" == tag then
		return -1
	elseif "FX" == tag then
		return -1
	elseif "Mission Specific" == tag then
		return Mission[detailLevel+1][objectType+1][budgetPool+1]
	elseif "NIS" == tag then
		return -1
	else
		return -1
	end
end
