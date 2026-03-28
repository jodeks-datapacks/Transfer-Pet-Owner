data modify storage transfer_pet_owner:root data.transfer_owner_players set value []

tag @a remove can_transfer_owner_always

dialog clear @s

execute as @s run function transfer_pet_owner:config/dialog_config with storage transfer_pet_owner:root data