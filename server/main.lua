local cutList = {}

RegisterNetEvent('hunting:server:DropItems', function(animal)
    for animalName, animalData in pairs(Config.Animals) do
        if animal == animalName then
            hunting.DecayKnife()
            hunting.DropItems(animalData)
        end
    end
end)

lib.callback.register('hunting:server:CutList', function(cutVal, entity)
    if cutList[entity] then
        cutList[entity].cut = cutList[entity].cut - 1

        if cutList[entity].cut <= 0 then
            cutList[entity] = nil
            return 0
        end
    else
        cutList[entity] = { cut = cutVal }
    end
    
    return cutList[entity].cut
end)

