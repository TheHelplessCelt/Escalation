variable_list =
{
	{
		name = "tex0",
		type = Texture,
		mode = Dynamic
	},
	{
		name = "tex1",
		type = Texture,
		mode = Dynamic
	},
	{
		name = "tex2",
		type = Texture,
		mode = Dynamic
	},
	{
		name = "texAdaptedLum",
		type = Texture,
		mode = Dynamic
	},
	{
		name = "ScreenSize",
		type = Vector2f,
		mode = Dynamic
	},
	{
		name = "toneMapElapsedTime",
		type = float,
		mode = Dynamic,
	},
	{
		name = "blurEnabled",
		type = bool,
		mode = Dynamic,
	},
};

script_list =
{
	{
		script = "pp_hdr.fx",
	},
};

inputlayouts = 
{
	"SimpleVertex"
};
