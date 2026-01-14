scoreboard objectives add transferpetowner.image dummy

scoreboard objectives add riding_cast_transfer_pet_owner dummy

scoreboard objectives add check.transferpetowner dummy

scoreboard objectives add transferpetowner.config trigger

execute unless score &config check.transferpetowner = &config check.transferpetowner run data modify storage transferpetowner:root transfer_owner_players set value []

execute unless score &config check.transferpetowner = &config check.transferpetowner run scoreboard players set &config check.transferpetowner 0

data modify storage transferpetowner:root dialog_player set value "$(dialog_player)"

tag @a remove transfer_owner

scoreboard players set @a transferpetowner.config 0

function transferpetowner:config/image