#######################################################################
# Author:  SirWindfield (https://github.com/SirWindfield)             #
# License: GNU GPLv3                                                  #
#                                                                     #
# If applicable, credit to other people's work is given in the readme #
#######################################################################

# Create an item that holds the block ids that are needed to reconstruct the beacon.
data remove storage zerotask:beacon_shulker Item
data modify storage zerotask:beacon_shulker Item.id set value "minecraft:beacon"
data modify storage zerotask:beacon_shulker Item.Slot set value 13b
data modify storage zerotask:beacon_shulker Item.tag.Blocks set from storage zerotask:beacon_shulker Blocks
data modify storage zerotask:beacon_shulker Item.tag.display.Name set value '{"text":"Layers"}'

# Use the item count to indicate how many layers the beacon had.
execute if data storage zerotask:beacon_shulker Layers.One run data modify storage zerotask:beacon_shulker Item.Count set value 1b
execute if data storage zerotask:beacon_shulker Layers.Two run data modify storage zerotask:beacon_shulker Item.Count set value 2b
execute if data storage zerotask:beacon_shulker Layers.Three run data modify storage zerotask:beacon_shulker Item.Count set value 3b
execute if data storage zerotask:beacon_shulker Layers.Four run data modify storage zerotask:beacon_shulker Item.Count set value 4b

# Safety: The shulker should be empty at this point.
data modify block ~ ~ ~ Items set value []
data modify block ~ ~ ~ Items append from storage zerotask:beacon_shulker Item
