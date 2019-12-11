local recipe =
{
  type = "recipe",
  name = "area-defense-robot",
  enabled = false,
  energy_required = 1,
  ingredients =
  {
    {"distractor-capsule", 2},
    {"battery", 6},
    {"processing-unit", 3}
  },
  result = "area-defense-robot"
}

if mods["bobwarfare"] then
  recipe.ingredients =
  {
    {"distractor-robot", 6},
    {"battery", 6},
    {"processing-unit", 3}
  }
end

data:extend({recipe})