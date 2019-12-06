data:extend(
{
  {
    -- PrototypeBase
    type = "electric-energy-interface",
	name = "combat-roboport-energy-interface",
	order = "b[turret]-e[combat-roboport]-b",
	
	-- Entity
	icon = "__combat-roboports__/graphics/icons/combat-roboport.png",
    icon_size = 32,
    flags = {"placeable-player", "not-flammable", "not-rotatable", "not-repairable", "not-on-map", "not-blueprintable", "hidden", "hide-alt-info", "no-copy-paste", "not-selectable-in-game", "not-upgradable"},
	selectable_in_game = false,
	allow_copy_paste = false,
	
	collision_box = {{0, 0}, {0, 0}},
    selection_box = {{0, 0}, {0, 0}},
	
	-- EntityWithHealth
	max_health = 1000000,
	healing_per_tick = 1000000,
    resistances =
    {
	  { type = "physical", percent = 100 },
	  { type = "impact", percent = 100 },
      { type = "fire", percent = 100 },
	  { type = "acid", percent = 100 },
	  { type = "poison", percent = 100 },
	  { type = "explosion", percent = 100 },
	  { type = "laser", percent = 100 }
    },
	create_ghost_on_death = false,
	alert_when_damaged = false,
	
	-- ElectricEnergyInterface
	energy_usage = "1MW",
	energy_source =
    {
      type = "electric",
      buffer_capacity = "2MJ",
      input_flow_limit = "20MW",
      drain = "150kW",
      usage_priority = "primary-input"
    },
	picture = { filename = "__combat-roboports__/graphics/empty.png", size = 16 }
  }
})