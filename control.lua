global.energy_interfaces = {}

script.on_init(
	function()
		global.energy_interfaces = global.energy_interfaces or {}
	end
)


-- Update roboport energy interfaces
function check_electricity(e)
	local loc_energy_interfaces = global.energy_interfaces
	for roboport_id,objs in pairs(loc_energy_interfaces) do
		objs.port.active = objs.eei.energy > 0
	end
end

script.on_nth_tick(15, check_electricity)


-- Roboport creation
function add_energy_interface(roboport)
	local interface = roboport.surface.create_entity(
	{
		name = "combat-roboport-energy-interface",
		position = roboport.position,
		player = roboport.last_user,
		force = roboport.force,
		create_build_effect_smoke = false,
		raise_built = true
	})
	interface.destructible = false
	roboport.active = false
	global.energy_interfaces[roboport.unit_number] = { port = roboport, eei = interface }
end

function process_created_entity(entity)
	if entity and entity.valid and entity.name == "combat-roboport" then
		add_energy_interface(entity)
	end
end

script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity, defines.events.on_entity_cloned},
	function (e)
		process_created_entity(e.created_entity or e.destination)
	end
)


-- Roboport removal
function remove_energy_interface(roboport)
	local objs = global.energy_interfaces[roboport.unit_number]
	if objs then
		if objs.eei and objs.eei.valid then
			objs.eei.destroy({raise_destroy = true})
		end
		global.energy_interfaces[roboport.unit_number] = nil
	end
end

function process_removed_entity(entity)
	if entity and entity.valid and entity.name == "combat-roboport" then
		remove_energy_interface(entity)
	end
end

script.on_event({defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity, defines.events.on_entity_died},
	function (e)
		process_removed_entity(e.entity)
	end
)

-- not needed in vanilla but for other mods
script.on_event(defines.events.on_pre_surface_deleted,
	function (e)
		local surface = game.surfaces[e.surface_index]
		local loc_energy_interfaces = global.energy_interfaces
		for roboport_id,objs in pairs(loc_energy_interfaces) do
			if objs.port.surface == surface then
				remove_energy_interface(objs.port)
			end
		end
	end
)