table.insert(data.raw.technology["steel-processing"].effects,{type= "unlock-recipe", recipe = "rapier"})
table.insert(data.raw.technology["concrete"].effects,{type= "unlock-recipe", recipe = "groundhammer"})

if mods["space-age"] then

    table.insert(data.raw.technology["electromagnetic-plant"].effects,{type= "unlock-recipe", recipe = "bloodlust-sword"})
    table.insert(data.raw.technology["foundry"].effects,{type= "unlock-recipe", recipe = "seismic-hammer"})
    table.insert(data.raw.technology["biochamber"].effects,{type= "unlock-recipe", recipe = "poisonous-rapier"})

end