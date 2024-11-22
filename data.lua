local fusionthruster = table.deepcopy(data.raw["thruster"]["thruster"])
fusionthruster.name = "fusion-thruster"
fusionthruster.icons = {
  {
    icon = fusionthruster.icon,
    icon_size = fusionthruster.icon_size,

  },
}

fusionthruster.graphics_set = {

  animation = util.sprite_load("__fusion-thruster__/graphics/fusion-thruster/fusion-thruster",
                  {
                    animation_speed = 0.5,
                    frame_count = 6,
                    scale = 0.5,
                    shift = {0,3}
                  }),

  integration_patch_render_layer = "floor",
  integration_patch = util.sprite_load("__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-bckg",
                      {
                        scale = 0.5,
                        shift = {0,3}
                      }),

  working_visualisations =
  {
    {
      always_draw = true,
      name = "pipe-1",
      enabled_by_name = true,
      animation =
      {
        filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-pipe-connection-1.png",
        width = 384,
        height = 832,
        shift = util.by_pixel(0, 95),
        scale = 0.5
      }
    },
    {
      always_draw = true,
      name = "pipe-2",
      enabled_by_name = true,
      animation =
      {
        filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-pipe-connection-2.png",
        width = 384,
        height = 832,
        shift = util.by_pixel(0, 96),
        scale = 0.5
      }
    },
    {
      always_draw = true,
      name = "pipe-3",
      enabled_by_name = true,
      animation =
      {
        filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-pipe-connection-3.png",
        width = 384,
        height = 832,
        shift = util.by_pixel(0, 96),
        scale = 0.5
      }
    },
    {
      always_draw = true,
      name = "pipe-4",
      enabled_by_name = true,
      animation =
      {
        filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-pipe-connection-4.png",
        width = 384,
        height = 832,
        shift = util.by_pixel(0, 95),
        scale = 0.5
      }
    },

    {
      -- effect = "flicker",
      fadeout = true,
      animation = util.sprite_load("__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-light",
                  {
                    animation_speed = 0.5,
                    frame_count = 6,
                    blend_mode = "additive",
                    draw_as_glow = true,
                    scale = 0.5,
                    shift = {0,3}
                  }),
    },
  },
  flame_effect =
  {
    filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-flame.png",
    width = 384,
    height = 832
  },
  flame_position = {0, 7},
  flame_half_height = 0,
  flame_effect_height = 1000 / 32,
  flame_effect_width = 384 / 64,
  flame_effect_offset = 50 / 32,
}

fusionthruster.plumes = {
  min_probability = 0.01,
  max_probability = 0.03,
  min_y_offset = -4,
  max_y_offset = 0,
  stateless_visualisations =
  {
    {
      offset_x = { -0.1, 0.1 },
      offset_y = { 10.5, 10.5 },
      offset_z = { 0.0 , 0.0 },

      speed_x = { -0.014, 0.014 },
      speed_y = { 0.5, 0.7 },
      speed_z = { -0.014, 0.014 },

      probability = 0.3,
      count = 3,
      age_discrimination = -10,
      period = 200,
      fade_in_progress_duration = 0.25,
      fade_out_progress_duration = 0.6,
      spread_progress_duration = 0.375,
      begin_scale = 0.25,
      end_scale = 1.25,
      affected_by_wind = false,
      render_layer = "smoke",
      can_lay_on_the_ground = false,
      animation =
      {
        width = 253,
        height = 210,
        scale = 0.5,
        line_length = 8,
        frame_count = 60,
        shift = {0, 0},
        priority = "high",
        animation_speed = 0.25,
        tint = {r = 1, b = 0.95, g = 0.97, a = 0.5},
        filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-smoke.png",
        flags = { "smoke" }
      }
    },
    {
      offset_x = { -0.2, 0.2 },
      offset_y = { 14.5, 14.5 },
      offset_z = { 0.0 , 0.0 },

      speed_x = { -0.014, 0.014 },
      speed_y = { 0.55, 0.65 },
      speed_z = { -0.014, 0.014 },

      probability = 0.5,
      period = 60,
      age_discrimination = -6,
      fade_in_progress_duration = 0.5,
      fade_out_progress_duration = 0.5,
      begin_scale = 0.5,
      end_scale = 1.25,
      affected_by_wind = false,
      render_layer = "smoke",
      can_lay_on_the_ground = false,
      animation =
      {
        width = 2024/8,
        height = 1216/8,
        line_length = 8,
        frame_count = 60,
        shift = {0, 0},
        priority = "high",
        animation_speed = 0.25,
        tint = {r = 0.75, b = 0.75, g = 0.75, a = 1},
        filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-smoke-glow.png",
        flags = { "smoke" },
        draw_as_glow = true
      }
    },
    {
      offset_x = { -0.25, 0.25 },
      offset_y = { 13.0, 13.0 },
      offset_z = { 0.0 , 0.0 },

      speed_x = { -0.014, 0.014 },
      speed_y = { 0.5, 0.7 },
      speed_z = { -0.014, 0.014 },

      probability = 0.2,
      count = 2,
      period = 200,
      --age_discrimination = 0,
      fade_in_progress_duration = 0.3,
      fade_out_progress_duration = 0.7,
      begin_scale = 0.5,
      end_scale = 3.0,
      affected_by_wind = false,
      render_layer = "smoke",
      can_lay_on_the_ground = false,
      animation =
      {
        width = 253,
        height = 210,
        line_length = 8,
        frame_count = 60,
        shift = {0, 0},
        priority = "high",
        animation_speed = 0.1,
        tint = {r = 1, b = 0.95, g = 0.97, a = 1.0},
        filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-smoke.png",
        flags = { "smoke" }
      }
    }
  }
}

