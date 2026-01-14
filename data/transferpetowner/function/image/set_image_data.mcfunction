#> transferpetowner:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage transferpetowner:image image_data  
# @writes storage transferpetowner:image width  
# @writes storage transferpetowner:image height  
# @writes storage transferpetowner:image background_color  
# @writes storage transferpetowner:image description  
# @writes storage transferpetowner:image pixel_character.blank  
# @writes storage transferpetowner:image pixel_character.chat  
# @writes storage transferpetowner:image pixel_character.lore

data remove storage transferpetowner:image image_data
data remove storage transferpetowner:image width
data remove storage transferpetowner:image height
data remove storage transferpetowner:image background_color
data remove storage transferpetowner:image description

$data modify storage transferpetowner:image image_data set value $(image_data)
$data modify storage transferpetowner:image width set value $(width)
$data modify storage transferpetowner:image height set value $(height)
$data modify storage transferpetowner:image background_color set value "$(background_color)"
$data modify storage transferpetowner:image description set value $(description)

data modify storage transferpetowner:image pixel_character.blank set value "　"
data modify storage transferpetowner:image pixel_character.pixel set value "▌▌"
data modify storage transferpetowner:image pixel_character.line_break set value '\n'

function transferpetowner:image/process/generate
