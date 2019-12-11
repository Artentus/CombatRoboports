data:extend(
{
  {
    type = "ammo",
    name = "area-defense-robot",
    icon = "__combat-roboports__/graphics/icons/area-defense-robot.png",
    icon_size = 32,
    ammo_type =
    {
      category = "combat-robot",
      target_type = "entity",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "area-defense-capsule",
          starting_speed = 0.1
        }
      }
    },
    magazine_size = 6,
    subgroup = "ammo",
    order = "f[combat-robot]-a[area-defense]",
    stack_size = 50
  }
})