execute as @a[tag=transfer_owner] run data modify storage transfer_pet_owner:root data.Owner_UUID set from entity @s UUID

execute store success score @a[tag=transfer_owner] check.transfer_pet_owner run data modify storage transfer_pet_owner:root data.Owner_UUID set from entity @s Owner

execute if entity @a[tag=can_transfer_owner_always,tag=transfer_owner] run scoreboard players set @a[tag=transfer_owner] check.transfer_pet_owner 0

execute as @a[tag=transfer_owner,limit=1] if score @s check.transfer_pet_owner matches 0 run function transfer_pet_owner:app/transfer/get_player_from_book

execute as @s if score @a[tag=transfer_owner,limit=1] check.transfer_pet_owner matches 0 run function transfer_pet_owner:app/transfer/modify_owner

tag @a remove transfer_owner