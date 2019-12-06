require ("bonus-gui-ordering")

data:extend(
{
  {
    type = "ammo-category",
    name = "combat-robot"
  }
})

for k,v in pairs(data.raw["ammo-category"]) do
  if not v.bonus_gui_order then
    v.bonus_gui_order = bonus_gui_ordering[k]
  end
end
