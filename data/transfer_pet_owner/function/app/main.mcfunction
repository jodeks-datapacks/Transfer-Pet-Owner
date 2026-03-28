execute as @a[predicate=!transfer_pet_owner:is_sneaking] run scoreboard players set @s check.transfer_pet_owner 1
execute as @a[predicate=!transfer_pet_owner:is_sneaking] run scoreboard players set &start riding_cast_transfer_pet_owner 0

execute if score &start riding_cast_transfer_pet_owner matches 0 as @a[predicate=transfer_pet_owner:is_sneaking] \
 if entity @s[nbt={SelectedItem:{id:"minecraft:writable_book"}}] as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function transfer_pet_owner:app/raycast/start_ray

scoreboard players enable @a transfer_pet_owner.config
execute as @a if score @s transfer_pet_owner.config matches 1 run \
 function transfer_pet_owner:config/dialog_config with storage transfer_pet_owner:root data