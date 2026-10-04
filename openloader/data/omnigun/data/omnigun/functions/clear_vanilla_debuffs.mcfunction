# Runs every tick. Removes harmful vanilla potion effects from players tagged omni_immune.
# Enable:  /tag @p add omni_immune
# Disable: /tag @p remove omni_immune
effect clear @a[tag=omni_immune] minecraft:slowness
effect clear @a[tag=omni_immune] minecraft:mining_fatigue
effect clear @a[tag=omni_immune] minecraft:nausea
effect clear @a[tag=omni_immune] minecraft:blindness
effect clear @a[tag=omni_immune] minecraft:hunger
effect clear @a[tag=omni_immune] minecraft:weakness
effect clear @a[tag=omni_immune] minecraft:poison
effect clear @a[tag=omni_immune] minecraft:wither
effect clear @a[tag=omni_immune] minecraft:levitation
effect clear @a[tag=omni_immune] minecraft:unluck
