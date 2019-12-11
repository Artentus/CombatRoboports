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
	
	collision_box = {{-1.6, -1.6}, {1.6, 1.6}},
    selection_box = {{0, 0}, {0, 0}},
	tile_height = 4,
	tile_width = 4,
	
	-- EntityWithHealth
	max_health = 100,
	create_ghost_on_death = false,
	alert_when_damaged = false,
	
	-- ElectricEnergyInterface
	energy_source =
    {
      type = "electric",
      buffer_capacity = "2.5MJ",
      input_flow_limit = "2.5MW",
      drain = "2.5MW",
      usage_priority = "primary-input"
    },
	picture = { filename = "__combat-roboports__/graphics/empty.png", size = 16 }
  }
})