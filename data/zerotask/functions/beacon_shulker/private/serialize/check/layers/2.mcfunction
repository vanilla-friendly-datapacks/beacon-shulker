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
scoreboard players set #is_non_beacon_material zt.bs.var 0

# Start loop.
execute positioned ~-2 ~-3 ~-2 run function zerotask:beacon_shulker/private/serialize/check/loop/x

# Check if the layer is valid to be serialized.
execute if score #is_non_beacon_material zt.bs.var matches 0 run function zerotask:beacon_shulker/private/serialize/layers/2
