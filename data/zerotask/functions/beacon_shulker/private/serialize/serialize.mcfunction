#######################################################################
# Author:  SirWindfield (https://github.com/SirWindfield)             #
# License: GNU GPLv3                                                  #
#                                                                     #
# If applicable, credit to other people's work is given in the readme #
#######################################################################

data remove storage zerotask:beacon_shulker Blocks
data modify storage zerotask:beacon_shulker Layers set value {}

function zerotask:beacon_shulker/private/serialize/beacon_block
function zerotask:beacon_shulker/private/serialize/check/layers/1
execute unless score #is_non_beacon_material zt.bs.var matches 1 run function zerotask:beacon_shulker/private/serialize/check/layers/2
execute unless score #is_non_beacon_material zt.bs.var matches 1 run function zerotask:beacon_shulker/private/serialize/check/layers/3
execute unless score #is_non_beacon_material zt.bs.var matches 1 run function zerotask:beacon_shulker/private/serialize/check/layers/4

# Store collected block ids into an item stack that we put into the shulker box.
function zerotask:beacon_shulker/private/shulker_box/create_and_store_item
function zerotask:beacon_shulker/private/shulker_box/lock
function zerotask:beacon_shulker/private/shulker_box/set_name
