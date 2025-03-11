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

if mods["plasma-duct"] then
	
	local item = table.deepcopy(data.raw["item"]["plasma-duct"])
	
	item.name = "thruster-plasma-duct"
	item.subgroup = "space-platform"
	item.place_result = "thruster-plasma-duct"
	item.order = "z[thruster-plasma-duct]"
	
	
	local duct = table.deepcopy(data.raw["pipe"]["plasma-duct"])
	duct.name = "thruster-plasma-duct"
	duct.minable.result = "thruster-plasma-duct"
	duct.fluid_box.volume = 100
	local pipe_connections = duct.fluid_box.pipe_connections
	for _, conn in ipairs(pipe_connections) do
	    conn.connection_category = "plasma-thruster"
	end
	duct.surface_conditions = {
	    {
	        property = "gravity",
	        min = 0, max = 0
	    }
	}
	
	local recipe = table.deepcopy(data.raw["recipe"]["plasma-duct"])
	recipe.name = "thruster-plasma-duct"
	recipe.results[1].name = "thruster-plasma-duct"
	
	
	data:extend({item, duct, recipe})
	
	local tech = data.raw["technology"]["plasma-duct"]
	table.insert(tech.effects, {
	    type = "unlock-recipe",
	    recipe = "thruster-plasma-duct"
	})
end
