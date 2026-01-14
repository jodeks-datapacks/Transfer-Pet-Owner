# Copy current pixel
data modify storage transferpetowner:image current.pixel_color set \
  from storage transferpetowner:image current.image_data[0]
data modify storage transferpetowner:image current.description_text set \
  from storage transferpetowner:image current.description[0]

scoreboard players add $index.image_data transferpetowner.image 1

# Calculate column
scoreboard players operation $index.column transferpetowner.image = $index.image_data transferpetowner.image
scoreboard players operation $index.column transferpetowner.image %= $width transferpetowner.image

# Calculate row
scoreboard players operation $index.row transferpetowner.image = $index.image_data transferpetowner.image
scoreboard players operation $index.row transferpetowner.image /= $width transferpetowner.image

# Append start spacing
execute if score $index.column transferpetowner.image matches 1 run \
  function transferpetowner:image/process/append/blank

# Append colored pixel
execute unless data storage transferpetowner:image current{pixel_color: ''} run \
  function transferpetowner:image/process/append/pixel
# Append background pixel
execute if data storage transferpetowner:image current{pixel_color: ''} run \
  function transferpetowner:image/process/append/background

# Append description
execute if score $index.column transferpetowner.image matches 0 run \
    function transferpetowner:image/process/image_end/description

# Remove first element from the image_data array
data remove storage transferpetowner:image current.image_data[0]
# Loop over rows
execute if score $index.row transferpetowner.image < $height transferpetowner.image run \
  function transferpetowner:image/process/loop_over_image_data
 