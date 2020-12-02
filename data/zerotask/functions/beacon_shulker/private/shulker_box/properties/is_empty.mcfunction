#######################################################################
# Author:  SirWindfield (https://github.com/SirWindfield)             #
# License: GNU GPLv3                                                  #
#                                                                     #
# If applicable, credit to other people's work is given in the readme #
#######################################################################

scoreboard players set #is_empty_shulker_box zt.bs.var 0
execute unless data block ~ ~ ~ Items[] run scoreboard players set #is_empty_shulker_box zt.bs.var 1
