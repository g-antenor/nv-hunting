for animalName, animalData in pairs(Config.Animals) do
    if Config.Target == 'qb' then
        exports['qb-target']:AddTargetModel(animalData.model, {
            options = {
                {
                    icon = 'knife',
                    label = 'Esfolar ' .. animalName,
                    canInteract = function(entity)
                        return IsEntityDead(entity) and hunting.CheckWeapon()
                    end,
                    action = function(entity)
                        lib.callback('hunting:server:CutList', false, function(result)
                            hunting.CutCount(result)
                            hunting.ThisEntity(entity)
                            hunting.TaskCutAnimal(animalName)
                        end, entity, animalData.cut)
                    end
                }
            },
            distance = 1.5
        })
    elseif Config.Target == 'ox' then
        exports.ox_target:addModel(animalData.model, {
            {
                icon = 'knife',
                label = 'Esfolar ' .. animalName,
                canInteract = function(entity)
                    return IsEntityDead(entity) and hunting.CheckWeapon()
                end,
                onSelect = function(entity)
                    lib.callback('hunting:server:CutList', false, function(result)
                        hunting.CutCount(result)
                        hunting.ThisEntity(entity.entity)
                        hunting.TaskCutAnimal(animalName)
                    end, entity.entity, animalData.cut)
                end,
                distance = 1.5
            }
        })
    end
end
