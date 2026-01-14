$data modify storage transferpetowner:root transfer_owner_players append value $(dialog_player)

data modify storage transferpetowner:root dialog_player set value "$(dialog_player)"

$tag $(dialog_player) add can_transfer_owner_always

dialog clear @s

execute as @s run function transferpetowner:config/dialog_config with storage transferpetowner:root