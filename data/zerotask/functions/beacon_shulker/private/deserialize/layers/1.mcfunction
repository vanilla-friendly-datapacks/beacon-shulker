#######################################################################
# Author:  SirWindfield (https://github.com/SirWindfield)             #
# License: GNU GPLv3                                                  #
#                                                                     #
# If applicable, credit to other people's work is given in the readme #
#######################################################################

# 3x3 area.
scoreboard players set $zt.bs.loop.x zt.bs.var 3
scoreboard players set $zt.bs.loop.z zt.bs.var 3
scoreboard players operation $zt.x zt.bs.var = $zt.bs.loop.x zt.bs.var

# Start loop.
execute positioned ~-1 ~-2 ~-1 run function zerotask:beacon_shulker/private/deserialize/loop/x
