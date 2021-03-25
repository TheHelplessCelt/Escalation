variable_list =
{
	{
		name = "diffuseTex",
		type = Texture,
		mode = Static
	},
	{
		name = "colour",
		type = Vector4f,
		mode = Dynamic
	},	
	{
		name = "World",
		type = Matrix4f,
		mode = Dynamic
	},	
	{
		name = "useLighting",
		type = bool,
		mode = Dynamic
	},
	{
		name = "useDepthTest",
		type = bool,
		mode = Dynamic
	}	
};

script_list =
{
	{
		script = "dow2_fxmesh_additive.fx",
	},
};

inputlayouts = 
{
	"Standard",
	"StandardSkinned"
};
