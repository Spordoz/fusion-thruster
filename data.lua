local fusionthruster = table.deepcopy(data.raw["thruster"]["thruster"])
fusionthruster.name = "fusion-thruster"
fusionthruster.icons = {
  {
    icon = fusionthruster.icon,
    icon_size = fusionthruster.icon_size,
    tint = {r=1,g=0,b=0,a=0.3}
  },
}

local fusionthruster_item = table.deepcopy(data.raw.item["thruster"])
fusionthruster_item.name = "fusion-thruster"
fusionthruster_item.place_result = "fusion-thruster"
fusionthruster_item.order = "z[thruster]"
fusionthruster_item.subgroup = "space-platform"

fusionthruster.fuel_fluid_box.filter = "fusion-plasma"
fusionthruster.oxidizer_fluid_box.filter = "water"

fusionthruster.fuel_fluid_box.volume = 180

fusionthruster.fuel_fluid_box.pipe_connections = {
  {flow_direction = "input-output", connection_type = "normal", connection_category = "plasma-thruster", direction = defines.direction.west, position = {-1.5, -2}, enable_working_visualisations = { "pipe-4" }},
  {flow_direction = "input-output", connection_type = "normal", connection_category = "plasma-thruster", direction = defines.direction.east, position = { 1.5, -2}, enable_working_visualisations = { "pipe-1" }}
}
fusionthruster.oxidizer_fluid_box.pipe_connections = {
  {flow_direction = "input-output", direction = defines.direction.west, position = {-1.5,  0}, enable_working_visualisations = { "pipe-3" }},
  {flow_direction = "input-output", direction = defines.direction.east, position = { 1.5,  0}, enable_working_visualisations = { "pipe-2" }}
}

fusionthruster.min_performance = {
  fluid_volume = .1,
  fluid_usage = .05,
  effectivity = 0.25
}
fusionthruster.max_performance = {
  fluid_volume = 1,
  fluid_usage = 2,
  effectivity = 1.4
}

local fusionthruster_recipe = {
  type = "recipe",
  name = "fusion-thruster",
  enabled = true,
  energy_required = 8, -- time to craft in seconds (at crafting speed 1)
  ingredients = {
    {type = "item", name = "fusion-generator", amount = 1},
    {type = "item", name = "steel-plate", amount = 50}
  },
  results = {{type = "item", name = "fusion-thruster", amount = 1}}
}

data.raw.fluid["fusion-plasma"].fuel_value = "1MJ"

local thrusterfusionreactor = table.deepcopy(data.raw["fusion-reactor"]["fusion-reactor"])
thrusterfusionreactor.name = "thruster-fusion-reactor"
thrusterfusionreactor.icons = {
  {
    icon = thrusterfusionreactor.icon,
    icon_size = thrusterfusionreactor.icon_size,
    tint = {r=1,g=0,b=0,a=0.3}
  },
}

local thrusterfusionreactor_item = table.deepcopy(data.raw.item["fusion-reactor"])
thrusterfusionreactor_item.name = "thruster-fusion-reactor"
thrusterfusionreactor_item.order = "z[thruster]"
thrusterfusionreactor_item.place_result = "thruster-fusion-reactor"
thrusterfusionreactor_item.subgroup = "space-platform"

local thrusterfusionreactor_recipe = {
  type = "recipe",
  name = "thruster-fusion-reactor",
  enabled = true,
  energy_required = 8, -- time to craft in seconds (at crafting speed 1)
  ingredients = {
    {type = "item", name = "fusion-reactor", amount = 1},
    {type = "item", name = "steel-plate", amount = 50}
  },
  results = {{type = "item", name = "thruster-fusion-reactor", amount = 1}}
}
thrusterfusionreactor.output_fluid_box = 
{
  volume = 200,
  pipe_connections =
  {
    {flow_direction = "output", connection_type = "normal", connection_category = "plasma-thruster", direction = defines.direction.south, position = {1.5, 2.5}},
    {flow_direction = "output", connection_type = "normal", connection_category = "plasma-thruster", direction = defines.direction.south, position = {-1.5, 2.5}},
    {flow_direction = "output", connection_type = "normal", connection_category = "plasma-thruster", direction = defines.direction.north, position = {1.5, -2.5}},
    {flow_direction = "output", connection_type = "normal", connection_category = "plasma-thruster", direction = defines.direction.north, position = {-1.5, -2.5}}

  },
  production_type = "output",
  filter = "fusion-plasma"
}

thrusterfusionreactor.input_fluid_box = 
  {
    volume = 200,
    pipe_connections =
    {
      {flow_direction = "input", direction = defines.direction.east, position = {2.5, 1.5}},
      {flow_direction = "input", direction = defines.direction.east, position = {2.5, -1.5}},
      {flow_direction = "input", direction = defines.direction.west, position = {-2.5, 1.5}},
      {flow_direction = "input", direction = defines.direction.west, position = {-2.5, -1.5}}


    },  
    production_type = "input",
    filter = "water"
  }
thrusterfusionreactor.max_fluid_usage = 1

thrusterfusionreactor.surface_conditions =
{
  {
    property = "gravity",
    min = 0,
    max = 0
  }
},

data:extend{fusionthruster, fusionthruster_item, fusionthruster_recipe, thrusterfusionreactor, thrusterfusionreactor_item, thrusterfusionreactor_recipe}