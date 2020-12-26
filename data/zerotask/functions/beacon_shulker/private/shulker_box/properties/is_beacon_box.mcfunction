#######################################################################
# Author:  SirWindfield (https://github.com/SirWindfield)             #
# License: GNU GPLv3                                                  #
#                                                                     #
# If applicable, credit to other people's work is given in the readme #
#######################################################################

scoreboard players set #is_beacon_shulker_box zt.bs.var 0
execute if data block ~ ~ ~ Items[{Slot: 13b, id: "minecraft:beacon"}].tag.Blocks run scoreboard players set #is_beacon_shulker_box zt.bs.var 1
