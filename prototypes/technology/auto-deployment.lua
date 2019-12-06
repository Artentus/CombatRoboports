data:extend(
{
  {
    type = "technology",
    name = "auto-deployment",
    localised_name = {"technology-name.auto-deployment"},
    localised_description = {"technology-description.auto-deployment"},
    icon_size = 128,
    icon = "__combat-roboports__/graphics/technology/auto-deployment.png",
	prerequisites = {"combat-robotics-2", "concrete", "robotics", "advanced-electronics-2"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "combat-roboport"
      },
	  {
        type = "unlock-recipe",
        recipe = "area-defense-robot"
      }
    },
    unit =
    {
      count = 200,
      ingredients =
	  {
	    {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
		{"utility-science-pack", 1}
	  },
      time = 30
    },
    order = "e-p-c"
  }
})