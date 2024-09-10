scoreboard players set @a transfer_pet_owner 0

execute as @s run data modify storage transferpetowner:root Owner_UUID set from entity @s UUID

execute as @s run data modify storage transferpetowner:root Book_Player set from entity @s SelectedItem.components.minecraft:writable_book_content.pages[0].raw

function transferpetowner:get_book_player_uuid with storage transferpetowner:root

execute as @s at @s run execute store success score &UUID_check check.transferpetowner run data modify storage transferpetowner:root Owner_UUID set from entity @e[sort=nearest,limit=1] Owner

execute as @s at @s if score &UUID_check check.transferpetowner matches 0 run function transferpetowner:transfer_owner with storage transferpetowner:root

scoreboard players set &UUID_check check.transferpetowner 1
