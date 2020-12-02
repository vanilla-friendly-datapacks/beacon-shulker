#######################################################################
# Author:  SirWindfield (https://github.com/SirWindfield)             #
# License: GNU GPLv3                                                  #
#                                                                     #
# If applicable, credit to other people's work is given in the readme #
#######################################################################

# 5x5 area.
scoreboard players set $zt zt.x 5
scoreboard players set $zt zt.z 5
scoreboard players operation $zt.x zt.bs.var = $zt zt.x

# Start loop.
execute positioned ~-2 ~-3 ~-2 run function zerotask:beacon_shulker/private/serialize/loop/x

# Store boolean flag.
data modify storage zerotask:beacon_shulker Layers merge value {Two: true}
