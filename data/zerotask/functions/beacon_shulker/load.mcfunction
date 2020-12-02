#######################################################################
# Author:  SirWindfield (https://github.com/SirWindfield)             #
# License: GNU GPLv3                                                  #
#                                                                     #
# If applicable, credit to other people's work is given in the readme #
#######################################################################

# Used for block (de-)serialization.
scoreboard objectives add bsc dummy

#region Datapack internal scoreboards used for calculation.
# Raycasting steps.
scoreboard objectives add zt.bs.raycast dummy

# Maximum used to reset the loops when iterating through regions.
scoreboard objectives add zt.bs.x dummy
scoreboard objectives add zt.bs.z dummy

# Scoreboard used for various tasks (calculation, index etc.).
scoreboard objectives add zt.bs.var dummy
#endregion
