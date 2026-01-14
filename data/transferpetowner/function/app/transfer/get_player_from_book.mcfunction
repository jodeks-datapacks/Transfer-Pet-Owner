execute as @a[tag=transfer_owner] run data modify storage transferpetowner:root Book_Player set from entity @s SelectedItem.components.minecraft:writable_book_content.pages[0].raw

function transferpetowner:app/transfer/get_player_uuid with storage transferpetowner:root