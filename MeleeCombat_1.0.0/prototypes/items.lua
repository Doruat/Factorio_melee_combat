local mod_name="__MeleeCombat__"
data:extend({
    {

            type = "ammo",
            name = "melee-ammo",
            subgroup = "ammo",
            weight = 100 * kg,
            icon = mod_name.."/graphics/icons/melee-ammo.png",
            ammo_category = "melee",
            order = "ad",
            stack_size = 10,
            ammo_type =
            {
                action =
                {
                    type = "direct",
                    action_delivery =
                    {
                        type = "instant",
                        target_effects =
                        {
                            {
                                type = "create-entity",
                                entity_name = "explosion-hit",
                                offsets = { { 0, 1 } },
                                offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } }
                            },
                            {
                                type = "activate-impact",
                                deliver_category = "bullet"
                            }
                        }
                    }
                }
            },

    },
    {
        type = "gun",
        name = "groundhammer",
        icon = mod_name.."/graphics/icons/groundhammer.png",
        subgroup = "gun",
        order = "e[melee]-c",
        attack_parameters =
        {
            type = "projectile",
            ammo_categories = { "bullet", "melee" },
            ammo_type = {
                target_type = "entity",
                action =
                {
                    type = "area",
                    radius = 1.5,
                    trigger_from_target = true,
                    target_entities = true,
                    target_enemies = true,
                    action_delivery =
                    {
                        type = "instant",
                        target_effects =
                        {
                            type = "damage",
                            damage = { amount = 50, type = "physical" }
                        }
                    }
                }
            },
            cooldown = 120,
            movement_slow_down_factor = 0.7,
            range = 1,
            min_range = 0,
        },
        stack_size = 5
    },

    {
        type = "gun",
        name = "broadsword",
        icon = mod_name.."/graphics/icons/broadsword.png",
        subgroup = "gun",
        order = "e[melee]-a",
        attack_parameters =
        {
            type = "projectile",
            ammo_categories = { "bullet", "melee" },
            ammo_type = {
                target_type = "entity",
                action =
                {
                    type = "area",
                    radius = 0.5,
                    trigger_from_target = true,
                    target_entities = true,
                    target_enemies = true,
                    action_delivery =
                    {
                        type = "instant",
                        target_effects =
                        {
                            type = "damage",
                            damage = { amount = 30, type = "physical" }
                        }
                    }
                }
            },
            cooldown = 60,
            movement_slow_down_factor = 0.6,
            range = 1,
            min_range = 0,
        },
        stack_size = 5
    },
    {
        type = "gun",
        name = "rapier",
        icon = mod_name.."/graphics/icons/rapier.png",
        subgroup = "gun",
        order = "e[melee]-b",
        attack_parameters =
        {
            type = "projectile",
            ammo_categories = { "bullet", "melee" },
            ammo_type = {
                target_type = "entity",
                action =
                {
                    type = "direct",
                    action_delivery =
                    {
                        type = "instant",
                        target_effects =
                        {
                            type = "damage",
                            damage = { amount = 30, type = "physical" }
                        }
                    }
                }
            },
            cooldown = 30,
            movement_slow_down_factor = 0.1,
            range = 3,
            min_range = 0,
        },
        stack_size = 5
    }
})

if mods["space-age"] then
    data:extend({
        
        {
            type = "gun",
            name = "seismic-hammer",
            icon = mod_name.."/graphics/icons/seismic-hammer.png",
            weight = 250 * kg,
            subgroup = "gun",
            order = "e[melee]-d",
            attack_parameters =
            {
                type = "projectile",
                ammo_categories = { "grenade" , "melee" },
                min_attack_distance = 0,
                cooldown = 60,
                movement_slow_down_factor = 0.3,
                range = 3,
                range_mode = "center-to-center",
                ammo_type =
                {
                    action =
                    {
                        type = "direct",
                        action_delivery =
                        {
                            type = "instant",
                            source_effects =
                            {
                                {
                                    type = "create-entity",
                                    entity_name = "seismic-attack",
                                    offset_deviation = { { -3, -5 }, { 3, 5 } },
                                    repeat_count = 3,
                                    show_in_tooltip = true
                                },
                                {
                                    type = "create-entity",
                                    entity_name = "seismic-attack",
                                    offset_deviation = { { -5, -3 }, { 5, 3 } },
                                    repeat_count = 3,
                                    show_in_tooltip = true
                                },
                                {
                                    type = "create-entity",
                                    entity_name = "seismic-attack",
                                    offset_deviation = { { -4, -4 }, { 4, 4 } },
                                    repeat_count = 3,
                                    show_in_tooltip = true
                                }
                            }
                        }
                    }
                }
            },
            stack_size = 5
        },

        {
            type = "gun",
            name = "bloodlust-sword",
            icon = mod_name.."/graphics/icons/bloodlust-sword.png",
            subgroup = "gun",
            weight = 250 * kg,
            order = "e[melee]-e",
            attack_parameters =
            {
                type = "projectile",
                ammo_categories = { "bullet" , "melee"},
                ammo_type = {
                    target_type = "entity",
                    action =
                    {
                        type = "direct",
                        action_delivery =
                        {
                            type = "instant",
                            source_effects =
                            {
                                type = "damage",
                                show_in_tooltip = true,
                                damage = { amount = -15, type = "physical" }
                            },
                            target_effects =
                            {
                                type = "damage",
                                damage = { amount = 30, type = "physical" }
                            }
                        }
                    }
                },
                cooldown = 30,
                movement_slow_down_factor = 0.2,
                range = 5,
                min_range = 0,
            },
            stack_size = 5
        },

        {
            type = "gun",
            name = "poisonous-rapier",
            icon = mod_name.."/graphics/icons/poisonous-rapier.png",
            subgroup = "gun",
            weight = 250 * kg,
            order = "e[melee]-f",
            attack_parameters =
            {
                type = "projectile",
                ammo_categories = {"flamethrower" , "melee" },
                cooldown = 15,
                movement_slow_down_factor = 0.1,
                ammo_type = {
                    target_type = "entity",
                    action =
                    {
                        type = "direct",
                        action_delivery =
                        {
                            type = "instant",
                            target_effects =
                            {
                                {
                                    type = "damage",
                                    damage = { amount = 30, type = "physical" }
                                },
                                {
                                    type = "create-smoke",
                                    show_in_tooltip = true,
                                    entity_name = "rapier-smoke",
                                    initial_height = 0
                                }
                            }
                        }
                    }
                },
                range = 7,
                min_range = 0,
            },
            stack_size = 5
        }
    }
    )

    data.raw["gun"]["rapier"].weight = 250 * kg
    data.raw["gun"]["broadsword"].weight = 250 * kg
    data.raw["gun"]["groundhammer"].weight = 250 * kg
end