local fusionthruster_item = table.deepcopy(data.raw.item["thruster"])
fusionthruster_item.name = "fusion-thruster"
fusionthruster_item.place_result = "fusion-thruster"
fusionthruster_item.order = "z[thruster]"
fusionthruster_item.subgroup = "space-platform"
fusionthruster_item.icon = "__fusion-thruster__/graphics/icons/fusion-thruster.png"
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
  energy_required = 30, -- time to craft in seconds (at crafting speed 1)
  ingredients = {
    {type = "item", name = "electric-engine-unit", amount = 10},
    {type = "item", name = "steel-plate", amount = 50},
    {type = "item", name = "pipe", amount = 50},
    {type = "item", name = "iron-gear-wheel", amount = 50},
    {type = "item", name = "quantum-processor", amount = 50},
    {type = "item", name = "tungsten-plate", amount = 50},
    {type = "item", name = "superconductor", amount = 100}
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

data:extend{fusionthruster, fusionthruster_item, fusionthruster_recipe, thrusterfusionreactor, thrusterfusionreactor_item, thrusterfusionreactor_recipe}

data:extend(
{
	{
		type = "technology",
		name = "fusion-thruster",
		icons = 
		{
			{
				icon = "__core__/graphics/empty.png",
			},
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

--[[
fusionthruster.graphics_set = {

  animation = util.sprite_load("__fusion-thruster__/graphics/fusion-thruster/fusion-thruster",
                  {
                    animation_speed = 0.5,
                    frame_count = 64,
                    scale = 0.5,
                    shift = {0,3}
                  }),

  integration_patch_render_layer = "floor",
  integration_patch = util.sprite_load("__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-bckg",
                      {
                        scale = 0.5,
                        shift = {0,3}
                      }),

  working_visualisations =
  {
    {
      always_draw = true,
      name = "pipe-1",
      enabled_by_name = true,
      animation =
      {
        filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-pipe-connection-1.png",
        width = 384,
        height = 832,
        shift = util.by_pixel(0, 95),
        scale = 0.5
      }
    },
    {
      always_draw = true,
      name = "pipe-2",
      enabled_by_name = true,
      animation =
      {
        filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-pipe-connection-2.png",
        width = 384,
        height = 832,
        shift = util.by_pixel(0, 96),
        scale = 0.5
      }
    },
    {
      always_draw = true,
      name = "pipe-3",
      enabled_by_name = true,
      animation =
      {
        filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-pipe-connection-3.png",
        width = 384,
        height = 832,
        shift = util.by_pixel(0, 96),
        scale = 0.5
      }
    },
    {
      always_draw = true,
      name = "pipe-4",
      enabled_by_name = true,
      animation =
      {
        filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-pipe-connection-4.png",
        width = 384,
        height = 832,
        shift = util.by_pixel(0, 95),
        scale = 0.5
      }
    },

    {
      -- effect = "flicker",
      fadeout = true,
      animation = util.sprite_load("__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-light",
                  {
                    animation_speed = 0.5,
                    frame_count = 64,
                    blend_mode = "additive",
                    draw_as_glow = true,
                    scale = 0.5,
                    shift = {0,3}
                  }),
    },
  },
  flame_effect =
  {
    filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-flame.png",
    width = 384,
    height = 832
  },
  flame_position = {0, 5.5},
  flame_half_height = 0,
  flame_effect_height = 1000 / 32,
  flame_effect_width = 384 / 64,
  flame_effect_offset = 50 / 32,
}

fusionthruster.plumes = {
  min_probability = 0.08,
  max_probability = 1,
  min_y_offset = -4,
  max_y_offset = 0,
  stateless_visualisations =
  {
    {
      offset_x = { -0.1, 0.1 },
      offset_y = { 10.5, 10.5 },
      offset_z = { 0.0 , 0.0 },

      speed_x = { -0.014, 0.014 },
      speed_y = { 0.5, 0.7 },
      speed_z = { -0.014, 0.014 },

      probability = 0.3,
      count = 3,
      age_discrimination = -10,
      period = 200,
      fade_in_progress_duration = 0.25,
      fade_out_progress_duration = 0.6,
      spread_progress_duration = 0.375,
      begin_scale = 0.25,
      end_scale = 1.25,
      affected_by_wind = false,
      render_layer = "smoke",
      can_lay_on_the_ground = false,
      animation =
      {
        width = 253,
        height = 210,
        scale = 0.5,
        line_length = 8,
        frame_count = 60,
        shift = {0, 0},
        priority = "high",
        animation_speed = 0.25,
        tint = {r = 1, b = 0.95, g = 0.97, a = 0.5},
        filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-smoke.png",
        flags = { "smoke" }
      }
    },
    {
      offset_x = { -0.2, 0.2 },
      offset_y = { 14.5, 14.5 },
      offset_z = { 0.0 , 0.0 },

      speed_x = { -0.014, 0.014 },
      speed_y = { 0.55, 0.65 },
      speed_z = { -0.014, 0.014 },

      probability = 0.5,
      period = 60,
      age_discrimination = -6,
      fade_in_progress_duration = 0.5,
      fade_out_progress_duration = 0.5,
      begin_scale = 0.5,
      end_scale = 1.25,
      affected_by_wind = false,
      render_layer = "smoke",
      can_lay_on_the_ground = false,
      animation =
      {
        width = 2024/8,
        height = 1216/8,
        line_length = 8,
        frame_count = 60,
        shift = {0, 0},
        priority = "high",
        animation_speed = 0.25,
        tint = {r = 0.75, b = 0.75, g = 0.75, a = 1},
        filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-smoke-glow.png",
        flags = { "smoke" },
        draw_as_glow = true
      }
    },
    {
      offset_x = { -0.25, 0.25 },
      offset_y = { 13.0, 13.0 },
      offset_z = { 0.0 , 0.0 },

      speed_x = { -0.014, 0.014 },
      speed_y = { 0.5, 0.7 },
      speed_z = { -0.014, 0.014 },

      probability = 0.2,
      count = 2,
      period = 200,
      --age_discrimination = 0,
      fade_in_progress_duration = 0.3,
      fade_out_progress_duration = 0.7,
      begin_scale = 0.5,
      end_scale = 3.0,
      affected_by_wind = false,
      render_layer = "smoke",
      can_lay_on_the_ground = false,
      animation =
      {
        width = 253,
        height = 210,
        line_length = 8,
        frame_count = 60,
        shift = {0, 0},
        priority = "high",
        animation_speed = 0.1,
        tint = {r = 1, b = 0.95, g = 0.97, a = 1.0},
        filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-smoke.png",
        flags = { "smoke" }
      }
    }
  }
}]]