execute as @a[tag=transfer_owner] run data modify storage transfer_pet_owner:root data.Book_Player set from entity @s SelectedItem.components.minecraft:writable_book_content.pages[0].raw

function transfer_pet_owner:app/transfer/get_player_uuid with storage transfer_pet_owner:root data