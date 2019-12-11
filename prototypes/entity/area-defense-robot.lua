require ("__base__.prototypes.entity.laser-sounds")

data:extend(
{
  {
    type = "combat-robot",
    name = "area-defense-robot",
    icon = "__combat-roboports__/graphics/icons/area-defense-robot.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map", "not-repairable"},
    resistances =
	{
	  { type = "fire", percent = 100 },
	  { type = "acid", percent = 90 }
	},
    order="e-a-d",
    subgroup="capsule",
    max_health = 120,
    alert_when_damaged = false,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.9, -1.5}, {0.9, -0.5}},
    time_to_live = 60 * 60,
    speed = 0,
    destroy_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        source_effects =
        {
            type = "create-entity",
            entity_name = "explosion"
        }
      }
    },
    attack_parameters =
    {
      type = "beam",
      ammo_category = "combat-robot-laser",
      cooldown = 20,
      damage_modifier = 1.6,
      range = 24,
      sound = make_laser_sounds(),
      ammo_type =
      {
        category = "combat-robot-laser",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "beam",
            beam = "laser-beam",
            max_length = 24,
            duration = 20,
            --starting_speed = 0.3
          }
        }
      }
    },
    idle =
    {
      layers =
      {
        {
          filename = "__combat-roboports__/graphics/entity/area-defense-robot/distractor-robot.png",
          priority = "high",
          line_length = 16,
          width = 38,
          height = 33,
          frame_count = 1,
          direction_count = 16,
          shift = {0, -0.078125},
          hr_version =
          {
            filename = "__combat-roboports__/graphics/entity/area-defense-robot/hr-distractor-robot.png",
            priority = "high",
            line_length = 16,
            width = 72,
            height = 62,
            frame_count = 1,
            direction_count = 16,
            shift = util.by_pixel(0, -2.5),
            scale = 0.5
          }
        },
        {
          filename = "__combat-roboports__/graphics/entity/area-defense-robot/distractor-robot-mask.png",
          priority = "high",
          line_length = 16,
          width = 24,
          height = 21,
          frame_count = 1,
          direction_count = 16,
          shift = {0, -0.203125},
          apply_runtime_tint = true,
		  tint = {r=0,g=1,b=0,a=1},
          hr_version =
          {
            filename = "__combat-roboports__/graphics/entity/area-defense-robot/hr-distractor-robot-mask.png",
            priority = "high",
            line_length = 16,
            width = 42,
            height = 37,
            frame_count = 1,
            direction_count = 16,
            shift = util.by_pixel(0, -6.25),
            apply_runtime_tint = true,
            scale = 0.5
          }
        }
      }
    },
    shadow_idle =
    {
      filename = "__base__/graphics/entity/distractor-robot/distractor-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 40,
      height = 25,
      frame_count = 1,
      direction_count = 16,
      shift = {0.9375, 0.609375},
      hr_version =
      {
        filename = "__base__/graphics/entity/distractor-robot/hr-distractor-robot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 96,
        height = 59,
        frame_count = 1,
        direction_count = 16,
        shift = util.by_pixel(32.5, 19.25),
        scale = 0.5
      }
    },
    in_motion =
    {
      layers =
      {
        {
          filename = "__combat-roboports__/graphics/entity/area-defense-robot/distractor-robot.png",
          priority = "high",
          line_length = 16,
          width = 38,
          height = 33,
          frame_count = 1,
          direction_count = 16,
          shift = {0, -0.078125},
          y = 33,
          hr_version =
          {
            filename = "__combat-roboports__/graphics/entity/area-defense-robot/hr-distractor-robot.png",
            priority = "high",
            line_length = 16,
            width = 72,
            height = 62,
            frame_count = 1,
            direction_count = 16,
            shift = util.by_pixel(0, -2.5),
            y = 62,
            scale = 0.5
          }
        },
        {
          filename = "__combat-roboports__/graphics/entity/area-defense-robot/distractor-robot-mask.png",
          priority = "high",
          line_length = 16,
          width = 24,
          height = 21,
          frame_count = 1,
          direction_count = 16,
          shift = {0, -0.203125},
          apply_runtime_tint = true,
          y = 21,
          hr_version =
          {
            filename = "__combat-roboports__/graphics/entity/area-defense-robot/hr-distractor-robot-mask.png",
            priority = "high",
            line_length = 16,
            width = 42,
            height = 37,
            frame_count = 1,
            direction_count = 16,
            shift = util.by_pixel(0, -6.25),
            apply_runtime_tint = true,
            y = 37,
            scale = 0.5
          }
        }
      }
    },
    shadow_in_motion =
    {
      filename = "__base__/graphics/entity/distractor-robot/distractor-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 40,
      height = 25,
      frame_count = 1,
      direction_count = 16,
      shift = {0.9375, 0.609375},
      hr_version =
      {
        filename = "__base__/graphics/entity/distractor-robot/hr-distractor-robot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 96,
        height = 59,
        frame_count = 1,
        direction_count = 16,
        shift = util.by_pixel(32.5, 19.25),
        scale = 0.5
      }
    }
  },
})