variable_list =
{
	{
		name = "World",
		type = Matrix4f,
		mode = Dynamic
	},
	{
		name = "layerTexture0",
		type = Texture,
		mode = Dynamic
	},
	{
		name = "layerTexture1",
		type = Texture,
		mode = Dynamic
	},	
	{
		name = "layerTexture2",
		type = Texture,
		mode = Dynamic
	},	
	{
		name = "layerTexture3",
		type = Texture,
		mode = Dynamic
	},	
	{
		name = "layerTexture4",
		type = Texture,
		mode = Dynamic
	},	
	{
		name = "layerTexture5",
		type = Texture,
		mode = Dynamic
	},	
	{
		name = "layerTexture6",
		type = Texture,
		mode = Dynamic
	},	
	{
		name = "layerTexture7",
		type = Texture,
		mode = Dynamic
	},		
	{
		name = "mask0Select",
		type = Vector4f,
		mode = Dynamic,
		length = 8
	},
	{
		name = "mask1Select",
		type = Vector4f,
		mode = Dynamic,
		length = 8
	},
	{
		name = "numActiveLayers",
		type = int,
		mode = Dynamic,
	},
};

script_list =
{
	{
		script = "terrain_tileongeometry.fx",
	},
};

inputlayouts = 
{
	"TerrainTile"
};
