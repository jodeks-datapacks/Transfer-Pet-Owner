$data modify storage transfer_pet_owner:root data.transfer_owner_players append value $(dialog_player)

data modify storage transfer_pet_owner:root data.dialog_player set value "$(dialog_player)"

$tag $(dialog_player) add can_transfer_owner_always

dialog clear @s

execute as @s run function transfer_pet_owner:config/dialog_config with storage transfer_pet_owner:root data