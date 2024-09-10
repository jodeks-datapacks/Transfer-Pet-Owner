
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=wolf] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[sort=nearest,limit=1,type=wolf] add transfer_owner
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=camel] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[sort=nearest,limit=1,type=camel] add transfer_owner
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=cat] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[sort=nearest,limit=1,type=cat] add transfer_owner
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=donkey] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[sort=nearest,limit=1,type=donkey] add transfer_owner
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=horse] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[sort=nearest,limit=1,type=horse] add transfer_owner
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=llama] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[sort=nearest,limit=1,type=llama] add transfer_owner
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=mule] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[sort=nearest,limit=1,type=mule] add transfer_owner
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=parrot] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[sort=nearest,limit=1,type=parrot] add transfer_owner
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=skeleton_horse] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[sort=nearest,limit=1,type=skeleton_horse] add transfer_owner


data modify entity @e[tag=transfer_owner,limit=1] Owner set from storage transferpetowner:root Book_UUID

schedule function transferpetowner:remove_tag 5s

