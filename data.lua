require("prototypes.entity.fusionthruster")

data:extend({
  {
    type = "technology",
    name = "fusion-thruster",
    icon = "__fusion-thruster__/graphics/technology/fusion-thruster-reasearch.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fusion-thruster"
      }           
    },
    prerequisites = {"fusion-reactor"},
    unit =
    {
      count = 2000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"cryogenic-science-pack", 1}
      },
      time = 60
    }
  }  
})

data:extend {
  {
    type = "fluid",
    name = "thruster-fusion-plasma",
    icon = "__space-age__/graphics/icons/fluid/fusion-plasma.png",
    subgroup = "fluid",
    order = "b[new-fluid]-a[space]-a[thruster-fusion-plasma]",
    fuel_value = settings.startup["fusionthruster-fusion-plasma-fuel-value"].value,
    default_temperature = 1000000,
    max_temperature = 10000000,
    heat_capacity = "25J",
    base_color = {0.0, 0.1, 0.53},
    flow_color = {0.2, 0.68, 0.93},
    auto_barrel = false,
    hidden = true,
  },
}