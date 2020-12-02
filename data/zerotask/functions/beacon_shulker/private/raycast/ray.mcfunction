#######################################################################
# Author:  SirWindfield (https://github.com/SirWindfield)             #
# License: GNU GPLv3                                                  #
#                                                                     #
# If applicable, credit to other people's work is given in the readme #
#######################################################################

execute if block ~ ~ ~ #zerotask:beacon_shulker/shulkers run function zerotask:beacon_shulker/private/raycast/hit_block
scoreboard players add #distance zt.bs.raycast 1
execute if score #hit zt.bs.raycast matches 0 if score #distance zt.bs.raycast matches ..70 positioned ^ ^ ^0.1 run function zerotask:beacon_shulker/private/raycast/ray
