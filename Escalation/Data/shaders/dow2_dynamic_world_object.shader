variable_list =
{
	{
		name = "unitOcclusionFlag",
		type = int,
		mode = Dynamic
	},
	{
		name = "bHighlight",
		type = bool,
		mode = Dynamic
	},
	{
		name = "alphaTest",
		type = bool,
		mode = Static
	},
	{
		name = "HighlightColour",
		type = Vector4f,
		mode = Dynamic,
		length = 2
	},
	{
		name = "World",
		type = Matrix4f,
		mode = Dynamic
	},
	{
		name = "diffuseTex",
		type = Texture,
		mode = Static
	},
	{
		name = "normalMap",
		type = Texture,
		mode = Static
	},
	{
		name = "occlusionTex",
		type = Texture,
		mode = Static
	},
	{
		name = "glossTex",
		type = Texture,
		mode = Static
	},
	{
		name = "specularTex",
		type = Texture,
		mode = Static
	},
	{
		name = "emissiveTex",
		type = Texture,
		mode = Static
	},
	{
		name = "emissiveMultiplier",
		type = Float,
		mode = Animated
	},
	{
		name = "uOffset",
		type = float,
		mode = Animated
	},
	{
		name = "vOffset",
		type = float,
		mode = Animated
	},
	{
		name = "glossValue",
		type = float,
		mode = Static
	},
};

script_list =
{
	{
		script = "dow2_dynamic_world_object.fx",
	},
};

inputlayouts = 
{
	"Standard",
	"StandardSkinned"
};
