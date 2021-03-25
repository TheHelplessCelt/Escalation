variable_list =
{
	{
		name = "World",
		type = Matrix4f,
		mode = Dynamic
	},
	{
		name = "scarTexture",
		type = Texture,
		mode = Static
	},
	{
		name = "orthoProj",
		type = Matrix4f,
		mode = Dynamic
	},
	{
		name = "impactInfo",
		type = Matrix4f,
		mode = Dynamic
	},
	{
		name = "scarTextureSource",
		type = Texture,
		mode = Dynamic
	},
};

script_list =
{
	{
		script = "objectscarring.fx",
	},
};

inputlayouts = 
{
	"Standard",
};
