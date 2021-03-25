variable_list =
{
	{
		name = "diffuseTexture",
		type = Texture,
		mode = Dynamic
	},
	{
		name = "specularTexture",
		type = Texture,
		mode = Dynamic
	},	
	{
		name = "normalTexture",
		type = Texture,
		mode = Dynamic
	},	
	{
		name = "lightmapUVMatrix",
		type = Matrix4f,
		mode = Dynamic,
	},		
	{
		name = "stripMirror",
		type = Vector2f,
		mode = Dynamic,
	},			
};

script_list =
{
	{
		script = "terrain_stripongeometry.fx",
	},
};

inputlayouts = 
{
	"TerrainStrip"
};
