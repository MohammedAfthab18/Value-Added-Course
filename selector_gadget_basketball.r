install.packages("selectorgadget")

# load the package
library(selectorgadget)

# Use selectorgadget to extract the data from a website
basketball_players <- extract_html("https://www.nba.com/players")

# Select the top 10 players
top_10_players <- head(basketball_players$text, 10)

# Print the result
top_10_players
