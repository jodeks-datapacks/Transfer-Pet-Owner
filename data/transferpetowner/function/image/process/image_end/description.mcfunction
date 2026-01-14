# Append blank
function transferpetowner:image/process/append/blank

data modify storage transferpetowner:image tellraw append \
  from storage transferpetowner:image current.description_text

# Append blank
function transferpetowner:image/process/append/blank

# Append line_break
execute unless score $index.image_data transferpetowner.image = $length transferpetowner.image \
  run function transferpetowner:image/process/append/line_break

# Remove first element from the description
data remove storage transferpetowner:image current.description[0]
 