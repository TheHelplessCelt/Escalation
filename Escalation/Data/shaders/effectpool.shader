variable_list =
{
	{
		name = "World",
		type = Matrix4f,
		mode = Dynamic
	},
	{
		name = "View",
		type = Matrix4f,
		mode = Dynamic
	},
	{
		name = "Projection",
		type = Matrix4f,
		mode = Dynamic
	},
	{
		name = "g_bFogOfWar",
		type = bool,
		mode = Dynamic
	},
	{
		name = "FOWTexture",
		type = Texture,
		mode = Dynamic
	},
	{
		name = "FOWTextureWorldScaleOffset",
		type = Vector4f,
		mode = Dynamic
	},
	{
		name = "lightscatter_Texture",
		type = Texture,
		mode = Dynamic
	},
	{
		name = "fogConstant",
		type = Vector2f,
		mode = Dynamic
	},
	{
		name = "fog_light_direction",
		type = Vector3f,
		mode = Dynamic
	},
	{
		name = "fogLayerBaseHeight",
		type = float,
		mode = Dynamic
	},	
	{
		name = "fogLayerDepth",
		type = float,
		mode = Dynamic
	},
	{
		name = "fogContrast",
		type = float,
		mode = Dynamic
	},	
	{
		name = "fogSkyBlendHeight",
		type = float,
		mode = Dynamic
	},		
	{
		name = "ShadowVPMatrix",
		type = Matrix4f,
		mode = Dynamic
	},
	{
		name = "ShadowVPMatrixNear",
		type = Matrix4f,
		mode = Dynamic
	},
	{
		name = "ShadowVPMatrixFar",
		type = Matrix4f,
		mode = Dynamic
	},
	{
		name = "ShadowNearShift",
		type = Vector4f,
		mode = Dynamic
	},
	{
		name = "ShadowNearScale",
		type = Vector4f,
		mode = Dynamic
	},
	{
		name = "ShadowTextureNear",
		type = Texture,
		mode = Dynamic
	},
	{
		name = "ShadowTextureFar",
		type = Texture,
		mode = Dynamic
	},
	{
		name = "ShadowTextureResolution",
		type = Float,
		mode = Dynamic
	},
	{
		name = "ShadowNearFarCutOff",
		type = Vector3f,
		mode = Dynamic
	},
	{
		name = "g_shadow_intensity",
		type = Float,
		mode = Dynamic
	},
	{
		name = "ShadowDepthBias",
		type = Float,
		mode = Dynamic
	},
	{
		name = "ShadowNormalBias",
		type = Float,
		mode = Dynamic
	},
	{
		name = "ShadowSampleOffsetPCF0",
		type = Vector2f,
		mode = Dynamic
	},
	{
		name = "ShadowSampleOffsetPCF1",
		type = Vector2f,
		mode = Dynamic
	},
	{
		name = "ShadowSampleOffsetPCF2",
		type = Vector2f,
		mode = Dynamic
	},
	{
		name = "ShadowSampleOffsetPCF3",
		type = Vector2f,
		mode = Dynamic
	},
	{
		name = "g_bShadowsEnabled",
		type = bool,
		mode = Dynamic
	},
	{
		name = "g_bShadowsUseDualShadowMaps",
		type = bool,
		mode = Dynamic
	},
	{
		name = "g_bShadowsPcfEnabled",
		type = bool,
		mode = Dynamic
	},
	{
		name = "g_bShadowsUseHardwarePcf",
		type = bool,
		mode = Dynamic
	},
	{
		name = "g_bShadowsUseNvidiaPcf",
		type = bool,
		mode = Dynamic
	},	
	{
		name = "fxlight_sunDirection",
		type = Vector3f,
		mode = Dynamic
	},	
	{
		name = "fxlight_sunColour",
		type = Vector3f,
		mode = Dynamic
	},	
	{
		name = "fxlight_ambColour",
		type = Vector3f,
		mode = Dynamic
	},	
	{
		name = "fxlight_multiplier",
		type = float,
		mode = Dynamic
	},	
	{
		name = "fxlight_addition",
		type = float,
		mode = Dynamic
	},	
	{
		name = "halfTexelSize",
		type = float,
		mode = Dynamic
	},
	{
		name = "g_useTerrainLightmap",
		type = bool,
		mode = Dynamic
	},	
	{
		name = "soldierLightColour",
		type = Vector3f,
		mode = Dynamic
	},	
	{
		name = "soldierLightIntensity",
		type = float,
		mode = Dynamic
	},	
	{
		name = "soldierLightDir",
		type = Vector3f,
		mode = Dynamic
	},	
	{
		name = "soldierAmbientFactor",
		type = float,
		mode = Dynamic
	},
	{
		name = "giantShadowMapEnabled",
		type = bool,
		mode = Dynamic
	},
	{
		name = "giantShadowMap",
		type = Texture,
		mode = Dynamic
	},
	{
		name = "giantShadowMapOffset",
		type = Vector2f,
		mode = Dynamic
	},		
	{
		name = "waterObjectOffset",
		type = Vector2f,
		mode = Dynamic
	},		
	{
		name = "g_bPostProcessingEnabled",
		type = bool,
		mode = Dynamic
	},	
	{
		name = "sceneDepthTex",
		type = Texture,
		mode = Dynamic
	},
};

script_list =
{
	{
		script = "effectpool.fx",
	},
};

inputlayouts = 
{
	"SimpleVertex"
};
