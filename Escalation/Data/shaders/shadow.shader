variable_list =
{
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
		script = "shadow.fx",
	},
};

inputlayouts = 
{
	"Standard",
	"StandardSkinned"
};
