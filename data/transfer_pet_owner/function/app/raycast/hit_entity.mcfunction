scoreboard players set &hit riding_cast_transfer_pet_owner 1

execute unless score @a[tag=transfer_owner,limit=1] check.transfer_pet_owner matches 0 run function transfer_pet_owner:app/transfer/check_uuid

scoreboard players set &check riding_cast_transfer_pet_owner 1