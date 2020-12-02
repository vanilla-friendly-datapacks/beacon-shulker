#######################################################################
# Author:  SirWindfield (https://github.com/SirWindfield)             #
# License: GNU GPLv3                                                  #
#                                                                     #
# If applicable, credit to other people's work is given in the readme #
#######################################################################

# Store the current block into storage.
execute unless block ~ ~ ~ #zerotask:beacon_shulker/beacon_materials run scoreboard players set #is_non_beacon_material zt.bs.var 1

scoreboard players remove $zt.z zt.bs.var 1
execute if score $zt.z zt.bs.var matches 1.. positioned ~ ~ ~1 run function zerotask:beacon_shulker/private/serialize/check/loop/z
