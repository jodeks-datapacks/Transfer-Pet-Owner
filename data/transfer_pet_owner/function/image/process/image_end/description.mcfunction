# Append blank
function transfer_pet_owner:image/process/append/blank

data modify storage transfer_pet_owner:image data.tellraw append \
  from storage transfer_pet_owner:image data.current.description_text

# Append blank
function transfer_pet_owner:image/process/append/blank

# Append line_break
execute unless score $index.image_data transfer_pet_owner.image = $length transfer_pet_owner.image \
  run function transfer_pet_owner:image/process/append/line_break

# Remove first element from the description
data remove storage transfer_pet_owner:image data.current.description[0]
 