#######################################################################
# Author:  SirWindfield (https://github.com/SirWindfield)             #
# License: GNU GPLv3                                                  #
#                                                                     #
# If applicable, credit to other people's work is given in the readme #
#######################################################################

data merge block ~ ~ ~ {CustomName: ""}
data remove block ~ ~ ~ Blocks
data remove block ~ ~ ~ Layers
data remove block ~ ~ ~ Lock
data remove block ~ ~ ~ Items

# Mine the shulker box.
setblock ~ ~ ~ minecraft:air destroy
