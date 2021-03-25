variable_list =
{
	{
		name = "diffuseTexture",
		type = Texture,
		mode = Dynamic
	},
	{
		name = "diffuseOffsetScale",
		type = Vector4f,
		mode = Dynamic
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
		script = "terrainoverlay.fx",
	},
};

inputlayouts = 
{
	"TerrainBaseMesh"
};
