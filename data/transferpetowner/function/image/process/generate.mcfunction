#> transferpetowner:image/process/generate
#
# This function generates the image data.

data modify storage transferpetowner:image current.image_data set from storage transferpetowner:image image_data
data modify storage transferpetowner:image current.description set from storage transferpetowner:image description
data modify storage transferpetowner:image current.pixel_character set from storage transferpetowner:image pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data transferpetowner.image 0
# Set width
execute store result score $width transferpetowner.image run data get storage transferpetowner:image width
# Set height
execute store result score $height transferpetowner.image run data get storage transferpetowner:image height
# Set length
scoreboard players operation $length transferpetowner.image = $width transferpetowner.image
scoreboard players operation $length transferpetowner.image *= $height transferpetowner.image
# Clear remaining entries in tellraw
data remove storage transferpetowner:image tellraw

# Add spacing on top
function transferpetowner:image/process/append/line_break
# Loop over image data
function transferpetowner:image/process/loop_over_image_data
# Add spacing on bottom
function transferpetowner:image/process/append/line_break