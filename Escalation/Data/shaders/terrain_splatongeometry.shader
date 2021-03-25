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
		name = "textureSize",
		type = Vector2f,
		mode = Dynamic
	},		
	{
		name = "splatUVRect",
		type = Vector4f,
		mode = Dynamic,
		length = 30
	},	
	{
		name = "splatColour",
		type = Vector4f,
		mode = Dynamic,
		length = 30		
	},
	{
		name = "splatCenterPos_UDir",
		type = Vector4f,
		mode = Dynamic,
		length = 30		
	},		
	{
		name = "splatXY2UV",
		type = Vector4f,
		mode = Dynamic,
		length = 30		
	},			
	{
		name = "lightmapUVMatrix",
		type = Matrix4f,
		mode = Static,
	},			
};

script_list =
{
	{
		script = "terrain_splatongeometry.fx",
	},
};

inputlayouts = 
{
	"TerrainSplat"
};
