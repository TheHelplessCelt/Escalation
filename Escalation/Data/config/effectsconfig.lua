-- this file is used to fine tune lod fx distances, maximum lod levels, particle counts, etc..
-- levels can be: low, medium, high, ultra (they mathc the fx detail level settings),.
-- any level not defined here will get its default hard coded values. 
-- If a level is defined here all parameters for that level must be defined.
-- parameteres within a level must be defined in the exact order. (settingName,nearDist,farDist,renderLimit,objLimit,maxLOD

FXLODSettings =
{
	{
		-- settingName can be either : "low" , "medium", "high" or "ultra"
		settingName="low",
		-- thesholds to switch between  lod levels
		nearDist= 10,
		farDist= 46,
		-- maximum number of particles rendered at a given time.
		renderLimit= 200, 
		-- maximum number of effects playing at a given time.
		objLimit= 2000,
		-- maximum LOD level allowed  either:  "low" , "medium" or "high"
		maxLOD="medium",
	},
	{
		settingName="medium",
		nearDist= 46,
		farDist= 100,
		renderLimit= 500, 
		objLimit= 4000,
		maxLOD="high",
	},
	{
		settingName="high",
		nearDist= 46,
		farDist= 100,
		renderLimit= 1000, 
		objLimit= 6000,
		maxLOD="high",
	},
	{
		settingName="ultra",
		nearDist= 60,
		farDist= 200,
		renderLimit= 2000, 
		objLimit= 10000,
		maxLOD="high",
	},
}
