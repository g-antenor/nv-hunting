Config = {
    Target                      = 'qb',         -- 'qb' or 'ox'
    Inventory                   = 'qb',         -- 'qb' or 'ox'
    utils                       = 'qb',         -- 'qb' or 'ox'
    -----------------------------------------------------------------------------------------------------------------------------------------
    
    LootDict                    = 'amb@medic@standing@kneel@base',
    LootClip                    = 'base',
    
    -----------------------------------------------------------------------------------------------------------------------------------------
    WeaponGun                   = "WEAPON_MUSKET",
    WeaponKnife                 = "WEAPON_KNIFE",
    Chance = 5,
    Waves = 2,
    Difficulty = 20,
    Animals = {
        ['Javali']              = { model = 'a_c_boar',             cut = math.random(3, 5),    drop = { 'meat_boar',       'hide_boar'   }},
        ['Corvo']               = { model = 'a_c_crow',             cut = math.random(1, 2),    drop = { 'meat_crow'                      }},
        ['Cervo']               = { model = 'a_c_deer',             cut = math.random(2, 3),    drop = { 'meat_deer',       'hide_deer'   }},
        ['Rato']                = { model = 'a_c_rat',              cut = 1,                    drop = { 'meat_rat',        'hide_rat'    }},
        ['Coiote']              = { model = 'a_c_coyote',           cut = math.random(2, 3),    drop = { 'meat_coyote',     'hide_coyote' }},
        ['Leão da Montanha']    = { model = 'a_c_mtlion',           cut = math.random(2, 3),    drop = { 'meat_mtlion',     'hide_mtlion' }},
        ['Coelho']              = { model = 'a_c_rabbit_01',        cut = math.random(1, 2),    drop = { 'meat_rabbit',     'hide_rabbit' }},
        ['Gaivota']             = { model = 'a_c_seagull',          cut = math.random(1, 2),    drop = { 'meat_seagull'                   }},
        ['Cormorão']            = { model = 'a_c_cormorant',        cut = math.random(1, 2),    drop = { 'meat_cormorant'                 }},
        ['Falcão']              = { model = 'a_c_chickenhawk',      cut = math.random(1, 2),    drop = { 'meat_chickenhawk'               }},
    }
}