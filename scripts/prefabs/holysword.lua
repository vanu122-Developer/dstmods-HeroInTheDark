local assets = {
    Asset("ANIM", "anim/holysword.zip"),
    Asset("ANIM", "anim/swap_holysword.zip"),

    Asset("ATLAS", "images/inventoryimages/holysword.xml"),
    Asset("IMAGE", "images/inventoryimages/holysword.tex"),
}

local GLOBAL = _G
local HOLY_SWORD_DAMAGE=40
local HOLY_SWORD_LEECH=5


local function OnEquip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_holysword", "holysword")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end

local function OnUnequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
end

-- This function will be called on each successful attack
local function OnAttack(weapon, attacker, target)
    if attacker and attacker.components.health then 
        attacker.components.sanity:DoDelta(HOLY_SWORD_LEECH) -- heals the attacker by 5 Sanity
    end
end

local function fn()
    local inst = CreateEntity()


    inst.entity:AddTransform()
    inst.entity:AddAnimState()

    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("holysword")
    inst.AnimState:SetBuild("holysword")
    inst.AnimState:PlayAnimation("idle")

    inst.entity:AddMiniMapEntity()
    inst.MiniMapEntity:SetIcon("holysword.tex")

    inst:AddTag("sharp")

    if not (GLOBAL.TheWorld and GLOBAL.TheWorld.ismastersim) then
        return inst
    end


    inst.entity:SetPristine()


    -- Add weapon component and set its damage
    inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(HOLY_SWORD_DAMAGE)
    inst.components.weapon:SetOnAttack(OnAttack) -- Register our on-attack callback

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "holysword"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/holysword.xml"
    

    inst:AddComponent("equippable")
    inst.components.equippable:SetOnEquip(OnEquip)
    inst.components.equippable:SetOnUnequip(OnUnequip)

    return inst
end

return Prefab("common/inventory/holysword", fn, assets)