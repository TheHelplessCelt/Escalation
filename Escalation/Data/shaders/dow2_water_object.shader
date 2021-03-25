variable_list =
{
	{
		name = "World",
		type = Matrix4f,
		mode = Dynamic
	},
	{
		name = "waterColourTex",
		type = Texture,
		mode = Static
	},
	{
		name = "waterTurbulenceTex",
		type = Texture,
		mode = Static
	},
	{
		name = "waterTurbulenceMaskTex",
		type = Texture,
		mode = Static
	},
	{
		name = "normalMapCoarseTex",
		type = Texture,
		mode = Static
	},
	{
		name = "normalMapFineTex",
		type = Texture,
		mode = Static
	},
	{
		name = "normalMapFoamTex",
		type = Texture,
		mode = Static
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
};

script_list =
{
	{
		script = "dow2_water_object.fx",
	},
};

inputlayouts = 
{
	"Building"
	--"BuildingSkinned"
	--"Standard",
	--"StandardSkinned"
};
