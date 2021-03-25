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
		name = "glossValue",
		type = float,
		mode = Static
	},

};

script_list =
{
	{
		script = "dow2_dynamic_world_object_two_uv.fx",
	},
};

inputlayouts = 
{
	"Building",
	"BuildingSkinned"
};
