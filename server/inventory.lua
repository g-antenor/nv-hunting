local QBCore = exports['qb-core']:GetCoreObject()
hunting = {}


function hunting.DecayKnife()
    local itemName = Config.WeaponKnife
    local degrade = math.random(1, 3)
    local player = QBCore.Functions.GetPlayer(source)
    local item = player.Functions.GetItemByName(itemName)

    if not item then return end

    local currentDurability = item.info.durability or 100
    local newDurability = currentDurability - degrade

    if newDurability <= 0 then
        if Config.Inventory == 'ox' then 
            exports.ox_inventory:RemoveItem(source, itemName, 1)
        else 
            player.Functions.RemoveItem(itemName, 1) 
        end
    else
        if Config.Inventory == 'ox' then
            exports.ox_inventory:SetDurability(source, item.slot, newDurability)
        else
            item.info.durability = newDurability
            player.Functions.SetInventory(player.PlayerData.items)
        end
    end
end


---@param items any
function hunting.DropItems(items)
    if Config.Inventory == 'ox' then
        exports.ox_inventory:AddItem(source, items.drop[1], 1)
        if items.drop[2] and Config.Chance > math.random(1, 10) then
            exports.ox_inventory:AddItem(source, items.drop[2], 1)
        end
    else
        local player = QBCore.Functions.GetPlayer(source)
        player.Functions.AddItem(items.drop[1], 1)
        if items.drop[2] and Config.Chance > math.random(1, 10) then
            player.Functions.AddItem(items.drop[2], 1)
        end
    end
end