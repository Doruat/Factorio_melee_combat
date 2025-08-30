if mods["space-age"] then

local rapier_smoke = table.deepcopy(data.raw["smoke-with-trigger"]["poison-cloud"])
rapier_smoke.name="rapier-smoke"
rapier_smoke.particle_count=4
rapier_smoke.attach_to_target=true
rapier_smoke.created_effect=
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-smoke",
              show_in_tooltip = false,
              entity_name = "poison-cloud-visual-dummy",
              initial_height = 0
            }
          }
        }
      }
    }
rapier_smoke.action.action_delivery.target_effects.action.force = "enemy"
rapier_smoke.action.action_delivery.target_effects.action.radius = 3

local seismic_attack = table.deepcopy(data.raw["explosion"]["small-demolisher-fissure"])
local seismic_attack_dmg_delay = table.deepcopy(data.raw["delayed-active-trigger"]["small-demolisher-fissure-explosion-damage-delay"])
local seismic_attack_idfkwtf = table.deepcopy(data.raw["explosion"]["small-demolisher-fissure-damage-explosion"])

seismic_attack.name="seismic-attack"
seismic_attack_dmg_delay.name="sattack_delay"
seismic_attack_idfkwtf.name = "seismic-idfkwtf"

seismic_attack_idfkwtf.created_effect[1].entity_flags={"placeable-enemy","placeable-neutral"}
seismic_attack_idfkwtf.created_effect[2].entity_flags={"placeable-enemy","placeable-neutral"}
seismic_attack_idfkwtf.created_effect[3].entity_flags={"placeable-enemy","placeable-neutral"}
data:extend({seismic_attack_idfkwtf})

seismic_attack_dmg_delay.action[1].action_delivery.target_effects[1].entity_name="seismic-idfkwtf"
data:extend({seismic_attack_dmg_delay})

seismic_attack.created_effect[3].action_delivery.delayed_trigger="sattack_delay"

data:extend({rapier_smoke,seismic_attack})

end