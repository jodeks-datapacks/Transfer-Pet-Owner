execute if score &hit riding_cast_transfer_pet_owner matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=#transferpetowner:tameable,tag=!riding_ray,dx=0,sort=nearest] run function transferpetowner:app/raycast/check_hit_entity
execute unless block ~ ~ ~ minecraft:air run function transferpetowner:app/raycast/hit_block
scoreboard players add &distance riding_cast_transfer_pet_owner 1
execute if score &hit riding_cast_transfer_pet_owner matches 0 if score &distance riding_cast_transfer_pet_owner matches ..100 positioned ^ ^ ^0.1 run function transferpetowner:app/raycast/ray
