#######################################################################
# Author:  SirWindfield (https://github.com/SirWindfield)             #
# License: GNU GPLv3                                                  #
#                                                                     #
# If applicable, credit to other people's work is given in the readme #
#######################################################################

data modify storage zerotask:beacon_shulker Blocks set from block ~ ~ ~ Items[{Slot: 13b}].tag.Blocks
data modify storage zerotask:beacon_shulker Layers set from block ~ ~ ~ Items[{Slot: 13b}].tag.Layers

function zerotask:beacon_shulker/private/deserialize/beacon_block
function zerotask:beacon_shulker/private/deserialize/layers/1
execute if data storage zerotask:beacon_shulker Blocks[0] run function zerotask:beacon_shulker/private/deserialize/layers/2
execute if data storage zerotask:beacon_shulker Blocks[0] run function zerotask:beacon_shulker/private/deserialize/layers/3
execute if data storage zerotask:beacon_shulker Blocks[0] run function zerotask:beacon_shulker/private/deserialize/layers/4
function zerotask:beacon_shulker/private/deserialize/cleanup
