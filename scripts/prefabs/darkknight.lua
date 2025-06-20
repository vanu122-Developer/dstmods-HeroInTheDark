local MakePlayerCharacter = require "prefabs/player_common"

local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}

--- Your character's stats
TUNING.DARKKNIGHT_HEALTH = 250
TUNING.DARKKNIGHT_HUNGER = 150
TUNING.DARKKNIGHT_SANITY = 200

--- Custom starting inventory
TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.DARKKNIGHT = {
	"dksword"
}

local start_inv = {}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
    start_inv[string.lower(k)] = v.DARKKNIGHT
end
local prefabs = FlattenTree(start_inv, true)

-- When the character is revived from human
local function onbecamehuman(inst)
	-- Set speed when not a ghost (optional)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "darkknight_speed_mod", 1)
end

local function onbecameghost(inst)
	-- Remove speed modifier when becoming a ghost
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "darkknight_speed_mod")
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
	inst.MiniMapEntity:SetIcon( "darkknight.tex" )
end

-- This initializes for the server only. Components are added here.
local master_postinit = function(inst)
	-- Set starting inventory
    inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
	
	-- choose which sounds this character will play
	inst.soundsname = "wolfgang"
	
	-- Uncomment if "wathgrithr"(Wigfrid) or "webber" voice is used
    --inst.talker_path_override = "dontstarve_DLC001/characters/"
	
	-- Stats	
	inst.components.health:SetMaxHealth(TUNING.DARKKNIGHT_HEALTH)
	inst.components.hunger:SetMax(TUNING.DARKKNIGHT_HUNGER)
	inst.components.sanity:SetMax(TUNING.DARKKNIGHT_SANITY)
	
	-- Damage multiplier (optional)
    inst.components.combat.damagemultiplier = 1
	
	-- Hunger rate (optional)
	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE
	
	inst.OnLoad = onload
    inst.OnNewSpawn = onload
	
end

return MakePlayerCharacter("darkknight", prefabs, assets, common_postinit, master_postinit, prefabs)