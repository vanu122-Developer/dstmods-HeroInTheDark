local assets =
{
	Asset( "ANIM", "anim/darkknight.zip" ),
	Asset( "ANIM", "anim/ghost_darkknight_build.zip" ),
}

local skins =
{
	normal_skin = "darkknight",
	ghost_skin = "ghost_DarkKnight_build",
}

return CreatePrefabSkin("darkknight_none",
{
	base_prefab = "darkknight",
	type = "base",
	assets = assets,
	skins = skins, 
	skin_tags = {"DARKKNIGHT", "CHARACTER", "BASE"},
	build_name_override = "darkknight",
	rarity = "Character",
})