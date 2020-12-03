#######################################################################
# Author:  SirWindfield (https://github.com/SirWindfield)             #
# License: GNU GPLv3                                                  #
#                                                                     #
# If applicable, credit to other people's work is given in the readme #
#######################################################################

scoreboard players operation $zt.z zt.bs.var = $zt.bs.loop.z zt.bs.var
function zerotask:beacon_shulker/private/deserialize/loop/z
scoreboard players remove $zt.x zt.bs.var 1
execute if score $zt.x zt.bs.var matches 1.. positioned ~1 ~ ~ run function zerotask:beacon_shulker/private/deserialize/loop/x
