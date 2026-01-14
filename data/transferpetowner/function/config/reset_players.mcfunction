data modify storage transferpetowner:root transfer_owner_players set value []

tag @a remove can_transfer_owner_always

dialog clear @s

execute as @s run function transferpetowner:config/dialog_config with storage transferpetowner:root