variable_list =
{
	{
		name = "World",
		type = Matrix4f,
		mode = Dynamic
	},
	{
		name = "crustTex",
		type = Texture,
		mode = Static
	},
	{
		name = "lavaTex",
		type = Texture,
		mode = Static
	},
	{
		name = "lavaRevealTex",
		type = Texture,
		mode = Static
	},
	{
		name = "crustNormalMapTex",
		type = Texture,
		mode = Static
	},
};

script_list =
{
	{
		script = "dow2_lava_object.fx",
	},
};

inputlayouts = 
{
	"Building"
	--"BuildingSkinned"
	--"Standard",
	--"StandardSkinned"
};
