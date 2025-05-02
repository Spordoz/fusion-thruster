local fusionthruster = table.deepcopy(data.raw["thruster"]["thruster"])
fusionthruster.name = "fusion-thruster"
fusionthruster.icons = {
  {
    icon = fusionthruster.icon,
    icon_size = fusionthruster.icon_size,

  },
}

fusionthruster.collision_box = {{-1.4, -0.5}, {1.4, 2.2}}
fusionthruster.selection_box = {{-1.5, -0.5}, {1.5, 5.5}}
fusionthruster.tile_buildability_rules =
{
  {area = {{-1.3, -0.5}, {1.3, 2.2}}, required_tiles = {layers={ground_tile=true}}, colliding_tiles = {layers={empty_space=true}}, remove_on_collision = true},
  {area = {{-1.3, 2.7}, {1.3, 90.3}}, required_tiles = {layers={empty_space=true}}, remove_on_collision = true},
}


fusionthruster.dying_explosion = "fusion-generator-explosion"
fusionthruster.max_health = 1000

fusionthruster.minable.result = "fusion-thruster"
fusionthruster.graphics_set = {

  animation = util.sprite_load("__fusion-thruster__/graphics/fusion-thruster/fusion-thruster",
                  {
                    animation_speed = 0.5,
                    frame_count = 6,
                    scale = 0.5,
                    shift = {0,2.5}
                  }),

--[[   integration_patch_render_layer = "floor",
  integration_patch = util.sprite_load("__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-bckg",
                      {
                        scale = 0.5,
                        shift = {0,3}
                      }), ]]

  working_visualisations =
  {
    {
      always_draw = true,
      name = "pipe-2",
      enabled_by_name = true,
      animation =
      {
        filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-pipe-connection-empty.png",
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
        filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-pipe-connection-empty.png",
        width = 384,
        height = 832,
        shift = util.by_pixel(0, 96),
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
                    shift = {0,2.5}
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
fusionthruster.fuel_fluid_box.filter = "thruster-fusion-plasma"
fusionthruster.oxidizer_fluid_box.filter = "water"
fusionthruster.fuel_fluid_box.volume = 180
fusionthruster.fuel_fluid_box.hide_connection_info = true
fusionthruster.fuel_fluid_box.pipe_connections = {
  {flow_direction = "input", direction = defines.direction.north, position = {0, 0.5}},
}

fusionthruster.oxidizer_fluid_box.pipe_connections = {
  {flow_direction = "input-output", direction = defines.direction.west, position = {-1,  2}, enable_working_visualisations = { "pipe-3" }},
  {flow_direction = "input-output", direction = defines.direction.east, position = { 1,  2}, enable_working_visualisations = { "pipe-2" }}
}

--[[ fusionthruster.min_performance = {
  fluid_volume = .1,
  fluid_usage = .05,
  effectivity = 0.25
}
fusionthruster.max_performance = {
  fluid_volume = 1,
  fluid_usage = 2,
  effectivity = 1.4
} ]]

fusionthruster.min_performance = {
fluid_volume = settings.startup["fusionthruster-min-performance-values-fluid-volume"].value,
fluid_usage =	settings.startup["fusionthruster-min-performance-values-fluid-usage"].value,
effectivity =	settings.startup["fusionthruster-min-performance-values-effectivity"].value
}
fusionthruster.max_performance = {
fluid_volume = settings.startup["fusionthruster-max-performance-values-fluid-volume"].value,
fluid_usage =	settings.startup["fusionthruster-max-performance-values-fluid-usage"].value,
effectivity =	settings.startup["fusionthruster-max-performance-values-effectivity"].value
}

local thruster_chamber = {
  type = "assembling-machine",
  name = "fusionthruster-thruster-chamber",
  icon = "__space-age__/graphics/icons/fusion-reactor.png",
  fixed_recipe = "thruster-fusion-plasma",
  allowed_effects = {},
  collision_box = {{-1.4, -0.5}, {1.4, 1.4}},
  max_health = 1000,
  module_slots = 0,
  se_allow_in_space = true,
  selection_box = {{-0.5,-0.5},{0.5,2}},
  selectable_in_game = false,
  show_recipe_icon = false,
  crafting_categories = { "thruster-fusion-plasma" },
  crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        input_flow_limit = settings.startup["fusionthruster-thruster-chamber-energy-value"].value,
        buffer_capacity = settings.startup["fusionthruster-thruster-chamber-energy-value"].value
    },
  energy_usage =  settings.startup["fusionthruster-thruster-chamber-energy-value"].value,
  flags = { "placeable-neutral", "placeable-player", "player-creation", "get-by-unit-number", "not-on-map", "not-in-made-in", "placeable-off-grid" },
  fluid_boxes = {
      {
      filter = "fusion-plasma",
      volume = 100,
      production_type = "input",
      draw_only_when_connected = true,
      pipe_connections =
      {
      {flow_direction = "input-output", connection_type = "normal", connection_category = "fusion-plasma", direction = defines.direction.west, position = {-1, 0}},
      {flow_direction = "input-output", connection_type = "normal", connection_category = "fusion-plasma", direction = defines.direction.east, position = { 1, 0}}
      },
      pipe_picture = { 
      west=
      {
        filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-pipe-connection-4.png",
        width = 64,
        height = 72,
        shift = util.by_pixel( 30, 4),
        scale = 0.5
      },
      east=
      {
        filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-pipe-connection-1.png",
        width = 64,
        height = 72,
        shift = util.by_pixel( -30, 4),
        scale = 0.5
      },
      north=
      {
        filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-pipe-connection-empty.png",
        width = 384,
        height = 832,
        shift = util.by_pixel(0, 96),
        scale = 0.5
      },
      south=
      {
        filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-pipe-connection-empty.png",
        width = 384,
        height = 832,
        shift = util.by_pixel(0, 96),
        scale = 0.5
      }
      }
      },

      { 
      pipe_connections = 
      { 
      { direction = defines.direction.south, flow_direction = "output", position = { 0, 0.28 } } 
      }, 
      production_type = "output", 
      volume = 100,
      filter = "thruster-fusion-plasma", 
      hide_connection_info = true 
      },

      { 
      pipe_connections = 
      { 
      { direction = defines.direction.north, flow_direction = "output", position = { 0, -0.28 } } 
      }, 
      production_type = "output", 
      filter = "fluoroketone-hot", 
      volume = 100,
      pipe_picture = { 
        north =
        {
          filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-N.png",
          priority = "extra-high",
          width = 71,
          height = 38,
          shift = util.by_pixel(2.25, 23.5),
          scale = 0.5
        },
        east=
        {
          filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-pipe-connection-empty.png",
          width = 384,
          height = 832,
          shift = util.by_pixel(0, 96),
          scale = 0.5
        },
        west=
        {
          filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-pipe-connection-empty.png",
          width = 384,
          height = 832,
          shift = util.by_pixel(0, 96),
          scale = 0.5
        },
        south=
        {
          filename = "__fusion-thruster__/graphics/fusion-thruster/fusion-thruster-pipe-connection-empty.png",
          width = 384,
          height = 832,
          shift = util.by_pixel(0, 96),
          scale = 0.5
        }
        }
      }
}
}

data:extend { thruster_chamber }

local fusionthruster_recipe = {
  type = "recipe",
  name = "fusion-thruster",
  enabled = false,
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

local recipe_thruster_fusion_plasma = {
  type = "recipe",
  name = "thruster-fusion-plasma",
  icon = "__space-age__/graphics/icons/fluid/fusion-plasma.png",
  enabled = false,
  energy_required = 1,
  category = "thruster-fusion-plasma",
  ingredients = {
    { type = "fluid", name = "fusion-plasma", amount = 4 }
  },
  results = { { type = "fluid", name = "thruster-fusion-plasma", amount = settings.startup["fusionthruster-thruster-chamber-conversion-value"].value },
              { type = "fluid", name = "fluoroketone-hot", amount = 4 }
}
}

data:extend(
        {
            {
                type = "recipe-category",
                name = "thruster-fusion-plasma"
            }
        }
)

data:extend{fusionthruster, fusionthruster_item, fusionthruster_recipe, recipe_thruster_fusion_plasma}
