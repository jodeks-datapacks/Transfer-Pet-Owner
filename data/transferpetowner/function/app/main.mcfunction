execute as @a[predicate=!transferpetowner:is_sneaking] run scoreboard players set @s check.transferpetowner 1
execute as @a[predicate=!transferpetowner:is_sneaking] run scoreboard players set &start riding_cast_transfer_pet_owner 0

execute if score &start riding_cast_transfer_pet_owner matches 0 as @a[predicate=transferpetowner:is_sneaking] \
 if entity @s[nbt={SelectedItem:{id:"minecraft:writable_book"}}] as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function transferpetowner:app/raycast/start_ray

scoreboard players enable @a transferpetowner.config
execute as @a if score @s transferpetowner.config matches 1 run \
 function transferpetowner:config/dialog_config with storage transferpetowner:root