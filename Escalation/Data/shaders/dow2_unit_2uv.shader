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
		name = "dirtVisibility",
		type = Float,
		mode = Animated
	},
	{
		name = "World",
		type = Matrix4f,
		mode = Dynamic
	},
	{
		name = "alphaTest",
		type = bool,
		mode = Static
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
		name = "teamTex",
		type = Texture,
		mode = Dynamic
	},
	{
		name = "teamColour",
		type = Vector4f,
		mode = Dynamic,
		length = 8,
	},
	{
		name = "badge1Tex",
		type = Texture,
		mode = Dynamic
	},
	{
		name = "badge2Tex",
		type = Texture,
		mode = Dynamic
	},
	{
		name = "badge1MatrixRow1Row2",
		type = Vector4f,
		mode = Static
	},
	{
		name = "badge2MatrixRow1Row2",
		type = Vector4f,
		mode = Static
	},
	{
		name = "badge1Translate",
		type = Vector4f,
		mode = Static
	},
	{
		name = "badge2Translate",
		type = Vector4f,
		mode = Static
	},
	{
		name = "emissiveTex",
		type = Texture,
		mode = Static
	},
	{
		name = "emissiveMultiplier",
		type = float,
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
};

script_list =
{
	{
		script = "dow2_unit_2uv.fx",
	},
};

inputlayouts = 
{
	"Building",
	"BuildingSkinned"
};
