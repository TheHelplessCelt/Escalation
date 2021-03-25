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
		name = "alphaTest",
		type = bool,
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
		mode = Static
	},
	{
		name = "damageDiffuseTex",
		type = Texture,
		mode = Static
	},
	{
		name = "damageNormalTex",
		type = Texture,
		mode = Static
	},
	{
		name = "damageSpecTex",
		type = Texture,
		mode = Static
	},
	{
		name = "damageTexTilingFactor",
		type = Float,
		mode = Static
	},
	{
		name = "scarTexture",
		type = Texture,
		mode = Static
	},
	{
		name = "enableScarring",
		type = bool,
		mode = Static
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
		script = "dow2_static_world_object_with_scarring.fx",
	},
};

inputlayouts = 
{
	"Standard"
};
