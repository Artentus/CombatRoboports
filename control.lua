script.on_init(
	function()
		global.energy_interfaces = {}
	end
)


-- Update roboport energy interfaces
function check_electricity(e)
	loc_energy_interfaces = global.energy_interfaces
	for roboport_id,objs in pairs(loc_energy_interfaces) do
		objs.port.active = objs.eei.energy > 0
	end
end
script.on_event(defines.events.on_tick, check_electricity)


-- Roboport creation
function add_energy_interface(roboport)
	interface = roboport.surface.create_entity(
	{
		name = "combat-roboport-energy-interface",
		position = roboport.position,
		player = roboport.last_user,
		force = roboport.force,
		create_build_effect_smoke = false,
		raise_built = true
	})
	roboport.active = false
	objs = { port = roboport, eei = interface }
	global.energy_interfaces[roboport.unit_number] = objs
end
function process_created_entity(entity)
	if entity.name == "combat-roboport" then
		add_energy_interface(entity)
	end
end

script.on_event(defines.events.on_built_entity,
	function (e)
		process_created_entity(e.created_entity)
	end
)
script.on_event(defines.events.on_entity_cloned,
	function (e)
		process_created_entity(e.destination)
	end
)
script.on_event(defines.events.on_robot_built_entity,
	function (e)
		process_created_entity(e.created_entity)
	end
)


-- Roboport removal
function remove_energy_interface(roboport)
	objs = global.energy_interfaces[roboport.unit_number]
	if objs then
		objs.eei.destroy({raise_destroy = true})
		global.energy_interfaces[roboport.unit_number] = nil
	end
end
function process_removed_entity(entity)
	if entity.name == "combat-roboport" then
		remove_energy_interface(entity)
	end
end

script.on_event(defines.events.on_entity_died,
	function (e)
		process_removed_entity(e.entity)
	end
)
script.on_event(defines.events.on_player_mined_entity,
	function (e)
		process_removed_entity(e.entity)
	end
)
script.on_event(defines.events.on_robot_mined_entity,
	function (e)
		process_removed_entity(e.entity)
	end
)

-- not needed in vanilla but for other mods
script.on_event(defines.events.on_pre_surface_deleted,
	function (e)
		surface = game.surfaces[e.surface_index]
		for roboport_id,objs in pairs(loc_energy_interfaces) do
			if objs.port.surface == surface then
				remove_energy_interface(objs.port)
			end
		end
	end
)