require ("prototypes.technology.auto-deployment")

if not mods["boblogistics"] then
  data.raw.technology["robotics"].effects =
  {
    {
      type = "unlock-recipe",
      recipe = "flying-robot-frame"
    },
    {
      type = "unlock-recipe",
      recipe = "roboport"
    }
  }
  
  data.raw.technology["construction-robotics"].effects =
  {
    {
      type = "unlock-recipe",
      recipe = "logistic-chest-passive-provider"
    },
    {
      type = "unlock-recipe",
      recipe = "logistic-chest-storage"
    },
    {
      type = "unlock-recipe",
      recipe = "construction-robot"
    },
    {
      type = "ghost-time-to-live",
      modifier = 60 * 60 * 60 * 24 * 7
    }
  }

  data.raw.technology["logistic-robotics"].effects =
  {
    {
        type = "unlock-recipe",
        recipe = "logistic-chest-passive-provider"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-storage"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-robot"
      },
      {
        type = "character-logistic-requests",
        modifier = true
      },
      {
        type = "auto-character-logistic-trash-slots",
        modifier = true
      },
      {
        type = "character-logistic-trash-slots",
        modifier = 30
      }
  }
end


