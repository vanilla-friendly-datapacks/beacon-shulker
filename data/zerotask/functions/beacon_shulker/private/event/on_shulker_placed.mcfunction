#######################################################################
# Author:  SirWindfield (https://github.com/SirWindfield)             #
# License: GNU GPLv3                                                  #
#                                                                     #
# If applicable, credit to other people's work is given in the readme #
#######################################################################

#> zerotask:beacon_shulker/private/event/on_shulker_placed
#
# Revokes the advancement.
# If the player puts the item down on a beacon, a raycast is started to find the location of the placed shulker box.
# If the player puts the item down on any other block, the deserialization is started.
#
# @within advancements/beacon_shulker/placed_beacon
advancement revoke @s only zerotask:beacon_shulker/placed_beacon

scoreboard players set #is_empty_shulker_box zt.bs.var 0
scoreboard players set #is_beacon_shulker_box zt.bs.var 0

execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function zerotask:beacon_shulker/private/raycast/start_ray
