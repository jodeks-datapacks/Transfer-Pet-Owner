scoreboard players set &hit riding_cast_transfer_pet_owner 0
scoreboard players set &distance riding_cast_transfer_pet_owner 0

tag @s add transfer_owner

tag @s add riding_ray
function transferpetowner:app/raycast/ray
tag @s remove riding_ray

scoreboard players set &start riding_cast_transfer_pet_owner 1