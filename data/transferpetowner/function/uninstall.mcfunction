
scoreboard objectives remove transferpetowner.image

scoreboard objectives remove riding_cast_transfer_pet_owner

scoreboard objectives remove check.transferpetowner

advancement revoke @a only jodek:mobs
advancement revoke @a only jodek:root
advancement revoke @a only jodek:transferpetowner

data remove storage transferpetowner:root Book_UUID
data remove storage transferpetowner:root Book_Player
data remove storage transferpetowner:root Owner_UUID
