#> transfer_pet_owner:image/process/generate
#
# This function generates the image data.

data modify storage transfer_pet_owner:image data.current.image_data set from storage transfer_pet_owner:image data.image_data
data modify storage transfer_pet_owner:image data.current.description set from storage transfer_pet_owner:image data.description
data modify storage transfer_pet_owner:image data.current.pixel_character set from storage transfer_pet_owner:image data.pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data transfer_pet_owner.image 0
# Set width
execute store result score $width transfer_pet_owner.image run data get storage transfer_pet_owner:image data.width
# Set height
execute store result score $height transfer_pet_owner.image run data get storage transfer_pet_owner:image data.height
# Set length
scoreboard players operation $length transfer_pet_owner.image = $width transfer_pet_owner.image
scoreboard players operation $length transfer_pet_owner.image *= $height transfer_pet_owner.image
# Clear remaining entries in tellraw
data remove storage transfer_pet_owner:image data.tellraw

# Add spacing on top
function transfer_pet_owner:image/process/append/line_break
# Loop over image data
function transfer_pet_owner:image/process/loop_over_image_data
# Add spacing on bottom
function transfer_pet_owner:image/process/append/line_break