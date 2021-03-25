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
		name = "overlayTex",
		type = Texture,
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
		name = "glossValue",
		type = float,
		mode = Static
	},

};

script_list =
{
	{
		script = "dow2_building_brick.fx",
	},
};

inputlayouts = 
{
	"Building",
	"BuildingSkinned"
};
