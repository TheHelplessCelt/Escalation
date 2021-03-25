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
		name = "colour",
		type = Vector3f,
		mode = Dynamic
	},
	{
		name = "brightness",
		type = float,
		mode = Dynamic
	},
};

script_list =
{
	{
		script = "dow2_light.fx",
	},
};

inputlayouts = 
{
	"Standard",
};
