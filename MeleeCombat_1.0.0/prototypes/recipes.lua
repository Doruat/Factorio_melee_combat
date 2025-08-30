data:extend({

    {
        type="recipe",
        name="broadsword",
        energy_required = 2,
        ingredients=
        {
            {type = "item", name = "wood", amount = 2},
            {type = "item", name = "iron-plate", amount = 5}
        },
        results = {{type = "item", name = "broadsword", amount = 1}}
    },
    {
        type="recipe",
        name="rapier",
        enabled= false,
        energy_required = 2,
        ingredients=
        {
            {type = "item", name = "iron-plate", amount = 10},
            {type = "item", name = "steel-plate", amount = 2}
        },
        results = {{type = "item", name = "rapier", amount = 1}}
    },
    {
        type="recipe",
        name="groundhammer",
        enabled=false,
        energy_required = 2,
        ingredients=
        {
            {type = "item", name = "iron-plate", amount = 10},
            {type = "item", name = "copper-plate", amount = 10},
            {type = "item", name = "steel-plate", amount = 5}
        },
        results = {{type = "item", name = "groundhammer", amount = 1}}
    },
    {
        type="recipe",
        name="melee-ammo",
        energy_required = 0.1,
        ingredients={{type = "item", name = "firearm-magazine", amount = 1}},
        results = {{type = "item", name = "melee-ammo", amount = 1}}
    },
    {
        type="recipe",
        name="vanish-melee-ammo",
        energy_required = 0.1,
        ingredients={{type = "item", name = "melee-ammo", amount = 1}},
        results = {{type = "item", name = "firearm-magazine", amount = 1}}
    }



})

if mods["space-age"] then

data:extend({

    {
        type="recipe",
        name="bloodlust-sword",
        enabled= false,
        category = "electromagnetics",
        energy_required = 40,
        ingredients=
        {
            {type = "item", name = "broadsword", amount = 1},
            {type = "item", name = "holmium-plate", amount = 50},
            {type = "item", name = "stone", amount = 10}
        },
        results = {{type = "item", name = "bloodlust-sword", amount = 1}}
    },
    {
        type="recipe",
        name="poisonous-rapier",
        enabled = false,
        category= "organic",
        energy_required = 40,
        ingredients=
        {
            {type = "item", name = "rapier", amount = 1},
            {type = "item", name = "bioflux", amount = 10},
            {type = "item", name = "sulfur", amount = 100}
        },
        results = {{type = "item", name = "poisonous-rapier", amount = 1}}
    },
    {
        type="recipe",
        name="seismic-hammer",
        enabled = false,
        category = "metallurgy",
        energy_required = 40,
        ingredients=
        {
            {type = "item", name = "groundhammer", amount = 1},
            {type = "item", name = "tungsten-plate", amount = 20},
            {type = "fluid", name = "lava", amount = 1000}
        },
        results = {{type = "item", name = "seismic-hammer", amount = 1}}
    }


})

end