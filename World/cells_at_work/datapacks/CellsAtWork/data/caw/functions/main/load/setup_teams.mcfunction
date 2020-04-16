team add red_cells "Red Cells"
team modify red_cells color red
team modify red_cells prefix "[Red Cell] "
team modify red_cells nametagVisibility hideForOtherTeams
team modify red_cells seeFriendlyInvisibles true

team add white_cells "White Cells"
team modify white_cells color white
team modify white_cells prefix "[White Cell] "
team modify white_cells nametagVisibility hideForOtherTeams
team modify white_cells seeFriendlyInvisibles true
team modify white_cells friendlyFire false

team add pathogens "Pathogens"
team modify pathogens color dark_purple
team modify pathogens prefix "[Pathogen] "
team modify pathogens nametagVisibility hideForOtherTeams
team modify pathogens seeFriendlyInvisibles true
team modify pathogens friendlyFire false

team add specators "Spectators"
team modify specators color dark_gray
team modify specators prefix "[Spectator] "
team modify specators nametagVisibility never