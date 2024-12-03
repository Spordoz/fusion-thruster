require("prototypes.entity.fusionthruster")
require("prototypes.entity.thrusterfusionreactor")
--data.raw.fluid["fusion-plasma"].fuel_value = "1MJ"

data.raw.fluid["fusion-plasma"].fuel_value = settings.startup["fusionthruster-fusion-plasma-fuel-value"].value

data:extend(
{
	{
		type = "technology",
		name = "fusion-thruster",
		icons = 
		{
			{
				icon = "__fusion-thruster__/graphics/fusion-thruster-reasearch.png",
				icon_size = 128,
				scale = 0.5
			}
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "fusion-thruster"
			},
			{
				type = "unlock-recipe",
				recipe = "thruster-fusion-reactor"
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