
local MakePlayerCharacter = require "prefabs/player_common"

-- Your character's stats
TUNING.BARB_HEALTH = 300
TUNING.BARB_HUNGER = 250
TUNING.BARB_SANITY = 150

-- Custom starting inventory
TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.BARB = {
	
}

local assets = {
        Asset("SCRIPT", "scripts/prefabs/player_common.lua"),

}

local prefabs = {

}

local start_inv = {}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
    start_inv[string.lower(k)] = v.BARB
end

local prefabs = FlattenTree(start_inv, true)

-- When the character is revived from human
local function onbecamehuman(inst)
	-- Set speed when not a ghost (optional)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "barb_speed_mod", 1)
end

local function onbecameghost(inst)
	-- Remove speed modifier when becoming a ghost
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "barb_speed_mod")
end

-- When loading or spawning the character
local function onload(inst)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)

    if inst:HasTag("playerghost") then
        onbecameghost(inst)
    else
        onbecamehuman(inst)
    end
end


-- This initializes for both the server and client. Tags can be added here. [Это инициализирует как сервер, так и клиент. Теги можно добавлять здесь.]
local common_postinit = function(inst) 
	-- Minimap icon [Иконка персонажа на карте]
	inst.MiniMapEntity:SetIcon( "barb.tex" )
end

-- This initializes for the server only. Components are added here.
local master_postinit = function(inst)
	-- Set starting inventory
    inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
	
	-- choose which sounds this character will play
	inst.soundsname = "barb"
	
	-- Uncomment if "wathgrithr"(Wigfrid) or "webber" voice is used
    --inst.talker_path_override = "dontstarve_DLC001/characters/"
	
	-- Stats	
	inst.components.health:SetMaxHealth(TUNING.BARB_HEALTH)
	inst.components.hunger:SetMax(TUNING.BARB_HUNGER)
	inst.components.sanity:SetMax(TUNING.BARB_SANITY)
	
	-- Damage multiplier (optional)
    inst.components.combat.damagemultiplier = 1
	
	-- Hunger rate (optional)
	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE
	
	inst.OnLoad = onload
    inst.OnNewSpawn = onload
	
end




return MakePlayerCharacter("barb", prefabs, assets, common_postinit, master_postinit, prefabs)
