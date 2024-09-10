scoreboard players enable @a help.transferpetowner

execute as @a if score @s help.transferpetowner matches 1 run function transferpetowner:trigger_help


scoreboard players enable @a transfer_pet_owner

execute as @a if score @s transfer_pet_owner matches 1 run function transferpetowner:check_uuid