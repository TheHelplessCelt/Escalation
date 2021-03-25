variable_list =
{
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
		name = "cliffTex1",
		type = Texture,
		mode = Static
	},
	{
		name = "cliffNormalTex1",
		type = Texture,
		mode = Static
	},
	{
		name = "grassTex1",
		type = Texture,
		mode = Static
	},
	{
		name = "grassNormalTex1",
		type = Texture,
		mode = Static
	},
};

script_list =
{
	{
		script = "dow2_terrain_object.fx",
	},
};

inputlayouts = 
{
	"TerrainObject",
	"TerrainObjectSkinned"
};
