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
thrusterfusionreactor.minable.result = "thruster-fusion-reactor" 

thrusterfusionreactor.graphics_set = require ("__fusion-thruster__.prototypes.entity.fusion-thruster-gen-pictures").reactor_graphics_set

local thrusterfusionreactor_recipe = {
  type = "recipe",
  name = "thruster-fusion-reactor",
  enabled = false,
  energy_required = 60, -- time to craft in seconds (at crafting speed 1)
  ingredients = {
    {type = "item", name = "quantum-processor", amount = 100},
    {type = "item", name = "tungsten-plate", amount = 50},
    {type = "item", name = "superconductor", amount = 100}
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

data:extend{thrusterfusionreactor, thrusterfusionreactor_item, thrusterfusionreactor_recipe}
