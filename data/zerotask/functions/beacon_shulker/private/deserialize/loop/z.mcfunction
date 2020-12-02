#######################################################################
# Author:  SirWindfield (https://github.com/SirWindfield)             #
# License: GNU GPLv3                                                  #
#                                                                     #
# If applicable, credit to other people's work is given in the readme #
#######################################################################

# Restore the beacon.
execute store result score block bsc run data get storage zerotask:beacon_shulker Blocks[0]
data remove storage zerotask:beacon_shulker Blocks[0]
execute unless block ~ ~ ~ minecraft:bedrock run function bsc:setblock

scoreboard players remove $zt.z zt.bs.var 1
execute if score $zt.z zt.bs.var matches 1.. positioned ~ ~ ~1 run function zerotask:beacon_shulker/private/deserialize/loop/z
