local cutCount = 0
local thisEntity = nil
hunting = {}

function hunting.CheckWeapon()
    local weaponHash = GetSelectedPedWeapon(PlayerPedId())
    return weaponHash == GetHashKey(Config.WeaponKnife) and true or false
end

function hunting.CutCount(value) cutCount = value end
function hunting.ThisEntity(entity) thisEntity = entity end

function hunting.TaskCutAnimal(animal)
    local ped = PlayerPedId()

    RequestAnimDict(Config.LootDict)
	while not HasAnimDictLoaded(Config.LootDict) do
	    Wait(100)
	end
	TaskPlayAnim(ped, Config.LootDict, Config.LootClip, 1.0, -1.0, 1.0, 11, 0, 0, 0, 0)

    if exports.bl_ui:CircleProgress(Config.Waves, Config.Difficulty) and lib.progressCircle({
        duration = 5000,
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
            move = true,
            combat = true
        },
        anim = {
            dict = 'anim@gangops@facility@servers@bodysearch@',
            clip = 'player_search'
        }
    }) then
        local stress = math.random(1, 2)
        TriggerServerEvent('hud:server:RelieveStress', stress)

        TriggerServerEvent('hunting:server:DropItems', animal)
    end
    
    ClearPedTasks(ped)
    if cutCount <= 0 then
        DeleteEntity(thisEntity)
    end
end

