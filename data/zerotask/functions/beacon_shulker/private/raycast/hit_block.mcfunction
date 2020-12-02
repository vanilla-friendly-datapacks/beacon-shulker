#######################################################################
# Author:  SirWindfield (https://github.com/SirWindfield)             #
# License: GNU GPLv3                                                  #
#                                                                     #
# If applicable, credit to other people's work is given in the readme #
#######################################################################

scoreboard players set #hit zt.bs.raycast 1
function zerotask:beacon_shulker/private/shulker_box/properties/is_empty
function zerotask:beacon_shulker/private/shulker_box/properties/is_beacon_box
execute if score #is_empty_shulker_box zt.bs.var matches 1 if block ~ ~-1 ~ minecraft:beacon run function zerotask:beacon_shulker/private/serialize/serialize
execute if score #is_beacon_shulker_box zt.bs.var matches 1 run function zerotask:beacon_shulker/private/deserialize/deserialize
