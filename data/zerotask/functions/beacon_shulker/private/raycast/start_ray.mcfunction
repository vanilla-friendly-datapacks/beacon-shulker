#######################################################################
# Author:  SirWindfield (https://github.com/SirWindfield)             #
# License: GNU GPLv3                                                  #
#                                                                     #
# If applicable, credit to other people's work is given in the readme #
#######################################################################

tag @s add zerotask.beacon_shulker.raycasting
scoreboard players set #hit zt.bs.raycast 0
scoreboard players set #distance zt.bs.raycast 0
function zerotask:beacon_shulker/private/raycast/ray
tag @s remove zerotask.beacon_shulker.raycasting
