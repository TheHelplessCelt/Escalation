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
};

script_list =
{
	{
		script = "dow2_terrain_tile_object.fx",
	},
};

inputlayouts = 
{
	"Standard",
	"StandardSkinned"	
};
