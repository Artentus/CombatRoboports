local recipe =
{
  type = "recipe",
  name = "combat-roboport",
  enabled = false,
  energy_required = 5,
  ingredients =
  {
    {"roboport", 1},
    {"radar", 1},
	{"processing-unit", 15},
    {"concrete", 45}
  },
  result = "combat-roboport"
}

if mods["boblogistics"] then
  if settings.startup["bobmods-logistics-disableroboports"].value == true then
    if settings.startup["bobmods-logistics-roboportrecipeupdate"].value == true then
      recipe.ingredients =
      {
        {"steel-plate", 15},
        {"roboport-antenna-1", 5},
        {"roboport-chargepad-1", 4},
        {"roboport-door-1", 1},
        {"radar", 1},
	    {"processing-unit", 15},
        {"concrete", 45}
      }
	else
	  recipe.ingredients =
      {
        {"steel-plate", 45},
        {"iron-gear-wheel", 45},
        {"advanced-circuit", 45},
        {"radar", 1},
	    {"processing-unit", 15},
        {"concrete", 45}
      }
	end
  end
end

data:extend({recipe})

