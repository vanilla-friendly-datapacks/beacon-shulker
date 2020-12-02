#######################################################################
# Author:  SirWindfield (https://github.com/SirWindfield)             #
# License: GNU GPLv3                                                  #
#                                                                     #
# If applicable, credit to other people's work is given in the readme #
#######################################################################

# Store the current block into storage.
function bsc:read
execute store result storage zerotask:beacon_shulker BlockId short 1 run scoreboard players get block bsc
data modify storage zerotask:beacon_shulker Blocks append from storage zerotask:beacon_shulker BlockId
setblock ~ ~ ~ minecraft:air replace

scoreboard players remove $zt.z zt.bs.var 1
execute if score $zt.z zt.bs.var matches 1.. positioned ~ ~ ~1 run function zerotask:beacon_shulker/private/serialize/loop/z
