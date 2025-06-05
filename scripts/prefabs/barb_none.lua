local assets =
{
	Asset( "ANIM", "anim/barb.zip" ),
	Asset( "ANIM", "anim/ghost_barb_build.zip" ),
}

local skins =
{
	normal_skin = "barb",
	ghost_skin = "ghost_Barb_build",
}

return CreatePrefabSkin("barb_none",
{
	base_prefab = "barb",
	type = "base",
	assets = assets,
	skins = skins, 
	skin_tags = {"BARB", "CHARACTER", "BASE"},
	build_name_override = "barb",
	rarity = "Character",
})