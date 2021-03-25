variable_list =
{
	{
		name = "World",
		type = Matrix4f,
		mode = Dynamic
	},
	{
		name = "WaterReflectionMode",
		type = Bool,
		mode = Dynamic
	},
	{
		name = "WaterAspectRatio",
		type = Vector2f,
		mode = Dynamic
	},
	{
		name = "WaterColourWindScale",
		type = Vector2f,
		mode = Dynamic
	},
	{
		name = "WaterReflectionTexture",
		type = Texture,
		mode = Dynamic
	},
	{
		name = "WaterReflection_NormalMap",
		type = Texture,
		mode = Dynamic
	},
	{
		name = "WaterReflection_ColourWindTexture",
		type = Texture,
		mode = Dynamic
	},
	{
		name = "WaterReflection_FoamMap",
		type = Texture,
		mode = Dynamic
	},
	{
		name = "WaterReflection_SurfaceOffset",
		type = Vector4f,
		mode = Dynamic
	},
	{
		name = "WaterReflection_WindDirection",
		type = Vector2f,
		mode = Dynamic
	},
	{
		name = "WaterReflection_SurfaceBumpiness",
		type = float,
		mode = Dynamic
	},
	{
		name = "WaterReflection_ScreenScaleOffset",
		type = Vector4f,
		mode = Dynamic
	},
};

script_list =
{
	{
		script = "terrainwater.fx",
	},
};

inputlayouts = 
{
	"TerrainWater"
};
