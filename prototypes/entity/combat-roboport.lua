data:extend(
{
  {
	-- PrototypeBase
    type = "ammo-turret",
    name = "combat-roboport",
	
	-- Entity
    icon = "__combat-roboports__/graphics/icons/combat-roboport.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "not-flammable", "not-rotatable"},
    minable = {mining_time = 1.0, result = "combat-roboport"},
	
	collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
	
	vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/roboport-working.ogg", volume = 0.8 },
      max_sounds_per_type = 3,
      audible_distance_modifier = 0.5,
      probability = 1 / (10 * 60) -- average pause between the sound is 10 seconds
    },
	
	-- EntityWithHealth
	corpse = "roboport-remnants",
	dying_explosion = "medium-explosion",
    max_health = 1000,
    resistances =
    {
      {
        type = "fire",
        percent = 100
      },
      {
        type = "impact",
        percent = 50
      },
	  {
		type = "acid",
		percent = 20
	  }
    },
	
	-- Turret
	attack_parameters =
    {
	  type = "projectile",
	  range = 36,
	  cooldown = 60 * 4, -- in ticks (1s = 60t)
	  warmup = 60 * 1,
      ammo_category = "combat-robot",
      sound = { filename = "__base__/sound/roboport-door.ogg", volume = 1.0 }
    },
	attacking_speed = 1.0,
	alert_when_attacking = true,
	allow_turning_when_starting_attack = true,
	
    rotation_speed = 100.0,
    preparing_speed = 100.0,
    folding_speed = 100.0,
	
	call_for_help_radius = 40,
	
    -- Ammo-Turret
    inventory_size = 1,
    automated_ammo_count = 10,
    
	
	-- Sprites
	base_picture =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/roboport/roboport-shadow.png",
          width = 147,
          height = 101,
          draw_as_shadow = true,
          shift = util.by_pixel(28.5, 19.25),
		  frame_count = 1,
		  repeat_count = 32,
		  animation_speed= 0.5,
          hr_version =
          {
            filename = "__base__/graphics/entity/roboport/hr-roboport-shadow.png",
            width = 294,
            height = 201,
            draw_as_shadow = true,
            force_hr_shadow = true,
            shift = util.by_pixel(28.5, 19.25),
			frame_count = 1,
		    repeat_count = 32,
			animation_speed= 0.5,
            scale = 0.5
          }
        },
		{
          filename = "__combat-roboports__/graphics/entity/combat-roboport/roboport-base.png",
          width = 143,
          height = 135,
          shift = {0.5, 0.25},
		  frame_count = 1,
		  repeat_count = 32,
		  animation_speed= 0.5,
          hr_version =
          {
            filename = "__combat-roboports__/graphics/entity/combat-roboport/hr-roboport-base.png",
            width = 228,
            height = 277,
            shift = util.by_pixel(2, 7.75),
			frame_count = 1,
		    repeat_count = 32,
			animation_speed= 0.5,
            scale = 0.5
          }
        },
		{
		  filename = "__combat-roboports__/graphics/entity/combat-roboport/roboport-base-animation.png",
          width = 41.5,
          height = 40.5,
          frame_count = 32,
		  line_length = 8,
		  animation_speed= 0.5,
          shift = util.by_pixel(-14.5, -65.0),
          hr_version =
          {
            filename = "__combat-roboports__/graphics/entity/combat-roboport/hr-roboport-base-animation.png",
            width = 83,
            height = 81,
            frame_count = 32,
			line_length = 8,
			animation_speed= 0.5,
            shift = util.by_pixel(-13.75, -65.0),
            scale = 0.5
          }
	    }
      }
    },
	folded_animation =
	{
	  layers =
	  {
	    {
	      filename = "__combat-roboports__/graphics/entity/combat-roboport/roboport-door-up.png",
          priority = "medium",
          width = 52,
          height = 20,
          frame_count = 1,
		  direction_count = 1,
          shift = {0.015625, -0.890625},
          hr_version =
          {
            filename = "__combat-roboports__/graphics/entity/combat-roboport/hr-roboport-door-up.png",
            priority = "medium",
            width = 97,
            height = 38,
            frame_count = 1,
			direction_count = 1,
            shift = util.by_pixel(-0.25, -29.5),
            scale = 0.5
          }
		},
		{
		  filename = "__combat-roboports__/graphics/entity/combat-roboport/roboport-door-down.png",
          priority = "medium",
          width = 52,
          height = 22,
          frame_count = 1,
		  direction_count = 1,
          shift = {0.015625, -0.234375},
          hr_version =
          {
            filename = "__combat-roboports__/graphics/entity/combat-roboport/hr-roboport-door-down.png",
            priority = "medium",
            width = 97,
            height = 41,
            frame_count = 1,
			direction_count = 1,
            shift = util.by_pixel(-0.25,-9.75),
            scale = 0.5
          }
		}
	  }
	}
  }
})