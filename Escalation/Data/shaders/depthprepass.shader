variable_list =
{
	{
		name = "unitOcclusionFlag",
		type = int,
		mode = Dynamic
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
		name = "alphaTest",
		type = bool,
		mode = Static
	},
};

script_list =
{
	{
		script = "depthprepass.fx",
	},
};

inputlayouts = 
{
	"Standard",
	"StandardSkinned"
};
