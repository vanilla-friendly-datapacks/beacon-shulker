#######################################################################
# Author:  SirWindfield (https://github.com/SirWindfield)             #
# License: GNU GPLv3                                                  #
#                                                                     #
# If applicable, credit to other people's work is given in the readme #
#######################################################################

# 9x9 area.
scoreboard players set $zt zt.x 9
scoreboard players set $zt zt.z 9
scoreboard players operation $zt.x zt.bs.var = $zt zt.x

# Start loop.
execute positioned ~-4 ~-5 ~-4 run function zerotask:beacon_shulker/private/serialize/loop/x

# Store boolean flag.
data modify storage zerotask:beacon_shulker Layers merge value {Four: true}
