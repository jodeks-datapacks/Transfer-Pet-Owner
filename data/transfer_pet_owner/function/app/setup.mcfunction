scoreboard objectives add jodek.config dummy
execute unless score &transfer_pet_owner_load_message jodek.config = &transfer_pet_owner_load_message jodek.config run scoreboard players set &transfer_pet_owner_load_message jodek.config 1
execute unless score &transfer_pet_owner_advancements jodek.config = &transfer_pet_owner_advancements jodek.config run scoreboard players set &transfer_pet_owner_advancements jodek.config 1

scoreboard objectives add transfer_pet_owner.image dummy

scoreboard objectives add riding_cast_transfer_pet_owner dummy

scoreboard objectives add check.transfer_pet_owner dummy

scoreboard objectives add transfer_pet_owner.config trigger
scoreboard players set @a transfer_pet_owner.config 0

tag @a remove transfer_owner

function transfer_pet_owner:config/set_default

function transfer_pet_owner:config/image